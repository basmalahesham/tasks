import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:optical/ass5/news_app/views/widgets/custom_list_view.dart';
import 'package:optical/ass5/news_app/views/widgets/new_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'News Today',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text(
              DateFormat.yMMMd().format(DateTime.now()),
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            const NewListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
