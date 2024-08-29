import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/home.dart';
import 'package:optical/course_sqflite/model.dart';
import 'package:optical/course_sqflite/sqldb.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});
  static const String routeName = 'edit_note';

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  SqlDb sqlDb = SqlDb();

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController color = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Model;
    note.text = args.note;
    title.text = args.title;
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
                    controller: title,
                    decoration: InputDecoration(
                      hintText: 'title',
                    ),
                  ),

                  TextFormField(
                    controller: note,
                    decoration: InputDecoration(
                      hintText: 'note',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () async {
                        int response = await sqlDb.updateData(
                          '''
                          UPDATE notes SET 
                          note  = '${note.text}',
                          title = '${title.text}'
                          WHERE id = ${args.id}
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
                      child: const Text('Edit Note'),
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
