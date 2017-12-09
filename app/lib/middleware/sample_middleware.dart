import 'package:app/actions/base_actions.dart';
import 'package:app/models/app_state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreTodosMiddleware() {

  return combineTypedMiddleware([
    new MiddlewareBinding<AppState, AppLoadedAction>(_sampleSave()),
    new MiddlewareBinding<AppState, AppNotLoadedAction>(_sampleSave()),
  ]);
}

Middleware<AppState> _sampleSave() {
  return (Store<AppState> store, action, NextDispatcher next) {
    // Update app state
    next(action);

    // Extra action
    // Save data
  };
}