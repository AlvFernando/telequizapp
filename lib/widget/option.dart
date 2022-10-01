import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final TextEditingController optionController;
  final bool value;
  final void Function() onTap;
  final String title;
  final bool errorValue;

  const Option({
    Key? key,
    required this.optionController,
    required this.value,
    required this.onTap,
    required this.title,
    required this.errorValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 305,
          child: TextField(
            controller: optionController,
            decoration: InputDecoration(
              hintText: title,
              errorText: errorValue ? "Please input $title field!" : null,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            maxLines: null,
          ),
        ),
        const SizedBox(width: 10,),
        //custom widget for checkbox
        GestureDetector(
          onTap: onTap,
          child: value==true
              ? const Icon(Icons.check_box_rounded)
              : const Icon(Icons.check_box_outline_blank_rounded),
        )
      ],
    );
  }
}