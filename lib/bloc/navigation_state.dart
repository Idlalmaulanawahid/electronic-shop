part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitial extends NavigationState {}
class NavigationChanged extends NavigationState {
  final int index;
  NavigationChanged({required this.index});
}