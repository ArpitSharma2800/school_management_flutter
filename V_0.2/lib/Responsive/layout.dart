import 'package:flutter/material.dart';

double ht(_context) {
  return MediaQuery.of(_context).size.height / 100;
}

double wt(_context) {
  return MediaQuery.of(_context).size.width / 100;
}
