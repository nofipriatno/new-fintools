import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interceptor_bloc.freezed.dart';

part 'interceptor_event.dart';

part 'interceptor_state.dart';

@injectable
class InterceptorBloc extends Bloc<InterceptorEvent, InterceptorState> {
  InterceptorBloc() : super(const _Initial()) {
    on<InterceptorEvent>((event, emit) {
      event.map(
        onSweepImage: (e) async {},
        onIconSettingTap: (e) async {},
        onLoginTap: (e) async {},
      );
    });
  }
}
