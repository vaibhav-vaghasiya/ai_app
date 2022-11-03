import 'package:ai_app/models/complain.dart';
import 'package:ai_app/pages/userhome.dart';
import 'package:ai_app/widgets/probSelect.dart';
import 'package:flutter/material.dart';

class ComForm extends StatelessWidget {
  static const String _title = 'Geo tag App';

  // List<Complain> allComplain = [
  //   // Complain(id: time, problem: dropdownvalue, description: , address: address, pincode: pincode, comTime: comTime)
  // ];

  String dropdownvalue = "";

  @override
  Widget build(BuildContext context) {
    TextEditingController desController = TextEditingController();
    TextEditingController addrController = TextEditingController();
    TextEditingController pinController = TextEditingController();

    // _submitData() {
    //   Complain ex = Complain(
    //     id: DateTime.now().second,
    //     problem: dropdownvalue,
    //     description: desController.text,
    //     address: addrController.text,
    //     pincode: int.parse(pinController.text),
    //     comTime: DateTime.now(),
    //   );

    // print("id: ${ex.id} \n");
    // print("problem: ${ex.problem} \n");
    // print("description: ${ex.description} \n");
    // print("address: ${ex.address} \n");
    // print("pincode: ${ex.pincode} \n");
    // print("comTime: ${ex.comTime} \n");
    //   allComplain.add(ex);
    // }

    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 40.0),
                    child: Text(
                      "Describe your Problem",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ProbSelect(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: pinController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pin code',
                        hintText: 'eg:392350',
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30.0,
                  // ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      controller: desController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description about problem',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: addrController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your address',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Submit Problem'),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => UserHome()))),
                      },
                    ),
                  ),

                  // Container(
                  //   child : Center(
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         DropdownButton(
                  //           // Initial Value
                  //           value: dropdownvalue,

                  //           // Down Arrow Icon
                  //           icon: const Icon(Icons.keyboard_arrow_down),

                  //           // Array list of items
                  //           items: items.map((String items) {
                  //             return DropdownMenuItem(
                  //               value: items,
                  //               child: Text(items),
                  //             );
                  //           }).toList(),
                  //           // After selecting the desired option,it will
                  //           // change button value to selected value
                  //           onChanged: (String? newValue) {
                  //             setState(() {
                  //               dropdownvalue = newValue!;
                  //             });
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextChanged {}
