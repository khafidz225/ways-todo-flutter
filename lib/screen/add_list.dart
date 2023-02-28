import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ways_todo/Components/dropdown.dart';
import 'package:ways_todo/Components/form_date.dart';

class AddList extends StatefulWidget {
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  final _formkey = GlobalKey<FormState>();
  final name = TextEditingController();
  final description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xffff5555),
          pinned: true,
          expandedHeight: 65,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Container(color: Colors.blue),
            title: const Text("Ways Todo"),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add List",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: name,
                          validator: (value) {
                            if (value == "") {
                              return "Name tidak boleh kosong";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(width: 400, child: Dropdown()),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 400,
                          child: FormDate(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: description,
                          validator: (value) {
                            if (value == "") {
                              return "Description tidak boleh kosong";
                            }
                            return null;
                          },
                          maxLines: 8,
                          decoration: const InputDecoration(
                              labelText: "Description",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          width: 400,
                          child: ElevatedButton(
                              onPressed: () => true,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffff5555)),
                              child: const Text(
                                "Add List",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
