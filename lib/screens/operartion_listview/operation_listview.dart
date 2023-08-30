import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/bloc/operation_bloc.dart';
import 'package:responsive_dashboard_flutter/model/contact_model.dart';

class OperationListView extends StatelessWidget {
  const OperationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController contactController = TextEditingController();
    return ChangeNotifierProvider(create: (_)=>OperationBloc(),
    child: Consumer<OperationBloc>(
      builder: (context,bloc,child){
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
                  ElevatedButton(onPressed: (){
                    String name = nameController.text.trim();
                    String contact = contactController.text.trim();
                    if(name.isNotEmpty && contact.isNotEmpty){
                      bloc.addContact(Contact(name, contact));
                      nameController.text = "";
                      contactController.text = "";
                    }
                  }, child: Text("Save")),
                  ElevatedButton(onPressed: (){
                    String name = nameController.text.trim();
                    String contact = contactController.text.trim();
                    if(name.isNotEmpty && contact.isNotEmpty){
                      bloc.updateContact(bloc.index, Contact(name, contact));
                      nameController.text = "";
                      contactController.text = "";
                      bloc.index;
                    }
                  }, child: Text("update"))
                ],
              ),

              bloc.contacts.isEmpty ?
              Text("No Contact yet") :
                  Expanded(
                    child: ListViewView(nameController: nameController, contactController: contactController,bloc: bloc,),
                  )
            ],
          ),
        );
      },
    ),
    );


  }
}

class ListViewView extends StatelessWidget {
  const ListViewView({
    super.key,
    required this.nameController,
    required this.contactController, required this.bloc,
  });

  final TextEditingController nameController;
  final TextEditingController contactController;
  final OperationBloc bloc;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bloc.contacts.length,
      itemBuilder: (context , index)=>
          Card(
            child:ListTile(
              leading: CircleAvatar(
                backgroundColor: index % 2 == 0 ?Colors.deepPurpleAccent : Colors.deepPurple,
                foregroundColor: Colors.white,
                child: Text(
                  bloc.contacts[index].name[0],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bloc.contacts[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(bloc.contacts[index].contact),
                ],
              ),
              trailing: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          nameController.text = bloc.contacts[index].name;
                          contactController.text = bloc.contacts[index].contact;
                          bloc.index = index;
                        },
                        child: const Icon(Icons.edit)),
                    InkWell(
                        onTap: (() {
                          bloc.deleteContact(index);
                        }),
                        child: const Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          )
                  );
  }
}
