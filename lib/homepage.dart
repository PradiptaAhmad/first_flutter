import 'package:flutter/material.dart';
import 'package:latihan_1/data.dart'; // Assuming data.dart contains the 'data' class

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<data>? DataSiswa = [];

  @override
  void initState() {
    super.initState();
      data fatih = new data("Fatih Abdurrahman", "fatih@gmail.com");
      data abid  = new data ("Abid Rahman", "abid@gmail.com");
      data adit  = new data ("Adit Baskoro", "adit@gmail.com");
      data dapin = new data ("Dapin Pradana", "dapin@gmail.com");
      data dude  = new data ("Dude Duderson", "dude@gmail.com");
    DataSiswa?.add(fatih);
    DataSiswa?.add(abid);
    DataSiswa?.add(adit);
    DataSiswa?.add(dapin);
    DataSiswa?.add(dude);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Center(
        child: Container(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: DataSiswa?.length,
            itemBuilder: (BuildContext context, int index) {
              final student = DataSiswa?[index];
              return Container(
                height: 50,
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DataSiswa![index].nama),
                    Text(DataSiswa![index].email)
                  ],
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
