import 'dart:io';
import 'Employees.dart';
import 'Managers.dart';
import 'tasks.dart';

void main(List<String> arguments) {
  Managers manager = new Managers();
  Employees emp = new Employees();

  var managers_data = [];

  var emp_data = [];
  var tasks = [];
  print("what do u want to do");
  print(
      "[1] add emp , [2] add manager , [3]add task to emp , [4]show all tasks");
  String ask = stdin.readLineSync() as String;
  if (ask == 1) {
    String name = stdin.readLineSync() as String;
    String age = stdin.readLineSync() as String;
    String phone = stdin.readLineSync() as String;
    String salary = stdin.readLineSync() as String;
    String section = stdin.readLineSync() as String;
    emp.AddEmp(emp_data, name, age, phone, salary, section);
  } else if (ask == 2) {
    String name = stdin.readLineSync() as String;
    String age = stdin.readLineSync() as String;
    String phone = stdin.readLineSync() as String;
    String salary = stdin.readLineSync() as String;
    String section = stdin.readLineSync() as String;
    manager.AddManager(managers_data, name, age, phone, salary, section);
  } else if (ask == 3) {
    String name = stdin.readLineSync() as String;
    String task = stdin.readLineSync() as String;
    manager.Add_task(tasks, name, task);
  } else if (ask == 4) {
    emp.List_of_tasks(tasks);
  }
}
