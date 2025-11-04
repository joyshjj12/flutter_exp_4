import 'package:flutter/material.dart';
import 'budget_data_model.dart';
class BudgetDetailsScreen extends StatefulWidget {
  const BudgetDetailsScreen({super.key});

  @override
  State<BudgetDetailsScreen> createState() => _BudgetDetailsScreenState();
}

class _BudgetDetailsScreenState extends State<BudgetDetailsScreen> {
  
  final _formkey = GlobalKey<FormState>();
  final _micontroller = TextEditingController();
  final _rentcontroller = TextEditingController();
  final _fecontroller = TextEditingController();
  final _transcontroller = TextEditingController();
  final _oecontroller = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Budget Details Screen'),
        backgroundColor: Colors.amberAccent,),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: _micontroller,
                    decoration: InputDecoration(
                      labelText: "Enter your Monthly Income:",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter your Monthly Income!";
                      }
                      return null;
                    }
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _rentcontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter your Rent:",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter your Rent!";
                      }
                      return null;
                    }
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _fecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter your Food Expenses:",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter your Food Expenses!";
                      }
                      return null;
                    }
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _transcontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter your Transport Expenses:",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter your Transport Expenses!";
                      }
                      return null;
                    }
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _oecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter your Other Expenses:",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter your Other Expenses!";
                      }
                      return null;
                    }
                  ),
                  SizedBox(height:20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                    onPressed: (){
                      if(_formkey.currentState!.validate()){
                        final user = Budget(mi:double.parse(_micontroller.text),
                        rent: double.parse(_rentcontroller.text),
                        fe: double.parse(_fecontroller.text),
                        trans: double.parse(_transcontroller.text),
                        oe: double.parse(_oecontroller.text));

                        Navigator.pushNamed(
                        context,
                        '/result',
                        arguments: user,
                      );
                      }
                      // navigation
                      // sending data to the next screen

                      
                    }, 
                    child: Text("Submit Details"))

                ]
              )
            )
            ))
        );
  }
}