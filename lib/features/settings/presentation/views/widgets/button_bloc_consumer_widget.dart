import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';

class ButtonBlocConsumerWidget<C extends StateStreamable<S>, S>
    extends StatelessWidget {
  final String successMessage;
  final String buttonText;
  final VoidCallback onValidSubmit;
  final GlobalKey<FormState> formKey;
  final Widget? loadingChild;

  const ButtonBlocConsumerWidget({
    super.key,
    required this.successMessage,
    required this.buttonText,
    required this.onValidSubmit,
    required this.formKey,
    this.loadingChild = const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<C, S>(
      listener: (context, state) {
        if (state.toString().contains('Success')) {
          customSnackBarMethod(context, successMessage);
        } else if (state.toString().contains('Error')) {
          customSnackBarMethod(context, 'There was an error');
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: buttonText,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              onValidSubmit();
            }
          },
          child: state.toString().contains('Loading') ? loadingChild : null,
        );
      },
    );
  }
}
