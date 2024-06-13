import 'package:todo_firebase/feature/app/model/theme_model.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/theme_data_source.dart';

abstract interface class ThemeRepository {
  Future<ThemeModel?> getTheme();
  Future<void> setTheme(ThemeModel theme);
}

class ThemeRepositoryImpl implements ThemeRepository {

  final ThemeDataSource _themeDataSource;

  ThemeRepositoryImpl({required ThemeDataSource themeDataSource}) : _themeDataSource = themeDataSource;

  @override
  Future<ThemeModel?> getTheme() {
    return _themeDataSource.getTheme();
  }

  @override
  Future<void> setTheme(ThemeModel theme) async {
    _themeDataSource.setTheme(theme);
  }

}