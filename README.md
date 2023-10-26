# My Flutter App

Welcome to My Flutter App! This is a simple mobile application that allows you to access your class schedule, club information, and grades.

## Getting Started

To get started with this Flutter project, follow these steps:

1. **Install Flutter**: If you haven't already, you'll need to [install Flutter](https://flutter.dev/docs/get-started/install) on your development machine.

2. **Clone the Repository**: Use Git to clone this repository to your local machine.

   ```shell
   git clone https://github.com/yourusername/my-flutter-app.git
   ```

```bash
open -a Simulator

flutter pub get

flutter run
```

# 项目目录结构

以下是本项目的目录结构，用于帮助您更好地了解各个部分的组织和内容。

- **anim**: 存放动画相关的代码。

  - `index.dart`: 动画相关的入口文件。

- **api**: 存放与 API 相关的代码。

  - **ex**: 示例 API 相关的代码。
    - `example_api.dart`: 示例 API 文件。

- **asset**: 存放静态资产文件。

- **bloc**: 存放状态管理相关的代码。

  - `auth_bloc.dart`: 身份验证 Bloc 文件。
  - `auth_view.dart`: 身份验证视图文件。

- **config**: 存放配置信息。

  - `firebase.dart`: Firebase 配置文件。
  - `network.dart`: 网络配置文件。
  - `router.dart`: 路由配置文件。

- **constants**: 存放常量。

  - `constants.dart`: 常量定义文件。

- **helper**: 存放辅助函数。

- **interface**: 存放接口和数据模型。

  - `course_data.dart`: 课程数据接口文件。
  - `user.dart`: 用户数据接口文件。

- **l10n**: 存放本地化资源文件。

- **layout**: 存放布局相关的代码。

  - `app_layout.dart`: 应用布局文件。
  - `nav_bar.dart`: 导航栏文件。

- **main.dart**: 项目入口文件。

- **mock**: 存放模拟数据。

  - `CourseData.dart`: 模拟课程数据文件。
  - `CourseData.json`: 模拟课程数据 JSON 文件。

- **pages**: 存放页面组件。

  - **auth**: 存放身份验证页面组件。
    - `login_page.dart`: 登录页面文件。
    - `logout_page.dart`: 注销页面文件。
  - `class_schedule_page.dart`: 课程表页面文件。

- `router.dart`: 路由配置文件。

- **routes**: 存放路由相关的配置。

- **sections**: 存放不同部分的代码。

  - `@auth`: 身份验证部分代码。
  - `@school_link`: 学校链接部分代码。
  - `orther`: 其他部分代码。

- `test.dart`: 测试文件。

- **theme**: 存放主题相关的代码。

  - `base_theme.dart`: 基础主题文件。
  - `dayTheme`: 白天主题相关文件夹。
  - `nightTheme`: 夜间主题相关文件夹。

- **utils**: 存放实用工具函数。

- **widgets**: 存放自定义小部件。
  - **bar**: 自定义栏小部件。
  - **base**: 基础小部件。
  - **drawer**: 抽屉小部件。
  - **dialog**: 对话框小部件。
  - **tab**: 选项卡小部件。

这个目录结构将有助于组织和理解项目的不同部分和文件。希望这个 README 对于团队成员和未来的开发者能够提供有用的信息。

### Contributor

- Project Manager: [LAIHUNGWEI](https://github.com/s990093)
