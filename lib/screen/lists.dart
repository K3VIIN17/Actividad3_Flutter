import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(
                  child: Text('Entry ${entries[index]}'),
                ));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider()),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Elemento 1'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Elemento 2'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Elemento 3'),
            )
          ],
        ),
      ),
    );
  }
}
