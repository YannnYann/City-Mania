package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.UnityServices;
import com.unity3d.services.ads.IUnityAds;
import com.unity3d.services.ads.UnityAdsImplementation;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.properties.ClientProperties;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: UnityAds.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityAds {
    public static final UnityAds INSTANCE = new UnityAds();
    private static Boolean nonBehavioral;
    private static Boolean userConsent;
    private static String userIdentifier;
    private static Boolean userOptOut;

    public static /* synthetic */ void getDebugMode$annotations() {
    }

    public static /* synthetic */ void getNonBehavioral$annotations() {
    }

    public static /* synthetic */ void getToken$annotations() {
    }

    public static /* synthetic */ void getUserConsent$annotations() {
    }

    public static /* synthetic */ void getUserIdentifier$annotations() {
    }

    public static /* synthetic */ void getUserOptOut$annotations() {
    }

    public static /* synthetic */ void getVersion$annotations() {
    }

    public static /* synthetic */ void isInitialized$annotations() {
    }

    public static /* synthetic */ void isSupported$annotations() {
    }

    private UnityAds() {
    }

    public static final void initialize(Context context, String str) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().initialize(context, str, false, null);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void initialize(Context context, String str, final IUnityAdsInitializationListener iUnityAdsInitializationListener) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().initialize(context, str, false, iUnityAdsInitializationListener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null || iUnityAdsInitializationListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.initialize$lambda$4$lambda$3$lambda$2(iUnityAdsInitializationListener, thM2763exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$4$lambda$3$lambda$2(IUnityAdsInitializationListener iUnityAdsInitializationListener, Throwable th) {
        iUnityAdsInitializationListener.onInitializationFailed(UnityAdsInitializationError.INTERNAL_ERROR, "Unity Ads SDK initialization failed due to unexpected error: " + th.getMessage());
    }

    public static final void initialize(Context context, String str, boolean z) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().initialize(context, str, z, null);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void initialize(Context context, String str, boolean z, final IUnityAdsInitializationListener iUnityAdsInitializationListener) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().initialize(context, str, z, iUnityAdsInitializationListener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null || iUnityAdsInitializationListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.initialize$lambda$9$lambda$8$lambda$7(iUnityAdsInitializationListener, thM2763exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$9$lambda$8$lambda$7(IUnityAdsInitializationListener iUnityAdsInitializationListener, Throwable th) {
        iUnityAdsInitializationListener.onInitializationFailed(UnityAdsInitializationError.INTERNAL_ERROR, "Unity Ads SDK initialization failed due to unexpected error: " + th.getMessage());
    }

    public static final boolean isInitialized() {
        return UnityAdsImplementation.getInstance().isInitialized();
    }

    public static final boolean isSupported() {
        return UnityAdsImplementation.getInstance().isSupported();
    }

    public static final String getVersion() {
        String version = UnityAdsImplementation.getInstance().getVersion();
        Intrinsics.checkNotNullExpressionValue(version, "getVersion(...)");
        return version;
    }

    public static final void show(Activity activity, String str) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().show(activity, str, new UnityAdsShowOptions(), null);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void show(Activity activity, String str, IUnityAdsShowListener iUnityAdsShowListener) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().show(activity, str, new UnityAdsShowOptions(), iUnityAdsShowListener);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void show(Activity activity, String str, UnityAdsShowOptions unityAdsShowOptions) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().show(activity, str, unityAdsShowOptions, null);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void show(Activity activity, final String str, UnityAdsShowOptions unityAdsShowOptions, final IUnityAdsShowListener iUnityAdsShowListener) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().show(activity, str, unityAdsShowOptions, iUnityAdsShowListener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null || iUnityAdsShowListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.show$lambda$16$lambda$15$lambda$14(iUnityAdsShowListener, str, thM2763exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$16$lambda$15$lambda$14(IUnityAdsShowListener iUnityAdsShowListener, String str, Throwable th) {
        if (str == null) {
            str = "unknown";
        }
        iUnityAdsShowListener.onUnityAdsShowFailure(str, UnityAdsShowError.INTERNAL_ERROR, "Unity Ads SDK show failed due to unexpected error: " + th.getMessage());
    }

    public static final boolean getDebugMode() {
        return UnityAdsImplementation.getInstance().getDebugMode();
    }

    public static final void setDebugMode(boolean z) {
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().setDebugMode(z);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void load(String str) {
        try {
            Result.Companion companion = Result.Companion;
            load(str, new IUnityAdsLoadListener() { // from class: com.unity3d.ads.UnityAds$load$1$1
                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsAdLoaded(String placementId) {
                    Intrinsics.checkNotNullParameter(placementId, "placementId");
                }

                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsFailedToLoad(String placementId, UnityAds.UnityAdsLoadError error, String message) {
                    Intrinsics.checkNotNullParameter(placementId, "placementId");
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(message, "message");
                }
            });
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final void load(String str, IUnityAdsLoadListener iUnityAdsLoadListener) {
        load(str, new UnityAdsLoadOptions(), iUnityAdsLoadListener);
    }

    public static final void load(final String str, UnityAdsLoadOptions unityAdsLoadOptions, final IUnityAdsLoadListener iUnityAdsLoadListener) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            IUnityAds unityAdsImplementation = UnityAdsImplementation.getInstance();
            if (unityAdsLoadOptions == null) {
                unityAdsLoadOptions = new UnityAdsLoadOptions();
            }
            unityAdsImplementation.load(str, unityAdsLoadOptions, iUnityAdsLoadListener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null || iUnityAdsLoadListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                UnityAds.load$lambda$22$lambda$21$lambda$20(iUnityAdsLoadListener, str, thM2763exceptionOrNullimpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void load$lambda$22$lambda$21$lambda$20(IUnityAdsLoadListener iUnityAdsLoadListener, String str, Throwable th) {
        if (str == null) {
            str = "unknown";
        }
        iUnityAdsLoadListener.onUnityAdsFailedToLoad(str, UnityAdsLoadError.INTERNAL_ERROR, "Unity Ads SDK load failed due to unexpected error: " + th.getMessage());
    }

    public static final String getToken() {
        return UnityAdsImplementation.getInstance().getToken();
    }

    public static final void getToken(final IUnityAdsTokenListener iUnityAdsTokenListener) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().getToken(iUnityAdsTokenListener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) == null || iUnityAdsTokenListener == null) {
            return;
        }
        Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                iUnityAdsTokenListener.onUnityAdsTokenReady(null);
            }
        });
    }

    public static final void getToken(TokenConfiguration configuration, final IUnityAdsTokenListener listener) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
        try {
            Result.Companion companion = Result.Companion;
            UnityAdsImplementation.getInstance().getToken(configuration, listener);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) != null) {
            Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.UnityAds$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onUnityAdsTokenReady(null);
                }
            });
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UnityAds.kt */
    public static final class UnityAdsShowCompletionState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UnityAdsShowCompletionState[] $VALUES;
        public static final UnityAdsShowCompletionState SKIPPED = new UnityAdsShowCompletionState("SKIPPED", 0);
        public static final UnityAdsShowCompletionState COMPLETED = new UnityAdsShowCompletionState("COMPLETED", 1);

        private static final /* synthetic */ UnityAdsShowCompletionState[] $values() {
            return new UnityAdsShowCompletionState[]{SKIPPED, COMPLETED};
        }

        public static EnumEntries<UnityAdsShowCompletionState> getEntries() {
            return $ENTRIES;
        }

        private UnityAdsShowCompletionState(String str, int i) {
        }

        static {
            UnityAdsShowCompletionState[] unityAdsShowCompletionStateArr$values = $values();
            $VALUES = unityAdsShowCompletionStateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(unityAdsShowCompletionStateArr$values);
        }

        public static UnityAdsShowCompletionState valueOf(String str) {
            return (UnityAdsShowCompletionState) Enum.valueOf(UnityAdsShowCompletionState.class, str);
        }

        public static UnityAdsShowCompletionState[] values() {
            return (UnityAdsShowCompletionState[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UnityAds.kt */
    public static final class UnityAdsInitializationError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UnityAdsInitializationError[] $VALUES;
        public static final UnityAdsInitializationError INTERNAL_ERROR = new UnityAdsInitializationError("INTERNAL_ERROR", 0);
        public static final UnityAdsInitializationError INVALID_ARGUMENT = new UnityAdsInitializationError("INVALID_ARGUMENT", 1);
        public static final UnityAdsInitializationError AD_BLOCKER_DETECTED = new UnityAdsInitializationError("AD_BLOCKER_DETECTED", 2);

        private static final /* synthetic */ UnityAdsInitializationError[] $values() {
            return new UnityAdsInitializationError[]{INTERNAL_ERROR, INVALID_ARGUMENT, AD_BLOCKER_DETECTED};
        }

        public static EnumEntries<UnityAdsInitializationError> getEntries() {
            return $ENTRIES;
        }

        private UnityAdsInitializationError(String str, int i) {
        }

        static {
            UnityAdsInitializationError[] unityAdsInitializationErrorArr$values = $values();
            $VALUES = unityAdsInitializationErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(unityAdsInitializationErrorArr$values);
        }

        public static UnityAdsInitializationError valueOf(String str) {
            return (UnityAdsInitializationError) Enum.valueOf(UnityAdsInitializationError.class, str);
        }

        public static UnityAdsInitializationError[] values() {
            return (UnityAdsInitializationError[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UnityAds.kt */
    public static final class UnityAdsLoadError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UnityAdsLoadError[] $VALUES;
        public static final UnityAdsLoadError INITIALIZE_FAILED = new UnityAdsLoadError("INITIALIZE_FAILED", 0);
        public static final UnityAdsLoadError INTERNAL_ERROR = new UnityAdsLoadError("INTERNAL_ERROR", 1);
        public static final UnityAdsLoadError INVALID_ARGUMENT = new UnityAdsLoadError("INVALID_ARGUMENT", 2);
        public static final UnityAdsLoadError NO_FILL = new UnityAdsLoadError("NO_FILL", 3);
        public static final UnityAdsLoadError TIMEOUT = new UnityAdsLoadError("TIMEOUT", 4);

        private static final /* synthetic */ UnityAdsLoadError[] $values() {
            return new UnityAdsLoadError[]{INITIALIZE_FAILED, INTERNAL_ERROR, INVALID_ARGUMENT, NO_FILL, TIMEOUT};
        }

        public static EnumEntries<UnityAdsLoadError> getEntries() {
            return $ENTRIES;
        }

        private UnityAdsLoadError(String str, int i) {
        }

        static {
            UnityAdsLoadError[] unityAdsLoadErrorArr$values = $values();
            $VALUES = unityAdsLoadErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(unityAdsLoadErrorArr$values);
        }

        public static UnityAdsLoadError valueOf(String str) {
            return (UnityAdsLoadError) Enum.valueOf(UnityAdsLoadError.class, str);
        }

        public static UnityAdsLoadError[] values() {
            return (UnityAdsLoadError[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UnityAds.kt */
    public static final class UnityAdsShowError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UnityAdsShowError[] $VALUES;
        public static final UnityAdsShowError NOT_INITIALIZED = new UnityAdsShowError("NOT_INITIALIZED", 0);
        public static final UnityAdsShowError NOT_READY = new UnityAdsShowError("NOT_READY", 1);
        public static final UnityAdsShowError VIDEO_PLAYER_ERROR = new UnityAdsShowError("VIDEO_PLAYER_ERROR", 2);
        public static final UnityAdsShowError INVALID_ARGUMENT = new UnityAdsShowError("INVALID_ARGUMENT", 3);
        public static final UnityAdsShowError NO_CONNECTION = new UnityAdsShowError("NO_CONNECTION", 4);
        public static final UnityAdsShowError ALREADY_SHOWING = new UnityAdsShowError("ALREADY_SHOWING", 5);
        public static final UnityAdsShowError INTERNAL_ERROR = new UnityAdsShowError("INTERNAL_ERROR", 6);
        public static final UnityAdsShowError TIMEOUT = new UnityAdsShowError("TIMEOUT", 7);
        public static final UnityAdsShowError EXPIRED = new UnityAdsShowError("EXPIRED", 8);

        private static final /* synthetic */ UnityAdsShowError[] $values() {
            return new UnityAdsShowError[]{NOT_INITIALIZED, NOT_READY, VIDEO_PLAYER_ERROR, INVALID_ARGUMENT, NO_CONNECTION, ALREADY_SHOWING, INTERNAL_ERROR, TIMEOUT, EXPIRED};
        }

        public static EnumEntries<UnityAdsShowError> getEntries() {
            return $ENTRIES;
        }

        private UnityAdsShowError(String str, int i) {
        }

        static {
            UnityAdsShowError[] unityAdsShowErrorArr$values = $values();
            $VALUES = unityAdsShowErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(unityAdsShowErrorArr$values);
        }

        public static UnityAdsShowError valueOf(String str) {
            return (UnityAdsShowError) Enum.valueOf(UnityAdsShowError.class, str);
        }

        public static UnityAdsShowError[] values() {
            return (UnityAdsShowError[]) $VALUES.clone();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.UnityAds$initialize$7, reason: invalid class name */
    /* JADX INFO: compiled from: UnityAds.kt */
    @DebugMetadata(c = "com.unity3d.ads.UnityAds$initialize$7", f = "UnityAds.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InitializationConfiguration $configuration;
        final /* synthetic */ InitializationListener $listener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass7(InitializationConfiguration initializationConfiguration, InitializationListener initializationListener, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$configuration = initializationConfiguration;
            this.$listener = initializationListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$configuration, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$configuration.getMediationInfo() != null) {
                MediationMetaData mediationMetaData = new MediationMetaData(ClientProperties.getApplicationContext());
                InitializationConfiguration initializationConfiguration = this.$configuration;
                mediationMetaData.setName(initializationConfiguration.getMediationInfo().getName());
                mediationMetaData.setVersion(initializationConfiguration.getMediationInfo().getVersion());
                mediationMetaData.set("adapter_version", initializationConfiguration.getMediationInfo().getAdapterVersion());
                mediationMetaData.commit();
            }
            UnityServices.initialize(ClientProperties.getApplicationContext(), this.$configuration.getGameId(), this.$configuration.isTestModeEnabled(), this.$configuration, this.$listener);
            return Unit.INSTANCE;
        }
    }

    public static final void initialize(InitializationConfiguration configuration, InitializationListener listener) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new AnonymousClass7(configuration, listener, null), 3, null);
    }

    public static final String getUserIdentifier() {
        return userIdentifier;
    }

    public static final void setUserIdentifier(String str) {
        userIdentifier = str;
    }

    public static final Boolean getUserConsent() {
        return userConsent;
    }

    public static final void setUserConsent(Boolean bool) {
        userConsent = bool;
    }

    public static final Boolean getUserOptOut() {
        return userOptOut;
    }

    public static final void setUserOptOut(Boolean bool) {
        userOptOut = bool;
    }

    public static final Boolean getNonBehavioral() {
        return nonBehavioral;
    }

    public static final void setNonBehavioral(Boolean bool) {
        nonBehavioral = bool;
    }
}
