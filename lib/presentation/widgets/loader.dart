import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Bloc class -> Bloc Selector
class Loader<B extends StateStreamable<S>, S> extends StatelessWidget {
  final BlocWidgetSelector<S, bool> selector;

  const Loader({super.key, required this.selector});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, bool>(
      selector: selector,
      builder: (context, loading) => Visibility(
          visible: loading,
          child: const Column(
            children: [
              SizedBox(height: 30),
              Center(
                child: CircularProgressIndicator(
                  color: mainGreen,
                ),
              ),
            ],
          )),
    );
  }
}
