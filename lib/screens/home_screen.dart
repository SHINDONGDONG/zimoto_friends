import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            title: const Text("地友"),
            centerTitle: false,
            actions: const [
              Icon(Icons.access_alarm_sharp),
            ],
            backgroundColor: Colors.amber,
            expandedHeight: 100,
            // toolbarHeight: 50,
            collapsedHeight: 150,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: FlexibleSpaceBar(
                background: GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    top: 120,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (_, __) {
                    return const Icon(Icons.holiday_village);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 30,
                    crossAxisSpacing: 0,
                  ),
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    index.toString(),
                  ),
                ),
              );
            },
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) => Container(
                  color: Colors.orange[100 * (index % 9 + 1)],
                )),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5),
          ),
        ],
      ),
    );
  }
}
