import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/add_note.dart';
import 'package:optical/course_sqflite/edit_note.dart';
import 'package:optical/course_sqflite/model.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddNote.routeName);
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView(
          children: [
            FutureBuilder(
              future: readData(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text("${snapshot.data![index]['title']}"),
                          subtitle: Text("${snapshot.data![index]['note']}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  int response = await sqlDb.deleteData(
                                      "DELETE FROM notes WHERE id = ${snapshot.data![index]['id']}");
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    EditNote.routeName,
                                    arguments: Model(
                                      note: snapshot.data![index]['note'],
                                      title: snapshot.data![index]['title'],
                                      id: snapshot.data![index]['id'],
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
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
/*import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/add_note.dart';
import 'package:optical/course_sqflite/sqldb.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SqlDb sqlDb = SqlDb();
  bool isLoading = true;
  List notes = [];

  Future readData() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM notes");

    setState(() {
      notes.addAll(response);
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    readData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddNote.routeName);
        },
        child: Icon(Icons.add),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              child: ListView(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text("${notes[index]['title']}"),
                          subtitle: Text("${notes[index]['note']}"),
                          trailing: IconButton(
                            onPressed: () async {
                              int response = await sqlDb.deleteData(
                                  "DELETE FROM notes WHERE id = ${notes[index]['id']}");
                              if (response > 0) {
                                notes.removeWhere((element) =>
                                    element['id'] == notes[index]['id']);
                                setState(() {});
                              }
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      );
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
}*/
