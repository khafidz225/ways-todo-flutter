import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:ways_todo/Components/dropdown.dart';

import '../Components/form_date.dart';

class ListTodo extends StatefulWidget {
  const ListTodo({super.key});

  @override
  State<ListTodo> createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  bool isChecked = false;

  // Widget test = await FormDate(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xffff5555),
          // leading: Icon(Icons.menu),
          pinned: true,
          expandedHeight: 65,
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
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Search List..."),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 110, child: FormDate()),
                    Container(width: 110, child: Dropdown()),
                    SizedBox(width: 110, child: Dropdown()),
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
