import 'package:flutter/material.dart';

import 'package:one_button/widgets/social_media_link_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  'Buď studentem na SPŠSE!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset('assets/images/qr-code.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 30),
                  SocialMediaLink(
                    imageSource: 'assets/images/ig-logo.png',
                    accountName: '@pslib_official',
                  ),
                  SocialMediaLink(
                    imageSource: 'assets/images/fb-logo.png',
                    accountName: '@pslibofficial',
                  ),
                  SocialMediaLink(
                    imageSource: 'assets/images/yt-logo.png',
                    accountName: 'SPŠSE a VOŠ Liberec',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
