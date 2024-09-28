part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}
class NavigateTo extends NavigationEvent {
  final int index;
  NavigateTo({required this.index});
}