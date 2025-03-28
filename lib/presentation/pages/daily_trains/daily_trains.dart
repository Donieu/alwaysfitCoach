import 'package:alwaysfit/data/datasources/local/mocks/training_model.dart';
import 'package:alwaysfit/presentation/widgets/card_daily_train/card_daily_train_widget.dart';
import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:alwaysfit/presentation/widgets/custom_elevated_header_box/custom_elevated_header_box.dart';
import 'package:flutter/material.dart';

class DailyTrains extends StatelessWidget {
  const DailyTrains({super.key});

  @override
  Widget build(BuildContext context) {
    final mockTrainingList = TrainingModel.getMockList();
    return Scaffold(
      appBar: CustomAppBarAlwaysFit(automaticallyImplyLeading: true,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ElevatedHeaderBox(title: 'Treinos diários'),
            Column(
              children: [
                Text(
                  'Seus treinos de hoje',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Membros superiores',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: 14,
                ),
                CardDailyTrainWidget(traningList: mockTrainingList)
              ],
            )
          ]),
        ),
      ),
    );
  }
}
