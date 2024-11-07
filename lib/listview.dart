import 'package:flutter/material.dart';

void main() {
  runApp(ListViewApp());
}

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: ListViewAppPage()));
  }
}

class ListViewAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewAppPageSate();
  }
}

class ListViewAppPageSate extends State<ListViewAppPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView tĩnh'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
          child: Column(
        children: [
          Text('ListView tĩnh'),
          ListViewTinh(),
          Text('ListView động'),
          ListViewDong1(),
        ],
      )),
    );
  }
}

Widget ListViewTinh() {
  return ListView(shrinkWrap: true, children: [
    Card(
        child: ListTile(leading: Icon(Icons.add), title: Text('Nguyễn Văn A'))),
    Card(child: ListTile(leading: Icon(Icons.add), title: Text('Trần Thị B'))),
    Card(child: ListTile(leading: Icon(Icons.add), title: Text('Võ Văn C'))),
    Card(child: ListTile(leading: Icon(Icons.add), title: Text('Lê Thị D'))),
  ]);
}

Widget ListViewDong1() {
  int n = 5;
  List<int> listSo = List.generate(n, (i) => i * i);
  return ListView.builder(
      shrinkWrap: true,
      itemCount: n,
      itemBuilder: (BuildContext context, i) => Card(
              child: ListTile(
            leading: Icon(Icons.handshake),
            title: Text('Phần tử ${listSo[i]}'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: Duration(milliseconds: 100),
                  content: Text('Phần tử ${listSo[i]}')));
            },
          )));
}

Widget ListViewDong2() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i * i);
  return ListView.builder(
      shrinkWrap: true,
      itemCount: n,
      itemBuilder: (BuildContext context, int i) => Text('Phần tử: ${listInt[i]}'));
}

Widget ListViewDong3() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i * i);
  return ListView.separated(
    shrinkWrap: true,
    itemCount: n,
    itemBuilder: (BuildContext context, int i) => Text('Phần tử: ${listInt[i]}'),
    separatorBuilder: (BuildContext context, int i) => Divider(),
  );
}
