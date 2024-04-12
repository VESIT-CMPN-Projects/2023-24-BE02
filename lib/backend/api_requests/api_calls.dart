import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetTemperatureCall {
  static Future<ApiCallResponse> call({
    String? lat = '19.175547',
    String? lon = '72.972099',
    String? openweathermapApiKey = '684801857014478630501eb36e38614c',
    String? iconImage = 'http://openweathermap.org/img/w/[WeatherIcon].png',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Temperature',
      apiUrl:
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$openweathermapApiKey&units=metric',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Lat': lat,
        'Lon': lon,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? currentTemp(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.main.temp''',
      ));
  static String? weatherIcon(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.weather[:].icon''',
      ));
  static dynamic weatherConditionName(dynamic response) => getJsonField(
        response,
        r'''$.weather[:].main''',
      );
}

class TestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Test',
      apiUrl:
          'https://test-9ce55-default-rtdb.asia-southeast1.firebasedatabase.app/server/day-Japneet',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MlmodelCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? csv,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mlmodel',
      apiUrl: '20.244.104.179:8080/behavior',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'csv_upload': csv,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
