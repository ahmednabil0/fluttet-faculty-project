import 'package:flutter/material.dart';
import 'package:flutter_fac_pro/cities.dart';
import 'package:flutter_fac_pro/db.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text(
          'Flutter Project',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: governates.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CitesPage(
                        id: governates[index]["id"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: index.isEven ? Colors.amber[100] : Colors.red[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    '${governates[index]["governorate_name_en"]} / ${governates[index]["governorate_name_ar"]}',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
