import 'dart:convert';
import 'package:example/modules/covidmodule.dart';
import '../appurl/Apis.dart';
import 'package:http/http.dart' as http;

class StateService {
  Future<ApiModule> fetchData () async {
    final response = await http.get(Uri.parse(Appurls.worldStateApi));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      print(data);
        return ApiModule.fromJson(data);
    }
    else{
      throw Exception('error');
    }}

  var data;
  Future<List<dynamic>> countrylistapi () async {
    final response = await http.get(Uri.parse(Appurls.countryListApi));

    if(response.statusCode == 200){
      data=jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('error');
    }
  }


}


