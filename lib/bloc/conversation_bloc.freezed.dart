// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Conversation> conversations) update,
    required TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)
        startWatch,
    required TResult Function(Conversation conversation) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Conversation> conversations)? update,
    TResult? Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult? Function(Conversation conversation)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Conversation> conversations)? update,
    TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult Function(Conversation conversation)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_StartWatch value) startWatch,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_StartWatch value)? startWatch,
    TResult? Function(_Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_StartWatch value)? startWatch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'ConversationEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Conversation> conversations) update,
    required TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)
        startWatch,
    required TResult Function(Conversation conversation) select,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Conversation> conversations)? update,
    TResult? Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult? Function(Conversation conversation)? select,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Conversation> conversations)? update,
    TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult Function(Conversation conversation)? select,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_StartWatch value) startWatch,
    required TResult Function(_Select value) select,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_StartWatch value)? startWatch,
    TResult? Function(_Select value)? select,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_StartWatch value)? startWatch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ConversationEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$_Update(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(final List<Conversation> conversations)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ConversationEvent.update(conversations: $conversations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Conversation> conversations) update,
    required TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)
        startWatch,
    required TResult Function(Conversation conversation) select,
  }) {
    return update(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Conversation> conversations)? update,
    TResult? Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult? Function(Conversation conversation)? select,
  }) {
    return update?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Conversation> conversations)? update,
    TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult Function(Conversation conversation)? select,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_StartWatch value) startWatch,
    required TResult Function(_Select value) select,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_StartWatch value)? startWatch,
    TResult? Function(_Select value)? select,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_StartWatch value)? startWatch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ConversationEvent {
  const factory _Update(final List<Conversation> conversations) = _$_Update;

  List<Conversation> get conversations;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartWatchCopyWith<$Res> {
  factory _$$_StartWatchCopyWith(
          _$_StartWatch value, $Res Function(_$_StartWatch) then) =
      __$$_StartWatchCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<Event> onFocus, Stream<Event> onBlur});
}

/// @nodoc
class __$$_StartWatchCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_StartWatch>
    implements _$$_StartWatchCopyWith<$Res> {
  __$$_StartWatchCopyWithImpl(
      _$_StartWatch _value, $Res Function(_$_StartWatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onFocus = null,
    Object? onBlur = null,
  }) {
    return _then(_$_StartWatch(
      null == onFocus
          ? _value.onFocus
          : onFocus // ignore: cast_nullable_to_non_nullable
              as Stream<Event>,
      null == onBlur
          ? _value.onBlur
          : onBlur // ignore: cast_nullable_to_non_nullable
              as Stream<Event>,
    ));
  }
}

/// @nodoc

class _$_StartWatch implements _StartWatch {
  const _$_StartWatch(this.onFocus, this.onBlur);

  @override
  final Stream<Event> onFocus;
  @override
  final Stream<Event> onBlur;

  @override
  String toString() {
    return 'ConversationEvent.startWatch(onFocus: $onFocus, onBlur: $onBlur)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartWatch &&
            (identical(other.onFocus, onFocus) || other.onFocus == onFocus) &&
            (identical(other.onBlur, onBlur) || other.onBlur == onBlur));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onFocus, onBlur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartWatchCopyWith<_$_StartWatch> get copyWith =>
      __$$_StartWatchCopyWithImpl<_$_StartWatch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Conversation> conversations) update,
    required TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)
        startWatch,
    required TResult Function(Conversation conversation) select,
  }) {
    return startWatch(onFocus, onBlur);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Conversation> conversations)? update,
    TResult? Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult? Function(Conversation conversation)? select,
  }) {
    return startWatch?.call(onFocus, onBlur);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Conversation> conversations)? update,
    TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult Function(Conversation conversation)? select,
    required TResult orElse(),
  }) {
    if (startWatch != null) {
      return startWatch(onFocus, onBlur);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_StartWatch value) startWatch,
    required TResult Function(_Select value) select,
  }) {
    return startWatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_StartWatch value)? startWatch,
    TResult? Function(_Select value)? select,
  }) {
    return startWatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_StartWatch value)? startWatch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (startWatch != null) {
      return startWatch(this);
    }
    return orElse();
  }
}

abstract class _StartWatch implements ConversationEvent {
  const factory _StartWatch(
      final Stream<Event> onFocus, final Stream<Event> onBlur) = _$_StartWatch;

  Stream<Event> get onFocus;
  Stream<Event> get onBlur;
  @JsonKey(ignore: true)
  _$$_StartWatchCopyWith<_$_StartWatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({Conversation conversation});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_Select>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$_Select(
      null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'ConversationEvent.select(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Conversation> conversations) update,
    required TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)
        startWatch,
    required TResult Function(Conversation conversation) select,
  }) {
    return select(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Conversation> conversations)? update,
    TResult? Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult? Function(Conversation conversation)? select,
  }) {
    return select?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Conversation> conversations)? update,
    TResult Function(Stream<Event> onFocus, Stream<Event> onBlur)? startWatch,
    TResult Function(Conversation conversation)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_StartWatch value) startWatch,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_StartWatch value)? startWatch,
    TResult? Function(_Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_StartWatch value)? startWatch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements ConversationEvent {
  const factory _Select(final Conversation conversation) = _$_Select;

  Conversation get conversation;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Conversation> conversations, Conversation? selected)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ConversationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Conversation> conversations, Conversation? selected)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Conversation> conversations, Conversation? selected});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? selected = freezed,
  }) {
    return _then(_$_Loaded(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Conversation?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Conversation> conversations, this.selected)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final Conversation? selected;

  @override
  String toString() {
    return 'ConversationState.loaded(conversations: $conversations, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_conversations), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Conversation> conversations, Conversation? selected)
        loaded,
  }) {
    return loaded(conversations, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
  }) {
    return loaded?.call(conversations, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Conversation> conversations, Conversation? selected)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversations, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ConversationState {
  const factory _Loaded(final List<Conversation> conversations,
      final Conversation? selected) = _$_Loaded;

  List<Conversation> get conversations;
  Conversation? get selected;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
