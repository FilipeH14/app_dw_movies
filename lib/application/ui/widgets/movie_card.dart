import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 148,
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/pt/6/63/Joker_%282019%29.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Coringa',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
