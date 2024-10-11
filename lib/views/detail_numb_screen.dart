import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixlogicsget/data/helper/app_size.dart';
import 'package:sixlogicsget/utilities/extensions.dart';
import 'package:sixlogicsget/utilities/font_sizes.dart';

import '../controllers/name_num_controller.dart';
import '../models/name_num_model.dart';

class NameNumberDetailScreen extends StatelessWidget {
  final NameNumberEntry nameNumber;
  final NameNumberController controller;

  const NameNumberDetailScreen(this.nameNumber, this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameNumber.name),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GetBuilder<NameNumberController>(
          id: 'detail',
          builder: (_) {
            return Container(
              height: AppSizes.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Name: ${nameNumber.name}', style: FontSize.txtOut24_600),
                  Dimensions.PADDING_SIZE_16.spaceY,
                  Text('Number: ${nameNumber.number}', style: FontSize.txtOut20_400),
                  Dimensions.PADDING_SIZE_32.spaceY,
                  ElevatedButton(
                    onPressed: () {
                      controller.incrementNumber(nameNumber);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.PADDING_SIZE_32,
                          vertical: Dimensions.PADDING_SIZE_16),
                      textStyle: FontSize.txtOut18_400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Increment'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
