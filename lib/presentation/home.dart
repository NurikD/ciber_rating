import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Создайте список элементов, которые будут отображаться в таблице.
  final List<Map<String, dynamic>> _tableData = List.generate(
    50,
    (index) => {
      "rank": "${index + 1}",
      "user": "Magic",
      "level": "5555",
      "matches": "323",
      "wins": "129",
      "winRate": "55%",
      "totalHours": "6,543",
      "color": Colors.accents[index % Colors.accents.length],
    },
  );

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
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Главная',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Турниры',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  DropdownMenu(),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
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
                  const Text(
                    '|',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
              Expanded(
                // Используйте Expanded вместо контейнера с фиксированной высотой
                child: SingleChildScrollView(
                  // Добавьте прокрутку, если содержимое не помещается на экран
                  child: Column(
                    children: [
                      _buildTableHeader(), // Создайте функцию для построения заголовка таблицы
                      ..._tableData
                          .map((data) => _buildTableRow(data))
                          .toList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFF5B5781),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Expanded(
              flex: 1,
              child: Center(
                  child: Text('RANK',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text('USER',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text('LEVEL',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text('MATCHES',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text('WINS',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text('WIN RATE',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text('TOTAL HOURS',
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
        ],
      ),
    );
  }

  Widget _buildTableRow(Map<String, dynamic> data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xFF3C3F58),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(data["rank"],
                      style: TextStyle(color: data["color"], fontSize: 18)))),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text(data["user"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(data["level"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(data["matches"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(data["wins"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(data["winRate"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text(data["totalHours"],
                      style:
                          TextStyle(color: Color(0xFFBCBBBB), fontSize: 18)))),
        ],
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
