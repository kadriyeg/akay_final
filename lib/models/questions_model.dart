//creating a question model here

class Question{
  final String id;
  final String title;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
   final Map<String, bool>options;


  Question({
    required this.id,
    required this.title,
    required this.options,
  });
  
  @override
  String toString() {
   return 'Question(id: $title, options: $options)';
  }
}