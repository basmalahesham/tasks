import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/sqldb.dart';

class SimpleApp extends StatefulWidget {
  const SimpleApp({super.key});

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () async{
                int response = await sqlDb.insetData("INSERT INTO 'notes' ('note') VALUES ('note two')");
                print(response);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Inset Data'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () async{
                List<Map> response = await sqlDb.readData("SELECT * FROM 'notes'");
                print(response);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Read Data'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () async{
                int response = await sqlDb.deleteData("DELETE FROM 'notes' WHERE id = 8");
                print(response);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Delete Data'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () async{
                int response = await sqlDb.updateData("UPDATE 'notes' SET 'note' = 'note five' WHERE id = 5");
                print(response);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Update Data'),
            ),
          ),

        ],
      ),
    );
  }
}
