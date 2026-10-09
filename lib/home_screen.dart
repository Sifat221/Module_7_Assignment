import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> contacts = const [
    {
      'name': 'Jawad',
      'phone': '01877-777777',
    },
    {
      'name': 'Ferdous',
      'phone': '01673-777777',
    },
    {
      'name': 'Hasan',
      'phone': '01745-777777',
    },
    {
      'name': 'Hasan',
      'phone': '01745-777777',
    },
    {
      'name': 'Hasan',
      'phone': '01745-777777',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10),

            TextFormField(
              initialValue: 'Hasan',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            TextFormField(
              initialValue: '01745-777777',
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: Text('Add'),
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey.shade100,
                    elevation: 0,
                    margin: EdgeInsets.symmetric(
                      vertical: 3,
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),

                      leading: Icon(
                        Icons.person,
                        color: Colors.brown,
                        size: 30,
                      ),

                      title: Text(
                        contacts[index]['name']!,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),

                      subtitle: Text(
                        contacts[index]['phone']!,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),

                      trailing: Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}