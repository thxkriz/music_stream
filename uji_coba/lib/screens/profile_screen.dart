import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uji_coba/screens/ExampleScreen.dart';
import 'package:uji_coba/screens/Set.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/krisna.png'),
            ),
            const SizedBox(height: 20,),
            itemProfile('Name', 'Krisna', CupertinoIcons.person),
            const SizedBox(height: 20,),
            itemProfile('Asal', 'Manggis, Karangasem', CupertinoIcons.person),
            const SizedBox(height: 20,),
            itemProfile('Sekolah', 'Universitas Pendidikan ganesha', CupertinoIcons.person),

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: ( (context) => SetScreen())));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(5),
                  ),
                  child: const Text('Edit Profile')
              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData){
    return Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            ),
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(IconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );

  }
  }
