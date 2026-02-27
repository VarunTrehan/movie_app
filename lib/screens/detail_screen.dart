import 'package:flutter/material.dart';
import '../assets/movie_model.dart';
import 'package:movie_app/screens/seat_screen.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row: Image + Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Movie Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    movie.image,
                    height: 280,
                    width: 220,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),

                // Info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _infoBox("Genre", movie.genre),
                    _infoBox("Duration", movie.duration),
                    _infoBox("Rating", movie.rating),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Title
            Text(
              movie.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Description
            Text(
              movie.description,
              style: const TextStyle(color: Colors.white70, fontSize: 18),
            ),

            const Spacer(),

            // Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SeatScreen()),
                );
              },
              child: const Text("Get Reservation"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoBox(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.white54)),
          Text(value, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
