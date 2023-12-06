import 'package:flutter/material.dart';
import 'package:flutter_fac_pro/cities.dart';
import 'package:flutter_fac_pro/db.dart';
import 'package:flutter_fac_pro/sevices_num.dart';

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
            itemCount: governates.length + 1,
            itemBuilder: (BuildContext ctx, index) {
              return index != governates.length
                  ? InkWell(
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
                            color: index.isEven
                                ? Colors.amber[100]
                                : Colors.red[100],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_work_outlined,
                              color: index.isOdd
                                  ? Colors.white54
                                  : Colors.red[200],
                              size: 50,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${governates[index]["governorate_name_en"]} / ${governates[index]["governorate_name_ar"]}',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: index.isEven
                                      ? Colors.black45
                                      : Colors.red[400],
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ))
                  : InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ServicesNumbers(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.red[300],
                            borderRadius: BorderRadius.circular(150)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.ads_click,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Services Numbers',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    );
            }),
      ),
    );
  }
}
