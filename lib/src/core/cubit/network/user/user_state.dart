part of 'user_cubit.dart';

@immutable
class UserState extends Equatable {
  const UserState({
    required this.cubitStatus,
    required this.profile,
  });
  final Status cubitStatus;
  final UserModel profile;

  @override
  List<Object?> get props => [
        cubitStatus,
        profile,
      ];
  UserState copyWith({
    Status? cubitStatus,
    UserModel? profile,
  }) {
    return UserState(
      cubitStatus: cubitStatus ?? this.cubitStatus,
      profile: profile ?? this.profile,
    );
  }
}
