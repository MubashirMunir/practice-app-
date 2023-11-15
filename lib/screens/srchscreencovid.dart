import 'package:example/modules/stateServicesmodule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class covidstate extends StatefulWidget {
  const covidstate({Key? key}) : super(key: key);
  State<covidstate> createState() => _covidstateState();
}

TextEditingController text = TextEditingController();

class _covidstateState extends State<covidstate> {
  Widget build(BuildContext context) {
    StateService stateService = StateService();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 5),
                        blurRadius: 5)
                  ],
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.search)),
                      hintText: "Search Country",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ))),
            )),
        Expanded(
          child: FutureBuilder(
              future: stateService.countrylistapi(),
              builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  ));
                } else {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        String name = snapshot.data![index]['country'];
                        Column(children: [
                          ListTile(
                            leading: Image(
                                height: 50,
                                width: 50,
                                image: NetworkImage(snapshot.data![index]
                                    ['countryInfo']['flag'])),
                            title: Text(snapshot.data![index]['country']),
                            subtitle:
                                Text(snapshot.data![index]['cases'].toString()),
                          ),
                        ]);
                        if (text.text.isEmpty) {
                          return Column(children: [
                            ListTile(
                              leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(snapshot.data![index]
                                      ['countryInfo']['flag'])),
                              title: Text(snapshot.data![index]['country']),
                              subtitle: Text(
                                  snapshot.data![index]['cases'].toString()),
                            ),
                          ]);
                        } else if (name
                            .toLowerCase()
                            .contains(text.text.toLowerCase())) {
                          Column(children: [
                            ListTile(
                              leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(snapshot.data![index]
                                      ['countryInfo']['flag'])),
                              title: Text(snapshot.data![index]['country']),
                              subtitle: Text(
                                  snapshot.data![index]['cases'].toString()),
                              trailing:
                                  Text(snapshot.data![index]['todayDeaths']),
                            ),
                          ]);
                        } else {
                          Container(color: Colors.red);
                        }
                      });
                }
              }),
        )
      ]),
    ));
  }
}
