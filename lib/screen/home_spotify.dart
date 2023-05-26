import 'package:flutter/material.dart';
import 'package:spotify/screen/playlistLibrary_screen.dart';
class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
  ],
         centerTitle: true,
          title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   width: 30,
      // ),
      Image.asset(
        'assets/images/logo.png',
        scale: 10,
      ),
    ],
  ),
            backgroundColor: Colors.black,
      ),
      body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('assets/images/rasa2.jpg'),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                    ),
                    ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 70,
                    width: double.infinity,
                    child: Text("Today's hits",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                  ),
                 ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/billie.jpg'),),
                    title: Text('Bad Guy',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Billie Eilish',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/theweeknd.jpg'),),
                    title: Text('Blinding Lights',style: TextStyle(color: Colors.white),),
                    subtitle: Text('The Weeknd',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/taylor.jpg'),),
                    title: Text('Anti-Hero',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Taylor Swift',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/mtp.jpg'),),
                    title: Text('Making My Way',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Son Tung MT-P',style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 70,
                    width: double.infinity,
                    child: Text("New Sings",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                  ),
                 ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/billie.jpg'),),
                    title: Text('Lovely',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Billie Eilish',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/theweeknd.jpg'),),
                    title: Text('Double Fantasy',style: TextStyle(color: Colors.white),),
                    subtitle: Text('The Weeknd',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/taylor.jpg'),),
                    title: Text('The AlScott',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Taylor Swift',style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('assets/images/mtp.jpg'),),
                    title: Text('Making My Way',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Son Tung MT-P',style: TextStyle(color: Colors.white),),
                  ),
                  
                ],
              ),
            ),
          ),
      bottomNavigationBar: Row(
        children: [
          Container(
            child: Icon(Icons.home_outlined, color: Color.fromARGB(255, 10, 127, 14),size: 40,),
            width: MediaQuery.of(context).size.width / 4,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 58, 57, 57)
            ),
          ),
          Container(
            child:  IconButton(
              
              onPressed: () => {
                print("Libary"),
                Navigator.push(context, MaterialPageRoute(
                              builder: (build) => const PlayListLibraryScreen()))
                
            }
            ,icon: Icon(Icons.library_music_outlined,color: Color.fromARGB(255, 10, 127, 14,),size: 40)
            ),
            width: MediaQuery.of(context).size.width / 4,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 58, 57, 57)
            ),
          ),
           Container(
            child: Icon(Icons.access_time, color: Color.fromARGB(255, 10, 127, 14),size: 40,),
            width: MediaQuery.of(context).size.width / 4,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 58, 57, 57)
            ),
          ),
           Container(
            child: Icon(Icons.person_2_outlined, color: Color.fromARGB(255, 10, 127, 14),size: 40,),
            width: MediaQuery.of(context).size.width / 4,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 58, 57, 57)
            ),
          ),
        ],
      ),
      
    );
  }
}