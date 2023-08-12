
import 'package:rememberme/domain/repository/foods_repository.dart';
import 'package:rememberme/domain/usecase/post_food_usecase.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

class PostFoodUsecaseImpl extends PostFoodUsecase {
  final FoodsRepository _foodsRepository;

  PostFoodUsecaseImpl({
    required FoodsRepository foodsRepository,
  }) : _foodsRepository = foodsRepository;


  @override
  Future<String> execute(RegisterFoodState registerFoodState) async {
    return _foodsRepository.postItem(registerFoodState);
  }

}