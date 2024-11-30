// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isCurrentUserHash() => r'645f0d3b9665c3fa3c10b5e9af989737c164a331';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [isCurrentUser].
@ProviderFor(isCurrentUser)
const isCurrentUserProvider = IsCurrentUserFamily();

/// See also [isCurrentUser].
class IsCurrentUserFamily extends Family<AsyncValue<bool>> {
  /// See also [isCurrentUser].
  const IsCurrentUserFamily();

  /// See also [isCurrentUser].
  IsCurrentUserProvider call(
    String userId,
  ) {
    return IsCurrentUserProvider(
      userId,
    );
  }

  @override
  IsCurrentUserProvider getProviderOverride(
    covariant IsCurrentUserProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isCurrentUserProvider';
}

/// See also [isCurrentUser].
class IsCurrentUserProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isCurrentUser].
  IsCurrentUserProvider(
    String userId,
  ) : this._internal(
          (ref) => isCurrentUser(
            ref as IsCurrentUserRef,
            userId,
          ),
          from: isCurrentUserProvider,
          name: r'isCurrentUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isCurrentUserHash,
          dependencies: IsCurrentUserFamily._dependencies,
          allTransitiveDependencies:
              IsCurrentUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  IsCurrentUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(IsCurrentUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsCurrentUserProvider._internal(
        (ref) => create(ref as IsCurrentUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsCurrentUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsCurrentUserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsCurrentUserRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _IsCurrentUserProviderElement
    extends AutoDisposeFutureProviderElement<bool> with IsCurrentUserRef {
  _IsCurrentUserProviderElement(super.provider);

  @override
  String get userId => (origin as IsCurrentUserProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
