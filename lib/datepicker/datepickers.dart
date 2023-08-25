import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DatePickerPage(),
    );
  }
}

class DatePickerPage extends StatelessWidget {
  DatePickerPage({Key? key}) : super(key: key);

  final _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            controller: _text,
            onTap: () {
              pickDate(context);
              FocusScope.of(context).requestFocus(FocusNode());
            },
            decoration: InputDecoration(labelText: 'Date of birth'),
          ),
        )),
      ),
    );
  }

  pickDate(BuildContext context) async {
    var dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime.now(),
        /*initialEntryMode: DatePickerEntryMode.inputOnly,*/
        fieldLabelText: 'Date of birth',
        helpText: 'Select date of birth',
        confirmText: 'DONE',
        fieldHintText: 'dd/MM/yyyy',
        errorInvalidText: 'invalid text',
        errorFormatText: 'invalid format text');

    if (dateTime != null) {
      /*if(Theme.of(context).platform == TargetPlatform.iOS){
      }*/

      var dob =
          '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}';
      _text.text = dob;
    } else {
      print('please select date of birth');
    }
  }
}
