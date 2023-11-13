import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/models/plan.dart';
import 'package:master_plan/view/plan_screen.dart';

class PlanCreatorScreen extends StatefulWidget {
  const PlanCreatorScreen({
    Key ? key
  }): super(key: key);

  @override
  _PlanCreatorScreenState createState() => _PlanCreatorScreenState();
}

class _PlanCreatorScreenState extends State < PlanCreatorScreen > {

  // Praktikum Langkah 11
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ganti ‘Namaku' dengan nama panggilan Anda
      appBar: AppBar(title: const Text('Master Plans ; Amalia Salsa Lutfiana')),
      body: Column(children: [
        _buildListCreator(),
        Expanded(child: _buildMasterPlans())
      ]),
    );
  }


  // Praktikum Langkah 12
  Widget _buildListCreator() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
        child: Material(
          color: Theme.of(context).cardColor,
          elevation: 10,
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(
                labelText: 'Add a plan',
                contentPadding: EdgeInsets.all(20)),
              onEditingComplete: addPlan),
        ));
  }


  // Praktikum 3 Langkah 13
  void addPlan() {
    final text = textController.text;
    if (text.isEmpty) {
      return;
    }
    final plan = Plan(name: text, tasks: []);
    ValueNotifier < List < Plan >> planNotifier =
      PlanProvider.of(context);
    planNotifier.value = List < Plan > .from(planNotifier.value)..
    add(plan);
    textController.clear();
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {});
  }

  // Praktikum 3 Langkah 14
  Widget _buildMasterPlans() {
    ValueNotifier < List < Plan >> planNotifier = PlanProvider.of(context);
    List < Plan > plans = planNotifier.value;

    if (plans.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: < Widget > [
          const Icon(Icons.note, size: 100, color: Colors.grey),
            Text('Anda belum memiliki rencana apapun.',
              style: Theme.of(context).textTheme.headlineSmall)
        ]);
    }
    return ListView.builder(
      itemCount: plans.length,
      itemBuilder: (context, index) {
        final plan = plans[index];
        return ListTile(
          title: Text(plan.name),
          subtitle: Text(plan.completenessMessage),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) =>
                PlanScreen(plan: plan, )));
          });
      });
  }

  final textController = TextEditingController();

  // Praktikum Langkah 10
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}