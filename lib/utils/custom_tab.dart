import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget{
  CustomTab({required this.title});

  final String title;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context){
    return TextButton(
          onPressed:(){},
      child: Text(this.widget.title,
      style:TextStyle(fontSize: 17)
      ),
    );
  }
}