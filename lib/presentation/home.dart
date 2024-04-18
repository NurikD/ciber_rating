import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000527),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 15, 50, 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'logo.png',
                    width: 66,
                    height: 66,
                  ),
                   SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Главная',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Турниры',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03
                  ),
                  DropdownMenu(),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Контакты',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Вход',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Text('|', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF272C49),
                ),
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String _selectedItem = 'Dota';

  final List<DropdownMenuItem<String>> _dropdownMenuItems = [
    const DropdownMenuItem(value: 'CS:GO', child: Text('CS:GO')),
    const DropdownMenuItem(value: 'Dota', child: Text('Dota')),
    const DropdownMenuItem(value: 'HearthStone', child: Text('HearthStone')),
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: const Color(0xFF000527),
      value: _selectedItem,
      icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
      iconSize: 24,
      style: const TextStyle(color: Colors.white, fontSize: 24),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          if (newValue != null) {
            _selectedItem = newValue;
          }
        });
      },
      items: _dropdownMenuItems,
    );
  }
}
