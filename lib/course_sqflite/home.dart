import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/sqldb.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SqlDb sqlDb = SqlDb();

  Future<List<Map>> readData() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM notes");
    print(response);
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
        child: ListView(
          children: [
            FutureBuilder(
              future: readData(),
              builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text("${snapshot.data![index]['note']}"),
                        ),
                      );
                    },
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
            Center(
              child: MaterialButton(
                onPressed: () async {
                  await sqlDb.myDeleteDatabase();
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('Delete Database'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
