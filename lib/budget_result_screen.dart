import 'package:flutter/material.dart';
import 'budget_data_model.dart';
class BudgetResultScreen extends StatelessWidget {
  const BudgetResultScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // recieve data from previous screen
    final user = ModalRoute.of(context)!.settings.arguments as Budget;
    final rembal = user.mi - (user.rent + user.fe + user.trans + user.oe);
    final message = (rembal < 0) ? "You are overspending" : "Great! you are saving money";
    return Scaffold(
      appBar: AppBar(
        title: Text("Budget Results Screen"),
        backgroundColor: Colors.amberAccent,),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Monthly Salary:"),
              subtitle: Text("${user.mi}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Rent/EMI:"),
              subtitle: Text(" ${user.rent}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Food Expenses:"),
              subtitle: Text(" ${user.fe}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Transport Expenses:"),
              subtitle: Text(" ${user.trans}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Other Expenses:"),
              subtitle: Text("  ${user.oe}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Remaining Balance:"),
              subtitle: Text("${rembal}")
             )
            ),
            Card(elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Message:"),
              subtitle: Text(message)
             )
            )
          ],))
    );
  }
}