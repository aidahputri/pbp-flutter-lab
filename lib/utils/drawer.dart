import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/forms/form.dart';
import 'package:counter_7/page/budget_data/budget_data.dart';

Drawer drawerBuild(BuildContext context) {
  String? route = ModalRoute.of(context)?.settings.name;

  return Drawer(
    child: Column(
      children: [
        // Menambahkan clickable menu
        ListTile(
          title: const Text('Counter_7'),
          onTap: () {
            // ke homepage
            if (route == '/') {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacementNamed(context, '/');
            }
          },
        ),

        ListTile(
          title: const Text('Tambah Budget'),
          onTap: () {
            if (route == '/budget-form') {
              Navigator.pop(context);
            } else { // ke form budget
              Navigator.pushReplacementNamed(context, '/budget-form');
            }
          },
        ),

        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            if (route == '/budget-data') {
              Navigator.pop(context);
            } else { // ke data budget
              Navigator.pushReplacementNamed(context, '/budget-data');
            }
          },
        ),

        ListTile(
          title: const Text('My Watch List'),
          onTap: () {
            if (route == '/mywatchlist') {
              Navigator.pop(context);
            } else { // ke data budget
              Navigator.pushReplacementNamed(context, '/mywatchlist');
            }
          },
        ),
      ],
    ),
  );
}