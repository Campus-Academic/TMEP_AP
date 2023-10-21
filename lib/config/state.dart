class PageStateInfo {
  final String stateName;
  final String explanation;
  final int errorCode;

  PageStateInfo(this.stateName, this.explanation, this.errorCode);

  static final PageStateInfo initial = PageStateInfo("initial", "初始状态", 0);
  static final PageStateInfo loading = PageStateInfo("loading", "载入中", 0);
  static final PageStateInfo loaded = PageStateInfo("loaded", "已加载", 0);
  static final PageStateInfo networkError =
      PageStateInfo("networkError", "网络错误 - 表示网络连接问题", 100);
  static final PageStateInfo serverError =
      PageStateInfo("serverError", "服务器错误 - 表示服务器响应错误", 200);
  static final PageStateInfo authenticationError =
      PageStateInfo("authenticationError", "认证错误 - 表示需要认证的问题", 300);
  static final PageStateInfo notFound =
      PageStateInfo("notFound", "页面未找到 - 表示请求的页面不存在", 400);
}
