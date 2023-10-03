import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          border: InputBorder.none,
          hintText: d!.aramaYazi,
        ),
      ),
    );
  }
}
