import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home.dart';

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
                                builder: (context) => SlotScreen()));
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

class SlotScreen extends StatelessWidget {
  const SlotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
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
}
