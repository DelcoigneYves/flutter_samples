import 'package:redux/redux.dart';
import 'package:app/actions/base_actions.dart';

final loadingReducer = combineTypedReducers<bool>([
  new ReducerBinding<bool, AppLoadedAction>(_setLoaded),
  new ReducerBinding<bool, AppNotLoadedAction>(_setLoaded),
]);

bool _setLoaded(bool state, action) {
  return false;
}