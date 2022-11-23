import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/utils/drawer.dart';

class BudgetData extends StatefulWidget {
  const BudgetData({super.key});

  @override
  State<BudgetData> createState() => _BudgetDataState();
}

class _BudgetDataState extends State<BudgetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: drawerBuild(context),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: Budget.listBudget.map((Budget other) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            other.title,
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            other.date.toString().split(' ')[0],
                            style: const TextStyle(fontSize: 14.0),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            other.nominal.toString(),
                            style: const TextStyle(fontSize: 14.0),
                          ),
                          Text(
                            other.type,
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}