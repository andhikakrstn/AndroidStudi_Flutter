
import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none, alignment: Alignment.center,
          children: [
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://3.bp.blogspot.com/-I6lfSyUQfxw/UrAULxkuyDI/AAAAAAAAQs0/GmAIGohkeaY/s1600/waterfall-godafoss-iceland.jpg'),),
            Positioned(
              bottom: -70.0,
              child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://cdn.popbela.com/content-images/post/20191228/tumblr-ns2zn2pcmo1u0xqzko1-1280-a7740d697d728ba759c2115190b8a688-ec5658d50600302ef684518cc4c09e82.jpg')
              ),
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        ListTile(
          title: Center(child: Text('Surti Sumarti', style: TextStyle(fontFamily: 'Bebas', fontSize: 30, fontWeight: FontWeight.bold),)),
          subtitle: Center(child: Text('Programmer Mager', style: TextStyle(fontWeight: FontWeight.w700),)),
        ),
        // ignore: deprecated_member_use
        FlatButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          label: Text(
            'Hire Me',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        ListTile(
          title: Text('About Me'),
          subtitle: Text('Aplikasi native adalah aplikasi yang dibangun dengan bahasa pemrograman yang spesifik dan hanya dapat digunakan di platform tertentu.'),
        )
      ],
    );
  }
}
