import 'datamodel.dart';
import 'dart:io';

class Employees extends datamodel {
  Employees(
      {var name,
      var age,
      var phone,
      var salary,
      var section,
      var isattend = false})
      : super(
            name: name,
            age: age,
            phone: phone,
            salary: salary,
            section: section,
            isattend: isattend);

  void Attendance() {
    if (isattend == false) {
      isattend = true;
    } else {
      isattend = false;
    }
  }

  void AddEmp(emplist, name, age, phone, salary, section) {
    emplist.add(new Employees(
        name: name, age: age, phone: phone, salary: salary, section: section));
  }

  void List_of_tasks(tasks) {
    tasks.forEach((k, v) => print('${k}: ${v}'));
  }

  void Deliver_tasks() {}
  void Show_tasks() {}
}
