import 'package:hells/src/data/network/network_api_services.dart';
import 'package:hells/src/res/app_urls.dart';
 
class AuthRepository {
  final NetworkApiServices _network = NetworkApiServices();
  Future<dynamic> apiLogin(dynamic data) async {
    try {
      final response = await _network.getPostApiResponse(AppUrls.loginEndPoint, data);
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }


 Future<dynamic> apiRegister(dynamic data) async {
    try {
      final response = await _network.getPostApiResponseWithToken(AppUrls.loginEndPoint, data);
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }


  Future<dynamic> signUp(dynamic data) async {
    try {
      final response =
          await _network.getPostApiResponse(AppUrls.registerEndPoint, data);
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }
}



// ! Testing Purposes

// void main(List<String> args) async {
//   AuthRepository auth = AuthRepository();
//   final data = await auth.apiLogin(); 
//   print(data["data"][1]["year"]);
// }
