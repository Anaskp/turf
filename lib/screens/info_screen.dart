import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home.dart';
import 'package:hotel_booking/screens/root_app.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Image.network(
                  data["image"],
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 15,
                  top: 15,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data["name"],
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Rating ${data["rate"]}',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Location ${data["location"]}',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nulla erat, rutrum ac nunc pharetra, congue mollis elit. Nunc at urna at eros cursus laoreet. Maecenas tempor nec lorem sit amet elementum. Aenean a augue eget diam dapibus gravida non dapibus mi. Proin ultrices dignissim lectus, vel consequat massa vestibulum iaculis. Proin a augue tempor, accumsan lorem a, ullamcorper velit. Phasellus finibus augue eu augue dictum pretium. Mauris malesuada tellus et porta feugiat. Curabitur porta enim ac nisl consectetur ultricies. Sed pellentesque cursus laoreet. Proin luctus lectus lacus, sit amet suscipit elit sollicitudin non.'),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(data["price"]),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[900]),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SlotScreen(
                                      data: data,
                                    )));
                          },
                          child: Text('Book Now'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlotScreen extends StatefulWidget {
  const SlotScreen({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  State<SlotScreen> createState() => _SlotScreenState();
}

class _SlotScreenState extends State<SlotScreen> {
  @override
  void initState() {
    getInfoo();
    super.initState();
  }

  String? name;
  String? mobile;
  var user = FirebaseAuth.instance.currentUser;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '6:00PM - 7:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('6:00PM - 7:00PM')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '7:00PM - 8:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('7:00PM - 8:00PM')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '8:00PM - 9:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('8:00PM - 9:00PM')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '9:00PM - 10:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('9:00PM - 10:00PM')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '10:00PM - 11:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('10:00PM - 11:00PM')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await FirebaseFirestore.instance
                    .collection('booking')
                    .doc(mobile)
                    .set({
                  'name': name,
                  'mobile': mobile,
                  'time': '11:00PM - 12:00PM',
                  'code': random.nextInt((1000000) - 100000).toString(),
                  'turfname': widget.data['name']
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => TicketScreen(
                              mobile: mobile,
                            )),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Turf Booked'),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300]),
                child: Center(child: Text('11:00PM - 12:00PM')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getInfoo() async {
    var data = await FirebaseFirestore.instance
        .collection('usersData')
        .doc(user!.uid)
        .get();
    setState(() {
      name = data['name'];
      mobile = data['mobile'];
    });
  }
}

class TicketScreen extends StatefulWidget {
  const TicketScreen({
    Key? key,
    required this.mobile,
  }) : super(key: key);
  final mobile;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  var user = FirebaseAuth.instance.currentUser;
  String? turfName;
  String? time;
  String? code;
  String? mobile;

  @override
  void initState() {
    getInfoo();
    getInfoo();
    getInfoo();
    getInfoo();
    super.initState();
  }

  getInfoo() async {
    var data = await FirebaseFirestore.instance
        .collection('booking')
        .doc(widget.mobile)
        .get();
    setState(() {
      turfName = data['turfname'];
      mobile = data['mobile'];
      code = data['code'];
      time = data['time'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Turf Name : ${turfName ?? 'Turf Name'}'),
            SizedBox(
              height: 10,
            ),
            Text('Time slot : ${time ?? 'timeSlot'}'),
            SizedBox(
              height: 10,
            ),
            Text('Code : ${code ?? 'code'}'),
            SizedBox(
              height: 10,
            ),
            Text('Mobile no : ${mobile ?? 'mobile'}'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => RootApp()),
                    (route) => false);
              },
              child: Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
