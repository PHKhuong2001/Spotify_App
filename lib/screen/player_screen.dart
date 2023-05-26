import 'package:flutter/material.dart';
import 'package:spotify/model/song.dart';

class PlayerScreen extends StatefulWidget {
  final Song song;
  const PlayerScreen({super.key, required this.song});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool _isBluetoothOn = false;
  // bool _isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.7),
            ),
            Positioned(
              left: 20.0,
              top: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: Colors.black,
                    padding: const EdgeInsets.all(8.0)),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Now Playing",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Expanded(
                    child: Align(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(31.0),
                        child: Image.network(widget.song.image,
                            width: 348.0, height: 400.0, fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 348.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.song.title,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.song.artist,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () async {
                                setState(() {
                                  _isBluetoothOn = !_isBluetoothOn;
                                });
                              },
                              icon: Icon(
                                _isBluetoothOn
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: const Color(0xFF1ED760),
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 390.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Slider.adaptive(
                              value: 0,
                              onChanged: (value) {},
                              activeColor: const Color(0xFFA9A9A9),
                              inactiveColor: const Color(0xFF474747),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 348.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "00:00",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "00:00",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 288,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_next_sharp,
                                  size: 32, color: Color(0xFFFFFFFF)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_previous_sharp,
                                  size: 32, color: Color(0xFFFFFFFF)),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    primary: const Color(0xFF1ED760),
                                    padding: const EdgeInsets.all(23.0)),
                                child: const Icon(
                                  Icons.pause,
                                  size: 40.0,
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_next_sharp,
                                  size: 32, color: Color(0xFFFFFFFF)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_next_sharp,
                                  size: 32, color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
