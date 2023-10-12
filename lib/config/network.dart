// network_config.dart

enum RequestMethod { get, post, put, delete } // 定義請求方法

const int connectTimeout = 5000; // 連接超時時間（毫秒）
const int receiveTimeout = 5000; // 接收超時時間（毫秒）
const int maxRetries = 3; // 最大重試次數

Map<String, String> headers({
  String? userAgent,
  String? firebaseToken,
}) {
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  if (userAgent != null && userAgent.isNotEmpty) {
    headers['User-Agent'] = userAgent;
  }

  if (firebaseToken != null && firebaseToken.isNotEmpty) {
    headers['Bearer'] = firebaseToken;
  }

  return headers;
}

Map<String, dynamic> dioOptions({
  String? baseUrl, // 增加 baseUrl 参数
  String? userAgent, // 增加 userAgent 参数
  String? firebaseToken, // 增加 firebaseToken 参数
}) {
  return {
    'baseUrl': baseUrl,
    'connectTimeout': connectTimeout,
    'receiveTimeout': receiveTimeout,
    'headers': headers(userAgent: userAgent, firebaseToken: firebaseToken),
    'maxRetries': maxRetries, // 添加最大重試次數選項
  };
}

const Map<String, dynamic> additionalOptions = {
  'method': RequestMethod.get, // 默認請求方法為GET，可以根據需要修改
  // 可以添加其他自訂配置選項，根據需要
};

Map<String, dynamic> getNetworkConfig(String baseUrl,
    {String? userAgent, String? firebaseToken}) {
  return {
    ...dioOptions(
        baseUrl: baseUrl, userAgent: userAgent, firebaseToken: firebaseToken),
    ...additionalOptions,
  };
}
