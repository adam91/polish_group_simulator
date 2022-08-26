import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlagBoxWidget extends StatelessWidget {
  const FlagBoxWidget({Key? key, required this.flagname}) : super(key: key);

  final String flagname;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 140,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 45,
          height: 30,
          child: CachedNetworkImage(
            imageUrl: flagname,
          ),
        ),
      ),
    );
  }
}

const String wiki = 'https://upload.wikimedia.org/wikipedia/';

const keys = ['points', 'goalsdifference', 'goalsfor'];

var flags = {
  'poland':
      ('${wiki}en/thumb/1/12/Flag_of_Poland.svg/125px-Flag_of_Poland.svg.png'),
  'mexico':
      '${wiki}commons/thumb/f/fc/Flag_of_Mexico.svg/125px-Flag_of_Mexico.svg.png',
  'argentina':
      '${wiki}commons/thumb/1/1a/Flag_of_Argentina.svg/125px-Flag_of_Argentina.svg.png',
  'saudiarabia':
      '${wiki}commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/125px-Flag_of_Saudi_Arabia.svg.png',
};

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.countryShortcut, required this.controllername});

  final String countryShortcut;
  final TextEditingController controllername;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: countryShortcut,
          counterText: "",
        ),
        maxLength: 2,
        controller: controllername,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
