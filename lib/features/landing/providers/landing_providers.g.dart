// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landing_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateStickerHash() => r'c92985919339664f782d576e5ca943fb50d2448a';

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

/// See also [generateSticker].
@ProviderFor(generateSticker)
const generateStickerProvider = GenerateStickerFamily();

/// See also [generateSticker].
class GenerateStickerFamily extends Family<AsyncValue<StickerResponse>> {
  /// See also [generateSticker].
  const GenerateStickerFamily();

  /// See also [generateSticker].
  GenerateStickerProvider call(
    String prompt,
  ) {
    return GenerateStickerProvider(
      prompt,
    );
  }

  @override
  GenerateStickerProvider getProviderOverride(
    covariant GenerateStickerProvider provider,
  ) {
    return call(
      provider.prompt,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'generateStickerProvider';
}

/// See also [generateSticker].
class GenerateStickerProvider extends AutoDisposeFutureProvider<StickerResponse> {
  /// See also [generateSticker].
  GenerateStickerProvider(
    String prompt,
  ) : this._internal(
          (ref) => generateSticker(
            ref as GenerateStickerRef,
            prompt,
          ),
          from: generateStickerProvider,
          name: r'generateStickerProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$generateStickerHash,
          dependencies: GenerateStickerFamily._dependencies,
          allTransitiveDependencies: GenerateStickerFamily._allTransitiveDependencies,
          prompt: prompt,
        );

  GenerateStickerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.prompt,
  }) : super.internal();

  final String prompt;

  @override
  Override overrideWith(
    FutureOr<StickerResponse> Function(GenerateStickerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateStickerProvider._internal(
        (ref) => create(ref as GenerateStickerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        prompt: prompt,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<StickerResponse> createElement() {
    return _GenerateStickerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateStickerProvider && other.prompt == prompt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prompt.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateStickerRef on AutoDisposeFutureProviderRef<StickerResponse> {
  /// The parameter `prompt` of this provider.
  String get prompt;
}

class _GenerateStickerProviderElement extends AutoDisposeFutureProviderElement<StickerResponse>
    with GenerateStickerRef {
  _GenerateStickerProviderElement(super.provider);

  @override
  String get prompt => (origin as GenerateStickerProvider).prompt;
}

String _$generateFilteredStickerHash() => r'9fa07e680756b9d088c6d6856bfda7872ab6ffd3';

/// See also [generateFilteredSticker].
@ProviderFor(generateFilteredSticker)
const generateFilteredStickerProvider = GenerateFilteredStickerFamily();

/// See also [generateFilteredSticker].
class GenerateFilteredStickerFamily extends Family<AsyncValue<StickerResponse>> {
  /// See also [generateFilteredSticker].
  const GenerateFilteredStickerFamily();

  /// See also [generateFilteredSticker].
  GenerateFilteredStickerProvider call(
    Input input,
  ) {
    return GenerateFilteredStickerProvider(
      input,
    );
  }

  @override
  GenerateFilteredStickerProvider getProviderOverride(
    covariant GenerateFilteredStickerProvider provider,
  ) {
    return call(
      provider.input,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'generateFilteredStickerProvider';
}

/// See also [generateFilteredSticker].
class GenerateFilteredStickerProvider extends AutoDisposeFutureProvider<StickerResponse> {
  /// See also [generateFilteredSticker].
  GenerateFilteredStickerProvider(
    Input input,
  ) : this._internal(
          (ref) => generateFilteredSticker(
            ref as GenerateFilteredStickerRef,
            input,
          ),
          from: generateFilteredStickerProvider,
          name: r'generateFilteredStickerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$generateFilteredStickerHash,
          dependencies: GenerateFilteredStickerFamily._dependencies,
          allTransitiveDependencies: GenerateFilteredStickerFamily._allTransitiveDependencies,
          input: input,
        );

  GenerateFilteredStickerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final Input input;

  @override
  Override overrideWith(
    FutureOr<StickerResponse> Function(GenerateFilteredStickerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateFilteredStickerProvider._internal(
        (ref) => create(ref as GenerateFilteredStickerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<StickerResponse> createElement() {
    return _GenerateFilteredStickerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateFilteredStickerProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateFilteredStickerRef on AutoDisposeFutureProviderRef<StickerResponse> {
  /// The parameter `input` of this provider.
  Input get input;
}

class _GenerateFilteredStickerProviderElement extends AutoDisposeFutureProviderElement<StickerResponse>
    with GenerateFilteredStickerRef {
  _GenerateFilteredStickerProviderElement(super.provider);

  @override
  Input get input => (origin as GenerateFilteredStickerProvider).input;
}

String _$promptTextHash() => r'b28efaf1e8ce0c141831ff82491ffbc8f4d5321f';

/// See also [PromptText].
@ProviderFor(PromptText)
final promptTextProvider = AutoDisposeNotifierProvider<PromptText, String>.internal(
  PromptText.new,
  name: r'promptTextProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$promptTextHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PromptText = AutoDisposeNotifier<String>;
String _$negativePromptTextHash() => r'6263f925e188dd6bf768b55d7607f8e03c530d4d';

/// See also [NegativePromptText].
@ProviderFor(NegativePromptText)
final negativePromptTextProvider = AutoDisposeNotifierProvider<NegativePromptText, String>.internal(
  NegativePromptText.new,
  name: r'negativePromptTextProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$negativePromptTextHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NegativePromptText = AutoDisposeNotifier<String>;
String _$isLoadingHash() => r'96a0aadb1685f5c0e5562663f41eb96287d75c84';

/// See also [IsLoading].
@ProviderFor(IsLoading)
final isLoadingProvider = AutoDisposeNotifierProvider<IsLoading, bool>.internal(
  IsLoading.new,
  name: r'isLoadingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$isLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsLoading = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
