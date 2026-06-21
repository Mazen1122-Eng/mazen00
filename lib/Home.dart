import 'package:flutter/material.dart';

class Home extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: const Text("My Home"),
        leading:  IconButton(
    icon: Icon(Icons.menu),
    onPressed: () {
      print("Menu Pressed");
    },
  ),
      ),
      body: Center(
        child: 
        Column(
        children: [
          Text("Wednesday, June 20"),
          SizedBox(height: 8),
          Text(
            "Good evening, Rebecca",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("You have 3 rooms active and 12 devices running right now"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.thermostat_outlined),
                        Text("22°C"),
                        Text("inside")
                      ],
                    ),
                  ),
                ),
                   Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.wb_sunny_outlined),
                        Text("18°C"),
                        Text("outside")
                      ],
                    ),
                  ),
                ),
                 Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.water_drop_outlined),
                        Text("58%"),
                        Text("Hmidity")
                      ],
                    ),
                  ),
                ),
          ],
          ),
          Text("Rooms",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
           ListTile(
              leading: CircleAvatar(
                child: Image.network('https://thumbs.dreamstime.com/b/modern-house-interior-living-room-kitchen-black-green-colors-modern-house-interior-living-room-kitchen-141550377.jpg' ),
              ),
              title: Text("Living Room"),
              subtitle: Text("4 devices 22°C"),
              trailing: Icon(Icons.arrow_forward_ios),
            ), 
             ListTile(
              leading: CircleAvatar(
                child: Image.network(
                  'https://thumbs.dreamstime.com/b/modern-house-interior-living-room-kitchen-black-green-colors-modern-house-interior-living-room-kitchen-141550377.jpg',)
              ),
              title: Text("Bedroom"),
              subtitle: Text("3 devices 20°C"),
              trailing: Icon(Icons.arrow_forward_ios),
            ), 
             ListTile(
              leading: CircleAvatar(
                child: Image.network(
                  'https://thumbs.dreamstime.com/b/modern-house-interior-living-room-kitchen-black-green-colors-modern-house-interior-living-room-kitchen-141550377.jpg',)
              ),
              title: Text("Kitchen"),
              subtitle: Text("5 devices 24°C"),
              trailing: Icon(Icons.arrow_forward_ios),
            ), 
        ],
      ),
      ),
       bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.grey,
       unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}