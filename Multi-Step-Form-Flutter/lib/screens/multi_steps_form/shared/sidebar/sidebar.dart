import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_step_form/constants/steps.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/presentation/bloc/current_step_index/current_step_index_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/sidebar/widgets/step_circle.dart';
import 'package:multi_step_form/utils/screen_configuration.dart';
import 'package:multi_step_form/utils/styles.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  Widget _mobileLayout() {
    return Container();
  }

  Widget _webLayout() {
    return BlocBuilder<CurrentStepIndexBloc, CurrentStepIndexState>(
        builder: (context, state) {
      return SizedBox(
        width: Dimensions.web.sideBarWidth,
        child: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              "assets/images/bg-sidebar-desktop.svg",
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.all(Dimensions.web.paddingSideBar),
              child: ListView(
                children: steps.map((step) {
                  int index = steps.indexOf(step);
                  bool isSelected = state.currentStepIndex == index;

                  return ListTile(
                    leading: StepCircle(
                      step: index + 1,
                      isSelected: isSelected,
                    ),
                    minLeadingWidth: 10,
                    title: Padding(
                      padding: EdgeInsets.only(
                          bottom: Dimensions.web.marginBottomTitle),
                      child: Text(
                        "STEP ${index + 1}",
                        style: TextStyle(
                          fontSize: Style.fontSize.paragraph,
                          color: Style.color.pastelBlue,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      step.title,
                      style: TextStyle(
                        fontSize: Style.fontSize.paragraph,
                        fontWeight: FontWeight.w500,
                        letterSpacing: Style.fontSize.sidebarSpacing,
                        color: Style.color.white,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget layout = _webLayout();
    if (ScreenConfiguration.isMobileLayout(context)) {
      layout = _mobileLayout();
    }

    return layout;
  }
}
