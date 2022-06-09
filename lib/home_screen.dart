import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    'https://cdn-icons-png.flaticon.com/128/3238/3238594.png',
    'https://cdn-icons-png.flaticon.com/128/3448/3448601.png',
    'https://cdn-icons-png.flaticon.com/128/1828/1828884.png'
  ];
  List nameList = [
    'Voice of depression',
    'What we have learning ?',
    'Do a positive activity'
  ];
  List colorList = [
    const Color(0xff65a4da),
    const Color(0xfffe8181),
    const Color(0xff8e97ed),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 17),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.map,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '4 of 16',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 17),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.yellow[600],
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '1600',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                Text(
                  'Welcome Back',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  'Charlie Baker',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorList[index]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Image.network(
                            imageList[index],
                            width: 70,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Text(
                            nameList[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Text(
              'Well Come',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    ));
  }
}
