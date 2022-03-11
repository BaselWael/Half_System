import 'datamodel.dart';
import 'tasks.dart';

class Managers extends datamodel {
  var task;
  Managers(
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

  number_of_emp(var mylist) {
    var count = 0;
    mylist.forEach((k, v) => count++);
    return count;
  }

  void AddManager(managerlist, name, age, phone, salary, section) {
    managerlist.add(new Managers(
        name: name, age: age, phone: phone, salary: salary, section: section));
  }

  void List_of_emp(var mylist) {
    mylist.forEach((k, v) => print('${k}: ${v}'));
  }

  void Add_task(taskslist, name, task) {
    taskslist.add(new tasks(name, task));
  }

  void show_all() {}
}
