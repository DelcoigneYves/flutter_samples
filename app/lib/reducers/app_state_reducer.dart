import 'package:app/models/app_state.dart';
import 'package:app/reducers/app_loading_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    loading: loadingReducer(state.loading, action)
  );
}