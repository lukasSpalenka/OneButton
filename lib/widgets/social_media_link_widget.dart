import 'package:flutter/material.dart';

class SocialMediaLink extends StatelessWidget {
  final String imageSource;
  final String accountName;

  const SocialMediaLink({
    required this.imageSource,
    required this.accountName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageSource,
            /*'assets/images/ig-logo.png',*/
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                accountName,
                /*'@pslib_official',*/
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
