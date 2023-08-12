import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/usecase/post_food_usecase.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

final registerFoodItemNotifierProvider =
    StateNotifierProvider<RegisterFoodItemNotifier, RegisterFoodState>(
  (ref) => RegisterFoodItemNotifier(
      postFoodUsecase: ref.read(getFoodsUsecaseProvider)),
);

class RegisterFoodItemNotifier extends StateNotifier<RegisterFoodState> {
  RegisterFoodItemNotifier({required PostFoodUsecase postFoodUsecase})
      : _postFoodUsecase = postFoodUsecase,
        super(RegisterFoodState(
            name: '',
            imagePath: '',
            expiration: '期限を入力してね',
            location: ''));

  final PostFoodUsecase _postFoodUsecase;

  Future<String> post() async {
   return await _postFoodUsecase.execute(state);
  }

  void updateName(String name) {
    state = state.copyWith(
        name: name,
        imagePath: state.imagePath,
        expiration: state.expiration,
        location: state.location);
  }

  void updateImagePath(String imagePath) {
    state = state.copyWith(
        name: state.name,
        imagePath: imagePath,
        expiration: state.expiration,
        location: state.location);
  }

  void updateExpiration(String expiration) {
    state = state.copyWith(
        name: state.name,
        imagePath: state.imagePath,
        expiration: expiration,
        location: state.location);
  }

  void updateLocation(String location) {
    state = state.copyWith(
        name: state.name,
        imagePath: state.imagePath,
        expiration: state.expiration,
        location: location);
  }
}
