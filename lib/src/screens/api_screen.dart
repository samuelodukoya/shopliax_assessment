// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Photo {
  final int id;
  final String title;
  final String thumbnailUrl;

  Photo({required this.id, required this.title, required this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'thumbnailUrl': thumbnailUrl,
      };
}

class PhotoListScreen extends StatefulWidget {
  const PhotoListScreen({super.key});

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  List<Photo> _photos = [];
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchPhotos();
  }

  Future<void> _fetchPhotos() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _photos = data.map((item) => Photo.fromJson(item)).toList();
          _isLoading = false;
        });

        // Store first 20 items locally
        await _storePhotosLocally(_photos.take(20).toList());
      } else {
        throw Exception('Failed to load photos');
      }
    } catch (e) {
      setState(() {
        _error = 'Error fetching photos: $e';
        _isLoading = false;
      });

      // Try to load data from local storage
      await _loadPhotosFromLocalStorage();
    }
  }

  Future<void> _storePhotosLocally(List<Photo> photos) async {
    final prefs = await SharedPreferences.getInstance();
    final photosJson = json.encode(photos.map((p) => p.toJson()).toList());
    await prefs.setString('cached_photos', photosJson);
  }

  Future<void> _loadPhotosFromLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final photosJson = prefs.getString('cached_photos');

    if (photosJson != null) {
      final List<dynamic> decodedPhotos = json.decode(photosJson);
      setState(() {
        _photos = decodedPhotos.map((item) => Photo.fromJson(item)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo List'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(child: Text(_error!));
    }

    if (_photos.isEmpty) {
      return const Center(child: Text('No photos available'));
    }

    return ListView.builder(
      itemCount: _photos.length,
      itemBuilder: (context, index) {
        final photo = _photos[index];
        return ListTile(
          leading: Image.network(
            photo.thumbnailUrl,
            width: 50,
            height: 50,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          ),
          title: Text(photo.title),
        );
      },
    );
  }
}
