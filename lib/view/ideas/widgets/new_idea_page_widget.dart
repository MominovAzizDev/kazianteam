import 'package:flutter/material.dart';

class NewIdeaPageWidget extends StatefulWidget {
  @override
  State<NewIdeaPageWidget> createState() => _NewIdeaPageWidgetState();
}

class _NewIdeaPageWidgetState extends State<NewIdeaPageWidget> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit New Idea"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Idea Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              hint: Text("Select a category"),
              items: ["Technology", "HR", "Finance", "Other"]
                  .map((cat) => DropdownMenuItem(
                        value: cat,
                        child: Text(cat),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedCategory = val;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (_titleController.text.isNotEmpty &&
                          _descriptionController.text.isNotEmpty &&
                          _selectedCategory != null) {
                        Navigator.pop(context, {
                          "title": _titleController.text,
                          "description": _descriptionController.text,
                          "author": "You",
                          "date": DateTime.now().toString().split(" ").first,
                          "status": "Pending",
                          "statusColor": Colors.grey.shade300,
                          "likes": 0,
                          "dislikes": 0,
                          "comments": 0,
                          "category": _selectedCategory!,
                        });
                      }
                    },
                    icon: Icon(Icons.send),
                    label: Text("Submit Idea"),
                  ),
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
