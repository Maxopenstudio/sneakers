/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_last_search_list.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_last_seen_list.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_text_field.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SearchTextField(),
        SearchLastSeenList(),
        SearchLastSearchList(),
      ],
    );
  }
}
