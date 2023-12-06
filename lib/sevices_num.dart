import 'package:flutter/material.dart';

class ServicesNumbers extends StatelessWidget {
  const ServicesNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mylist = [
      {
        'name': 'الشرطة',
        'icn': Icons.policy,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '122',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'الاسعاف',
        'icn': Icons.medical_services_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '123',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'المطافئ',
        'icn': Icons.fire_truck_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '180',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'شرطة السياحة',
        'icn': Icons.terrain_rounded,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '126',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'شرطة المرور',
        'icn': Icons.traffic_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '128',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'طواري الكهرباء',
        'icn': Icons.electrical_services,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '121',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'طوارئ الغاز',
        'icn': Icons.fireplace_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '129',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'الساعه',
        'icn': Icons.access_time,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '150',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'مكالمات دولية',
        'icn': Icons.call,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '144',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'فواتير ارضي',
        'icn': Icons.phone_in_talk_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '177',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'السكة الحديد',
        'icn': Icons.directions_train_rounded,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '15047',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
      {
        'name': 'مكافحة الادمان',
        'icn': Icons.smoke_free_outlined,
        'ontap': () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
              '16023',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ));
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services Numbers',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(3),
                              topLeft: Radius.circular(3))),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      color: Colors.white,
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 15,
                        color: Colors.yellow[800],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(3),
                              bottomLeft: Radius.circular(3))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: mylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: mylist[index]['ontap'],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff040039).withOpacity(.15),
                                blurRadius: 99,
                              ),
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  mylist[index]['icn'],
                                  color: Colors.black.withOpacity(.6),
                                ),
                              ),
                              Text(
                                mylist[index]['name'],
                                maxLines: 4,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
