import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  const BaseState();

  @override
  List<Object?> get props => [];
}

abstract class BaseEvent extends Equatable {
  const BaseEvent();

  @override
  List<Object?> get props => [];
}

abstract class BaseBloc<Event extends BaseEvent, State extends BaseState>
    extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState) {
    on<Event>((event, emit) async {
      try {
        await handleEvent(event, emit);
      } catch (e) {
        handleError(e);
      }
    });
  }

  Future<void> handleEvent(Event event, Emitter<State> emit);

  void handleError(dynamic error) {
    // Override this method in your bloc to handle errors
    print('Error in ${runtimeType}: $error');
  }
} 