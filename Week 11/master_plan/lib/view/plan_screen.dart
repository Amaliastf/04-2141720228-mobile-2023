import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/models/plan.dart';
import 'package:master_plan/models/task.dart';

class PlanScreen extends StatefulWidget {
  // Praktikum 3 Langkah 3
  final Plan plan;

  const PlanScreen({
    super.key,
    required this.plan
  });
  // const PlanScreen({
  //   super.key
  // });
  

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State < PlanScreen > {
  // Praktikum 3 Langkah 5
  late ScrollController scrollController;
  // // Perbaikan prak 3
  // late Plan plan;
  Plan get plan => widget.plan;
  // Plan plan =
  // const Plan();
  // // Praktikum 1 Langkah 10
  // late ScrollController scrollController;
  

  // Praktikum 1 Langkah 11
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(() {
      FocusScope.of(context).requestFocus(FocusNode());
    });
    // // Perbaikan Praktikum 3
    // plan = widget.plan;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     // ganti ‘Namaku' dengan Nama panggilan Anda
  //     appBar: AppBar(title: const Text('Amalia Salsa Lutfiana : 3F/04')),
  //     body: _buildList(context),
  //     floatingActionButton: _buildAddTaskButton(context),
  //   );
  // }


  // Praktikum 3 Langkah 7
  @override
  Widget build(BuildContext context) {
    ValueNotifier <List< Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder <List<Plan>> (
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ], );
        }, ),
      floatingActionButton: _buildAddTaskButton(context), );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier <List<Plan>> planNotifier = PlanProvider.
    of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
        onPressed: () {
          Plan currentPlan = plan;
          int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)..add(const Task());
          planNotifier.value = List<Plan> .from(planNotifier.value).. [planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
        },
    );
  }





  // // Perbaikan Praktikum 2 Langkah 9
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Master Plan')),
  //     body: ValueListenableBuilder < Plan > (
  //       valueListenable: PlanProvider.of(context),
  //       builder: (context, plan, child) {
  //         return Column(
  //           children: [
  //             Expanded(child: _buildList(context)),
  //             SafeArea(child: Text(plan.completenessMessage))
  //           ],
  //         );
  //       },
  //     ),
  //     floatingActionButton: _buildAddTaskButton(context),
  //   );
  // }




  // // Praktikum 2 Langkah 5
  // Widget _buildAddTaskButton(BuildContext context) {
  //   ValueNotifier < Plan > planNotifier = PlanProvider.of(context);
  //   return FloatingActionButton(
  //     child: const Icon(Icons.add),
  //       onPressed: () {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List < Task > .from(currentPlan.tasks)..add(const Task()),
  //         );
  //       },
  //   );
  // }

  // // Praktikum 1 Langkah 7
  // Widget _buildAddTaskButton() {
  //   return FloatingActionButton(
  //     child: const Icon(Icons.add),
  //       onPressed: () {
  //         setState(() {
  //           plan = Plan(
  //             name: plan.name,
  //             tasks: List < Task > .from(plan.tasks)..add(const Task()),
  //           );
  //         });
  //       },
  //   );
  // }

  // // Praktikum 2 Langkah 7
  // Widget _buildList(Plan plan) {
  //   return ListView.builder(
  //     controller: scrollController,
  //     itemCount: plan.tasks.length,
  //     itemBuilder: (context, index) =>
  //     _buildTaskTile(plan.tasks[index], index, context),
  //   );
  // }

  // // Perbaikan Praktikum 2 Langkah 7
  // Widget _buildList(BuildContext context) {
  //   ValueNotifier < Plan > planNotifier = PlanProvider.of(context);
  //   Plan plan = planNotifier.value;
  //   return ListView.builder(
  //     controller: scrollController,
  //     itemCount: plan.tasks.length,
  //     itemBuilder: (context, index) =>
  //     _buildTaskTile(plan.tasks[index], index, context),
  //   );
  // }

  // Perbaikan Praktikum 3
  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
        _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  // // Praktikum 1 Langkah 8
  // Widget _buildList() {
  //   // Praktikum 1 Langkah 12
  //   return ListView.builder(
  //     controller: scrollController,
  //     keyboardDismissBehavior: Theme.of(context).platform ==
  //     TargetPlatform.iOS ?
  //     ScrollViewKeyboardDismissBehavior.onDrag :
  //     ScrollViewKeyboardDismissBehavior.manual,
  //     itemCount: plan.tasks.length,
  //     itemBuilder: (context, index) =>
  //     _buildTaskTile(plan.tasks[index], index),
  //   );
  // }



  // Praktikum 3 Langkah 8
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan >> planNotifier = PlanProvider.
    of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          Plan currentPlan = plan;
          int planIndex = planNotifier.value
            .indexWhere((p) => p.name == currentPlan.name);
          planNotifier.value = List < Plan > .from(planNotifier.value).. [planIndex] = Plan(
            name: currentPlan.name,
            tasks: List<Task> .from(currentPlan.tasks).. [index] = Task(
              description: task.description,
              complete: selected ?? false,
            ), );
        }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = plan;
          int planIndex =
            planNotifier.value.indexWhere((p) => p.name ==
              currentPlan.name);
          planNotifier.value = List < Plan > .from(planNotifier.value).. [planIndex] = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks).. [index] = Task(
              description: text,
              complete: task.complete,
            ),
          );
        }, ), );
  }






  // // Praktikum 2 Langkah 6
  // Widget _buildTaskTile(Task task, int index, BuildContext context) {
  //   ValueNotifier < Plan > planNotifier = PlanProvider.of(context);
  //   return ListTile(
  //     leading: Checkbox(
  //       value: task.complete,
  //       onChanged: (selected) {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List < Task > .from(currentPlan.tasks).. [index] = Task(
  //             description: task.description,
  //             complete: selected ? ? false,
  //           ),
  //         );
  //       }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List < Task > .from(currentPlan.tasks).. [index] = Task(
  //             description: text,
  //             complete: task.complete,
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // // Praktikum 1 Langkah 9
  // Widget _buildTaskTile(Task task, int index) {
  //   return ListTile(
  //     leading: Checkbox(
  //       value: task.complete,
  //       onChanged: (selected) {
  //         setState(() {
  //           plan = Plan(
  //             name: plan.name,
  //             tasks: List < Task > .from(plan.tasks).. [index] = Task(
  //               description: task.description,
  //               complete: selected ?? false,
  //             ),
  //           );
  //         });
  //       }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         setState(() {
  //           plan = Plan(
  //             name: plan.name,
  //             tasks: List < Task > .from(plan.tasks).. [index] = Task(
  //               description: text,
  //               complete: task.complete,
  //             ),
  //           );
  //         });
  //       },
  //     ),
  //   );
  // }


  // Praktikum 1 Langkah 13
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}