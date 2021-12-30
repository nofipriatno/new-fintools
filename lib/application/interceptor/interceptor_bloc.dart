import 'package:bloc/bloc.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interceptor_bloc.freezed.dart';

part 'interceptor_event.dart';

part 'interceptor_state.dart';

@injectable
class InterceptorBloc extends Bloc<InterceptorEvent, InterceptorState> {
  final IStorage _storage;

  InterceptorBloc(this._storage) : super(const _Initial()) {
    on<InterceptorEvent>((event, emit) async {
      await event.map(
        onRetry: (e) async {},
        onInitialize: (e) async {
          emit(const _Loading());
          final _box = await _storage.openBox(StorageConstants.locale);
          String? appProduct =
              _storage.getString(_box, key: AppString.appProduct);
          _storage.close(_box);
          if (appProduct == I10n.current.product_key_3) {

          } else {
            emit(const _FetchSuccess());
          }
        },
      );
    });
  }
}
