
  static Future<compute_route_model.DirectionsComputeRouteModel?>?
      directionsComputeRoute({
    required compute_request.ComputeRoutesRequest request
}) async {
    try {
      var headers = {
        'accept': '*/*',
        'accept-language': 'en-US,en;q=0.9,ar;q=0.8',
        'content-type': 'application/json',
        'origin': 'https://developers-dot-devsite-v2-prod.appspot.com',
        'priority': 'u=1, i',
        'referer': 'https://developers-dot-devsite-v2-prod.appspot.com/',
        'sec-ch-ua':
            '"Chromium";v="128", "Not;A=Brand";v="24", "Google Chrome";v="128"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-platform': '"macOS"',
        'sec-fetch-dest': 'empty',
        'sec-fetch-mode': 'cors',
        'sec-fetch-site': 'cross-site',
        'user-agent':
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
        'x-client-data':
            'CKO1yQEIhLbJAQiktskBCKmdygEIhPvKAQiWocsBCJv+zAEIhqDNAQjY/M0BCNe9zgEI/8HOARj2yc0B',
        'x-goog-api-key': 'AIzaSyAOWd855Jru-vGD_bVJqc6Qr-n8VpX0XsA',
        'x-goog-fieldmask': '*'
      };
AppLogger.it.logDeveloper("${jsonEncode(request.toJson())}");
      var dio = getIt<Dio>();
      var response = await dio.request(
        'https://routes.googleapis.com/directions/v2:computeRoutes',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: request.toJson(),
      );

      if (response.statusCode == 200) {
        return compute_route_model.DirectionsComputeRouteModel.fromJson(
            response.data);
      } else {
        AppLogger.it.logError(response.statusMessage.toString());
      }
    } on DioException catch (e) {
      AppLogger.it.logError(e.message.toString());
    } catch (e) {
      AppLogger.it.logError(e.toString());
    }
    return null;
  }



////////////


