import 'package:api/handmodel_from_map/model.dart';
import 'package:api/handmodel_from_map/services.dart';
import 'package:flutter/material.dart';

class frommap extends StatefulWidget {
  const frommap({super.key});

  @override
  State<frommap> createState() => _frommapState();
}

class _frommapState extends State<frommap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserModel>?>(
        future: UserServices().fetchDataUsingFromMap(1),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data != null && snapshot.data!.isNotEmpty) {
            return Expanded(
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final person = snapshot.data![index];
                  return ListTile(
                    leading: Text('${person.first}'),
                  );
                },
              ),
            );
          } else {
            return Center(child: Text('No data available.'));
          }
        },
      )
    );
  }
}
