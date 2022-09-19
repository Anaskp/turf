import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/info_screen.dart';
import 'package:hotel_booking/theme/color.dart';
import 'package:hotel_booking/utils/data.dart';
import 'package:hotel_booking/widgets/city_item.dart';
import 'package:hotel_booking/widgets/feature_item.dart';
import 'package:hotel_booking/widgets/notification_box.dart';
import 'package:hotel_booking/widgets/recommend_item.dart';
import 'package:geocoding/geocoding.dart' as geocode;
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _getCurrentPosition();
    super.initState();
  }

  LocationData? _locationData;

  String? _currentAddress;
  LocationData? currentLocation;
  Location location = Location();
  double? lat;
  double? long;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            pinned: true,
            snap: true,
            floating: true,
            title: getAppBar(),
          ),
          SliverToBoxAdapter(
            child: buildBody(),
          ),
        ],
      ),
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              InkWell(
                onTap: _getCurrentPosition,
                child: Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                      color: labelColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      _currentAddress ?? 'Get location',
                      style: TextStyle(
                        color: darker,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          NotificationBox(
            notifiedNumber: 1,
            onTap: () {},
          )
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: Text(
                "Find and Book",
                style: TextStyle(
                  color: labelColor,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text(
                "The Best Turf Around You",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ),
            getCities(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text(
                "Featured",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            getFeature(),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: darker),
                  ),
                ],
              ),
            ),
            getRecommend(),
          ],
        ),
      ),
    );
  }

  getFeature() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        disableCenter: true,
        viewportFraction: .75,
      ),
      items: List.generate(
        features.length,
        (index) => FeatureItem(
          data: features[index],
          onTapFavorite: () {
            setState(() {
              features[index]["is_favorited"] =
                  !features[index]["is_favorited"];
            });
          },
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => InfoScreen(
                      data: features[index],
                    )));
          },
        ),
      ),
    );
  }

  getRecommend() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          recommends.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RecommendItem(
              data: recommends[index],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InfoScreen(
                          data: recommends[index],
                        )));
              },
            ),
          ),
        ),
      ),
    );
  }

  getCities() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          cities.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CityItem(
              data: cities[index],
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;

    _locationData = await location.getLocation();
    lat = _locationData!.latitude;
    long = _locationData!.longitude;

    _getAddressFromLatLng(_locationData!.latitude, _locationData!.longitude);
  }

  Future<void> _getAddressFromLatLng(double? lat, double? lon) async {
    List<geocode.Placemark> placemark =
        await geocode.placemarkFromCoordinates(lat!, lon!);

    setState(() {
      _currentAddress =
          '${placemark[0].street} ${placemark[0].subLocality} ${placemark[0].locality}';
    });
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    PermissionStatus permission;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permission = await location.hasPermission();
    if (permission == PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission == PermissionStatus.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Location permissions are denied')));

        return false;
      }
    }
    if (permission == PermissionStatus.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.'),
        ),
      );

      return false;
    }
    return true;
  }
}
