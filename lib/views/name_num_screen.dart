import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixlogicsget/data/helper/app_size.dart';
import 'package:sixlogicsget/utilities/font_sizes.dart';

import '../controllers/name_num_controller.dart';
import 'detail_numb_screen.dart';

class NameNumberListScreen extends StatelessWidget {
  NameNumberListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Name List'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GetBuilder<NameNumberController>(
          id: 'listView',
          builder: (_) {
            return ListView.builder(
              itemCount: _.nameNumberList.length,
              itemBuilder: (context, index) {
                final item = _.nameNumberList[index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(item.name, style: FontSize.txtOut20_600),
                    subtitle: Text('Number: ${item.number}', style: FontSize.txtOut16_400),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NameNumberDetailScreen(item, _),
                        ),
                      );
                    },
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _.incrementNumber(item);
                      },
                      color: Colors.blue,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
