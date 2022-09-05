import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String img;

  const DetailPage({required this.img, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.img,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.img),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}