import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper{
// the address uri
final String urlKey = 'api_key=165c7ec8b20c13867fca2981dce6b4b4';
final String urlBase = 'https://api.themoviedb.org/3/movie';
final String urlUpcoming = '/upcoming?';
final String urlLanguage = '&language=en-US';

//method for obtaining 20 movies upcoming movies

Future<String> getUpcoming () async {
//creating the url for the connection

final String upcoming = urlBase + urlUpcoming + urlLanguage;

//using the http library to create connection to the url

http.Response result = await http.get(upcoming);

// read the response 
if(result.statusCode == HttpStatus.ok) {
  String responseBody = result.body;
  return responseBody;
}
else {
  return null;
}
}




}
