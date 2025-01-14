import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  static const routeName = '/landing';

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.getFont('Lato');
    final bodyTextStyle = TextStyle(
      fontSize: 18,
      fontFamily: 'Lato',
    );
    final theme = Theme.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.primaryColor,
          title: Text(
            'Carlos Andres Vazquez Baur',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.white70,
              fontFamily: 'Lato',
            ),
          ),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 75,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: theme.primaryColor),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'About Me',
                    style: textStyle,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text(
                    'Music',
                    style: textStyle,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.terrain),
                  title: Text(
                    'Skiing',
                    style: textStyle,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.computer),
                  title: Text(
                    'Software Development',
                    style: textStyle,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text(
                    'Contact Me',
                    style: textStyle,
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Welcome to my personal website!',
                style: bodyTextStyle,
              ),
              Text(
                'I am a software developer, musician, actor, and skier.',
                style: bodyTextStyle,
              ),
              Text(
                'Please feel free to explore the site!',
                style: bodyTextStyle,
              ),
            ],
          ),
        ),
      );
    });
  }
}
