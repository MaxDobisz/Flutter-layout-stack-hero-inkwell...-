import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Photos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 58, 191, 224),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 241, 143, 175),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...renderListElements(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: const Color.fromARGB(255, 241, 143, 175),
              elevation: 20,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 450,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/4.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'John',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text('A few minutes ago'),
                          ],
                        ),
                        const SizedBox(width: 100),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lorem ipsum dolor sit amet. Ea fuga voluptatum cum eligendi reprehenderit ea aspernatur pariatur vel ipsa facilis qui distinctio voluptates et saepe quod est odit dicta.'
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) {
                                  return const DetailPage(img: 'assets/images/9.jpg');
                                }),
                              ));
                            },
                            child: Hero(
                              tag: 'assets/images/9.jpg',
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/9.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) {return const DetailPage(img: 'assets/images/7.jpg');
                                  }
                                ),
                              ));
                            },
                            child: Hero(
                              tag: 'assets/images/7.jpg',
                              child: Container(
                                height: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/7.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) {
                                    return const DetailPage(img: 'assets/images/6.jpg');
                                }),
                              ));
                            },
                                child: Hero(
                                  tag: 'assets/images/6.jpg',
                                  child: Container(
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/6.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              'Lorem',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                          ),
                          child: const Center(
                            child: Text(
                              'Lorem',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.navigate_before),
                        Icon(Icons.thumb_up),
                        Icon(Icons.thumb_down),
                        Icon(Icons.navigate_next),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: const Color.fromARGB(255, 241, 143, 175),
              elevation: 20,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 450,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/3.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'John',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('A few minutes ago'),
                          ],
                        ),
                        const SizedBox(width: 100),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lorem ipsum dolor sit amet. Ea fuga voluptatum cum eligendi reprehenderit ea aspernatur pariatur vel ipsa facilis qui distinctio voluptates et saepe quod est odit dicta.'
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) {
                                  return const DetailPage(img: 'assets/images/10.jpg');
                                }),
                              ));
                            },
                            child: Hero(
                              tag: 'assets/images/10.jpg',
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/10.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) {
                                  return const DetailPage(img: 'assets/images/8.jpg');
                                }),
                              ));
                            },
                                child: Hero(
                                  tag: 'assets/images/8.jpg',
                                  child: Container(
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/8.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) {
                                      return const DetailPage(img: 'assets/images/2.jpg');
                                    }),
                                  ));
                                },
                                child: Hero(
                                  tag: 'assets/images/2.jpg',
                                  child: Container(
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/2.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                          ),
                          child: const Center(
                            child: Text(
                              'Lorem',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              'Lorem',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.navigate_before),
                        Icon(Icons.thumb_up),
                        Icon(Icons.thumb_down),
                        Icon(Icons.navigate_next),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  renderListElements() {
    return Constants.iconsPhotoPaths.map<Widget>((imagePath) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 58,
                left: 35,
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: Stack(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                      ),
                      const Positioned(
                        top: 4,
                        left: 3,
                        child: Icon(
                          Icons.camera_alt_sharp,
                          color: Color.fromARGB(255, 175, 163, 177),
                          size: 21,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Follow'),
          ),
        ],
      );
    }).toList();
  }
}
