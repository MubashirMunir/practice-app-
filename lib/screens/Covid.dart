import 'package:example/modules/stateServicesmodule.dart';
import 'package:example/modules/covidmodule.dart';
import 'package:example/screens/srchscreencovid.dart';
import 'package:example/widgets/covidwidget.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Covid extends StatefulWidget {
  const Covid({Key? key}) : super(key: key);
  @override
  State<Covid> createState() => _CovidState();
}
class _CovidState extends State<Covid> with SingleTickerProviderStateMixin{
    // AnimationController controller = AnimationController(vsync: this
    //   ,duration: Duration(seconds: 3),);
   final colorslist = <Color> [
  const  Color(0xff4285f4),
    const Color(0xff1aa260),
    const  Color(0xffde5246)
  ];
   @override
  Widget build(BuildContext context) {
     StateService stateService = StateService();
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(child:Column(
          children: [
            const Text("World Statstics of COVID-19",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height * .04,),
           FutureBuilder(
               future:stateService.fetchData(),
               builder:(context ,AsyncSnapshot<ApiModule> snapshot ){
               if(snapshot.hasData){
                 return
                   const Center(child: Padding(
                   padding:  EdgeInsets.only(top: 318.0),
                   child: CircularProgressIndicator(strokeWidth: 3,color: Colors.teal,),
                 ));
               }
                else{
                     return
              Column(children: [
                PieChart(
                  dataMap: {
                  "Total": 12,
                  "Recovered":51,
                  "Deaths":double.parse(snapshot.data!.deaths!.toString()),
                },
                  chartValuesOptions: const ChartValuesOptions(showChartValuesInPercentage: true),
                  chartType: ChartType.ring,
                  animationDuration:const Duration(seconds: 2),
                  colorList: colorslist,
                  chartRadius: MediaQuery.of(context).size.height *.19,
                  legendOptions:const LegendOptions(legendShape: BoxShape.circle,legendPosition: LegendPosition.left),
                ),
               const SizedBox(height: 30),
                Card(
                    color: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.black,
                    child:Column(
                        children: [
                          covid19(text: "  Total", value: (snapshot.data!.cases).toString()),
                          const Divider(thickness: .4),
                          covid19(text: "  Recovered", value: (snapshot.data!.recovered.toString())),
                          const     Divider(thickness: .4),
                          covid19(text: "  Deaths", value: (snapshot.data!.deaths.toString())),
                          const Divider(thickness: .4),
                          covid19(text: "  Active", value: (snapshot.data!.active.toString())),
                          const     Divider(thickness: .4),
                          covid19(text: "  Critical", value: (snapshot.data!.critical.toString())),
                          const Divider(thickness: .4),
                          covid19(text: "  TodayDeaths", value: (snapshot.data!.todayDeaths.toString())),
                          const     Divider(thickness: .4),
                          covid19(text: "  Today Recovered", value: (snapshot.data!.todayRecovered.toString())),
                          const Divider(thickness: .4),
                          covid19(text: "  Today Cases", value: (snapshot.data!.todayCases.toString())),
                        ])),
               const SizedBox(height: 30,
                ),
                InkWell(
                  onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const covidstate())),
                  child: Container(
                    width: MediaQuery.of(context).size.width *1,
                    height: 40,
                    decoration:const BoxDecoration(
                        color: Color(0xff1aa260),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child:const Center(child: Text("Track Country",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                )
              ]);
               }
            }),
          ]),
      ),
      ),
    );
  }
}
