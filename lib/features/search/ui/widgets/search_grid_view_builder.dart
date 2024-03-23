import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/features/search/ui/widgets/search_grid_view_builder_item.dart';

class SearchGridViewBuilder extends StatelessWidget {
  const SearchGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DynamicHeightGridView(
        itemCount: 20,
        builder: (context, index) => const SearchGridViewBuilderItem(),
        crossAxisCount: 2,
      ),
    );
  }
}
