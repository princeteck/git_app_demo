part of 'system_cubit.dart';

class SystemState extends Equatable {
  const SystemState({
    required this.cubitStatus,
    required this.darkMode,
    required this.systemThemeMode,
    required this.locale,
  });
  final Status cubitStatus;
  final bool darkMode;
  final bool systemThemeMode;
  final Locale? locale;
  @override
  List<Object?> get props => [
        cubitStatus,
        darkMode,
        systemThemeMode,
      ];
  SystemState copyWith({
    Status? cubitStatus,
    bool? darkMode,
    bool? systemThemeMode,
    Locale? locale,
  }) {
    return SystemState(
      cubitStatus: cubitStatus ?? this.cubitStatus,
      darkMode: darkMode ?? this.darkMode,
      systemThemeMode: systemThemeMode ?? this.systemThemeMode,
      locale: locale ?? this.locale,
    );
  }
}
