import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/home.dart';
import 'package:optical/course_sqflite/sqldb.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});
  static const String routeName = 'addNotes';

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  SqlDb sqlDb = SqlDb();

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController color = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Form(
              key: formState,
              child: Column(
                children: [
                  TextFormField(
                    controller: note,
                    decoration: InputDecoration(
                      hintText: 'note',
                    ),
                  ),
                  TextFormField(
                    controller: title,
                    decoration: InputDecoration(
                      hintText: 'title',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () async {
                        int response = await sqlDb.insetData(
                          '''
                          INSERT INTO notes ('note' , 'title' )
                          VALUES ('${note.text}', '${title.text}')
                          ''',
                        );
                        if (response > 0) {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                            (route) => false,
                          );
                         // Navigator.pop(context);

                        }
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: const Text('Add Note'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
