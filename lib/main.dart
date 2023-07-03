import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
 final List<Contant> contants =[
    Contant(names: 'Maruf hasan', email: 'Maruf@gmail.com', phone: '01760381225'),
    Contant(names: 'Rakibul islam', email: 'Rakib@gmail.com', phone: '01760381225'),
    Contant(names: 'Rahib', email: 'Rahib@gmail.com', phone: '01760381225'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: contants.length,
          itemBuilder: (context, index){
            return  ListTile(
              title: Text(contants[index].names),
              onTap: (){
                showBottomSheet(context: context, builder: (context){
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Contact Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                          SizedBox(height: 10,),
                          Text('Name: ${contants[index].names}'),
                          Text('Email: ${contants[index].email}'),
                          Text('Phone: ${contants[index].phone}'),
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          }),
    );
  }
}
class Contant{
 final String names;
 final String email;
  final String phone;
  Contant({required this.names,required this.email,required this.phone});
}
