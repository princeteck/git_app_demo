part of 'connectivity_cubit.dart';

class ConnectivityState extends Equatable {
  const ConnectivityState({
    required this.isConnected,
  });

  final bool isConnected;

  @override
  List<Object> get props => [
        isConnected,
      ];
  ConnectivityState copyWith({
    bool? isConnected,
  }) {
    return ConnectivityState(
      isConnected: isConnected ?? this.isConnected,
    );
  }
}
