import 'package:flutter/material.dart';

class OperationListView extends StatelessWidget {
  const OperationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController contactController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ))),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: contactController,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: const InputDecoration(
                hintText: 'Number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ))),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Save")),
              ElevatedButton(onPressed: (){}, child: Text("update"))
            ],
          )
        ],
      ),
    );
  }
}
