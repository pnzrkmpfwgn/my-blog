import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget{
  const CustomTab({required this.title,super.key});

  final String title;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context){
    return TextButton(
          onPressed:(){},
      child: Text(widget.title,
      style:const TextStyle(fontSize: 17)
      ),
    );
  }
}