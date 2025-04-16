import 'addStudent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StudentInformation {
  final String name;
  final String className;
  final String section;
  final String age;
  final String email;
   bool isPresent = false;
   bool isAbsent = false;

  StudentInformation({
    required this.name,
    required this.className,
    required this.section,
    required this.age,
    required this.email,
    this.isAbsent = false,
    this.isPresent = false,
  });
}
