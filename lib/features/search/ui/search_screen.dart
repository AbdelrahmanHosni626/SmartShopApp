import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/features/profile/ui/widgets/app_bar_title.dart';
import 'package:smart_app/features/search/ui/widgets/search_grid_view_builder_item.dart';
import 'package:smart_app/generated/assets.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(Assets.bagShoppingCart),
        title: const AppBarTitle(
          title: 'Search',
          fontSize: 25,
        ),
      ),
      body: Column(
        children: [
          verticalSpace(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              controller: searchController,
              onChanged: (value) {},
              onSubmitted: (value) {
                searchController.clear();
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    searchController.clear();
                  },
                ),
              ),
            ),
          ),
          verticalSpace(10),
          Expanded(
            child: DynamicHeightGridView(
              itemCount: 20,
              builder: (context, index) => const SearchGridViewBuilderItem(),
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
