import 'package:todo_firebase/feature/app/model/theme_model.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/theme_data_source.dart';

/// Theme repository, which provides base methods for saving and getting it
abstract interface class ThemeRepository {
  /// Get theme
  Future<ThemeModel?> getTheme();

  /// Save theme
  Future<void> setTheme(ThemeModel theme);
}

/// Base implementation of [ThemeRepository]
class ThemeRepositoryImpl implements ThemeRepository {

  final ThemeDataSource _themeDataSource;

  /// Public constructor
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