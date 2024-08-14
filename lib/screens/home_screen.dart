// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = "Endros";
  String firstName = '';
  String lastName = '';

  @override
  void initState() {
    // TODO: implement initState
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            Text(
              'Data fistname : $firstName lastname : $lastName',
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '- $firstName $lastName',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  //
                  var url = Uri.parse("https://reqres.in/api/users/2");

                  var response = await http.get(url);
                  var data = jsonDecode(response.body);

                  firstName = data['data']['first_name'];
                  lastName = data['data']['last_name'];

                  print(data['data']);
                },
                child: Text(' Get Data'))
          ],
        ),
      ),
    );
  }
}
