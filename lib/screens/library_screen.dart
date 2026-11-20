import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Library',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _LibraryItem(
              icon: Icons.favorite,
              title: 'Favorite Songs',
              subtitle: 'Your liked music',
              color: const Color(0xFFFF375F),
            ),
            const SizedBox(height: 14),
            _LibraryItem(
              icon: Icons.download_rounded,
              title: 'Downloaded',
              subtitle: 'Music available offline',
              color: const Color(0xFF7B2FFF),
            ),
            const SizedBox(height: 14),
            _LibraryItem(
              icon: Icons.album,
              title: 'Albums',
              subtitle: 'Your saved albums',
              color: const Color(0xFF2196F3),
            ),
            const SizedBox(height: 14),
            _LibraryItem(
              icon: Icons.person,
              title: 'Artists',
              subtitle: 'Your favorite artists',
              color: const Color(0xFF00BFA5),
            ),
            const SizedBox(height: 14),
            _LibraryItem(
              icon: Icons.queue_music,
              title: 'Playlists',
              subtitle: 'Your playlists',
              color: const Color(0xFFFF9800),
            ),
          ],
        ),
      ),
    );
  }
}

class _LibraryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const _LibraryItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: const Color(0xFF17171D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: color.withOpacity(0.18),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              color: color,
              size: 26,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.white38,
          ),
        ],
      ),
    );
  }
}
