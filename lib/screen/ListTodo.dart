import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:ways_todo/Components/dropdown.dart';

class ListTodo extends StatefulWidget {
  const ListTodo({super.key});

  @override
  State<ListTodo> createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  final formdate = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xffff5555),
          // leading: Icon(Icons.menu),
          pinned: true,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Container(
              color: Colors.blue,
            ),
            title: Text("Ways Todo"),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi Khafidz",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "200 List",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffff5555)),
                        )
                      ],
                    ),
                    Image.asset('assets/image/profilecircle.png')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Search List..."),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: TextField(
                          controller: formdate,
                          //editing controller of this TextField
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.calendar_today),
                              // hintStyle: TextStyle(fontSize: 24),
                              // labelStyle: TextStyle(fontSize: 12),
                              // helperStyle: ,
                              labelText: "Choose Date",
                              border: OutlineInputBorder()),
                          readOnly: true,
                          //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2100));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              setState(() {
                                formdate.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {}
                          },
                        )),
                    const SizedBox(width: 100, child: Dropdown()),
                    const SizedBox(width: 100, child: Dropdown()),
                  ],
                )),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffdaefff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Colors.red,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Study - Golang",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Learn Golang to improve fundamentals and familiarize with coding.",
                              style: TextStyle(color: Color(0xff9b9b9b)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                // height: 30,
                                width: 10,
                              ),
                              Text("ygdya")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Study"),
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) => setState(() {
                              isChecked = value!;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
