class TaskData{
 static List<Task> tasks = [
    Task(title: "Meeting Concept",dateTime: DateTime.now(),isDone: true),
    Task(title: "Information Architectre",dateTime: DateTime.now(),isDone: true),
    Task(title: "Monitoring Project",dateTime: DateTime.now(),isDone: true),
    Task(title: "Daily Standup",dateTime: DateTime.now(),isDone: true),
  ];
}


class Task{
  String title;
  DateTime dateTime;
  bool isDone;
  Task({required this.title,required this.dateTime,required this.isDone});
}