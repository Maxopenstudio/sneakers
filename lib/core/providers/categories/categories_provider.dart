import 'package:get/get_connect/connect.dart';

class CategoriesProvider extends GetConnect {
  /*
  Future<List<Category>> getDateResponse() async {
    final response = await post("${ProvidersConstants.baseUrl}/api/constants/aavegDate/", {});
    if (response.statusCode == 200) {
      final date = dateModalFromJson(response.bodyString!);
      storage.storeDate(response.bodyString!);
      return date;
    } else {
      return Future.error("Error ocuured in fetching scores. Try agin!!");
    }
  }
   */
}
