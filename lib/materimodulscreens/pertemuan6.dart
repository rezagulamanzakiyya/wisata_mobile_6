import 'package:flutter/material.dart';

class pertemuan6 extends StatefulWidget {
  const pertemuan6({super.key});

  @override
  State<pertemuan6> createState() => _pertemuan6State();
}

class _pertemuan6State extends State<pertemuan6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("pertemuan 6 : from screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'images/cyberwadaw.jpg',
                  width: 200,
                  height: 150,
                ),
                Image.asset(
                  'images/Developerwadaw.jpg',
                  width: 200,
                  height: 150,
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'masukan nama',
              ),
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('jenis kelamin : '),
                Radio(
                    value: 'laki-laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('laki-laki'),
                Radio(
                    value: 'perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('perempuan'),
              ],
            ),
            SizedBox(height: 20),
            Text('Hobi'),
            CheckboxListTile(
              title: Text('olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('seni ledakan'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('submit'),
            )
          ],
        ),
      ),
    );
  }
}
