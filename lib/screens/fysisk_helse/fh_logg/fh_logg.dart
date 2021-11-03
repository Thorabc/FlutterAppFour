import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_logg_controller.dart';
import 'model/Exercise.dart';

class FhLogg extends GetView<FhLoggController> {
  final o = Get.put(FhLoggController());
  final myController = TextEditingController();

  List<DataColumn> _createColumns() {
    var labels = ["Navn", "Reps", "Vekt", ""];
    List<DataColumn> columns = [];
    labels.forEach((label) => columns.add(DataColumn(
          label: Text(label),
        )));
    return columns;
  }

  Exercise getExerciseByName(String name) =>
      controller.exercises.firstWhere((exercise) => exercise.name == name);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: TextField(
                      controller:
                          controller.ovelseNavnTextEditingController.value,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Navn på øvelsen',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 50,
                    child: TextField(
                      controller: controller.repsEditingController.value,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Reps',
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    child: TextField(
                      controller: controller.vektEditingController.value,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Vekt',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: controller.addExcersice,
                  child: Text("Legg til"),
                ),
              ),
              DataTable(
                columns: _createColumns(),
                rows: [
                  for (var i = 0; i < controller.exercises.length; i++)
                    DataRow(
                      cells: [
                        DataCell(
                          Text(controller.exercises[i].name),
                        ),
                        DataCell(
                          Text(controller.exercises[i].reps.toString()),
                        ),
                        DataCell(
                          Text(controller.exercises[i].weight.toString()),
                        ),
                        DataCell(
                          IconButton(
                              iconSize: 20,
                              icon: Icon(Icons.do_disturb_on_outlined),
                              onPressed: () => {
                                    controller.exercises
                                        .remove(controller.exercises[i])
                                  }),
                        )
                      ],
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
