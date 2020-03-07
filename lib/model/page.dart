import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Page {
  final String name;
  final List<Widget> content;

  const Page({@required this.name, @required this.content});
}