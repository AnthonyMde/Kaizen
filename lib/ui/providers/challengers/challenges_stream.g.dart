// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_stream.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$challengesStreamHash() => r'7fbc49f2b6e41403c7214827bd5f2cf3ebee8364';

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

/// See also [challengesStream].
@ProviderFor(challengesStream)
const challengesStreamProvider = ChallengesStreamFamily();

/// See also [challengesStream].
class ChallengesStreamFamily extends Family<AsyncValue<List<Challenge>>> {
  /// See also [challengesStream].
  const ChallengesStreamFamily();

  /// See also [challengesStream].
  ChallengesStreamProvider call(
    String challengerId,
  ) {
    return ChallengesStreamProvider(
      challengerId,
    );
  }

  @override
  ChallengesStreamProvider getProviderOverride(
    covariant ChallengesStreamProvider provider,
  ) {
    return call(
      provider.challengerId,
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
  String? get name => r'challengesStreamProvider';
}

/// See also [challengesStream].
class ChallengesStreamProvider
    extends AutoDisposeStreamProvider<List<Challenge>> {
  /// See also [challengesStream].
  ChallengesStreamProvider(
    String challengerId,
  ) : this._internal(
          (ref) => challengesStream(
            ref as ChallengesStreamRef,
            challengerId,
          ),
          from: challengesStreamProvider,
          name: r'challengesStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$challengesStreamHash,
          dependencies: ChallengesStreamFamily._dependencies,
          allTransitiveDependencies:
              ChallengesStreamFamily._allTransitiveDependencies,
          challengerId: challengerId,
        );

  ChallengesStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.challengerId,
  }) : super.internal();

  final String challengerId;

  @override
  Override overrideWith(
    Stream<List<Challenge>> Function(ChallengesStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChallengesStreamProvider._internal(
        (ref) => create(ref as ChallengesStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        challengerId: challengerId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Challenge>> createElement() {
    return _ChallengesStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChallengesStreamProvider &&
        other.challengerId == challengerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, challengerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChallengesStreamRef on AutoDisposeStreamProviderRef<List<Challenge>> {
  /// The parameter `challengerId` of this provider.
  String get challengerId;
}

class _ChallengesStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<Challenge>>
    with ChallengesStreamRef {
  _ChallengesStreamProviderElement(super.provider);

  @override
  String get challengerId => (origin as ChallengesStreamProvider).challengerId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
