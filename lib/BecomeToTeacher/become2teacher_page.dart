// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/video_introduction.dart';
import 'package:lettutorapp/Widget/complete_profile.dart';
import 'package:lettutorapp/router.dart';

class BecomeToTeacherPage extends StatelessWidget {
  const BecomeToTeacherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BecomeToTeacherScreen(),
      ),
    );
  }
}

class BecomeToTeacherScreen extends StatefulWidget {
  const BecomeToTeacherScreen({Key? key}) : super(key: key);

  @override
  _BecomeToTeacherScreenState createState() => _BecomeToTeacherScreenState();
}

class _BecomeToTeacherScreenState extends State<BecomeToTeacherScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      steps: getStep(),
      currentStep: currentStep,
      onStepContinue: () {
        final lastStep = currentStep == getStep().length - 1;
        if (lastStep) {
          // ignore: avoid_print
          print('complete');
        } else {
          setState(() => currentStep += 1);
        }
      },
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel:
          currentStep == 0 ? null : () => setState(() => currentStep -= 1),
      controlsBuilder: (context, {onStepCancel, onStepContinue}) {
        return Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
              if (currentStep != 0 && currentStep < 2)
                Expanded(
                  child: ElevatedButton(
                      child: const Text('Previous'),
                      onPressed: onStepCancel,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                ),
              const SizedBox(
                width: 12,
              ),
              currentStep >= 2
                  ? Expanded(
                      child: ElevatedButton(
                          child: const Text('Back Home'),
                          onPressed: () {
                            Navigator.of(context).popAndPushNamed(Routers.Home);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          )),
                    )
                  : Expanded(
                      child: ElevatedButton(
                          child: const Text('Next'),
                          onPressed: onStepContinue,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          )),
                    ),
            ],
          ),
        );
      },
    );
  }

  List<Step> getStep() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: const Text('Profile'),
          content: Container(child: const ProfileToTeacher()),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: const Text('Video'),
          content: Container(child: const VideoIntroduction()),
        ),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: const Text('Approval'),
          content: Container(
            child: Column(
              children: const [
                SizedBox(
                  height: 40,
                ),
                Image(image: AssetImage('assets/images/congratulation.png')),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'You have done all the steps',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Please, wait for the operator\'s approval',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ];
}
