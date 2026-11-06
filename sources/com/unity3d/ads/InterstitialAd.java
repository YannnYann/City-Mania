package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.datasource.CurrentActivityDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.ShowConfigurationInternal;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.UnityAdsSDK;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import gatewayprotocol.v1.ErrorOuterClass;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: InterstitialAd.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InterstitialAd {
    public static final Companion Companion = new Companion(null);
    private final AdObject adObject;
    private AdExpiredListener<InterstitialAd> onAdExpired;
    private final SafeCallbackInvoke safeCallbackInvoke;

    public static final void load(LoadConfiguration loadConfiguration, LoadListener<InterstitialAd> loadListener) {
        Companion.load(loadConfiguration, loadListener);
    }

    public InterstitialAd(AdObject adObject, SafeCallbackInvoke safeCallbackInvoke) {
        CoroutineScope scope;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        this.adObject = adObject;
        this.safeCallbackInvoke = safeCallbackInvoke;
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer == null || (scope = adPlayer.getScope()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new InterstitialAd$1$1(this, null), 3, null);
    }

    public final AdExpiredListener<InterstitialAd> getOnAdExpired() {
        return this.onAdExpired;
    }

    public final void setOnAdExpired(AdExpiredListener<InterstitialAd> adExpiredListener) {
        this.onAdExpired = adExpiredListener;
    }

    public static /* synthetic */ void show$default(InterstitialAd interstitialAd, Context context, ShowConfiguration showConfiguration, InterstitialShowListener interstitialShowListener, int i, Object obj) {
        if ((i & 2) != 0) {
            showConfiguration = null;
        }
        if ((i & 4) != 0) {
            interstitialShowListener = null;
        }
        interstitialAd.show(context, showConfiguration, interstitialShowListener);
    }

    public final void show(Context context, ShowConfiguration showConfiguration, InterstitialShowListener interstitialShowListener) {
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_SHOW_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new AnonymousClass1(showConfiguration, this, context, interstitialShowListener, null), 3, null);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.InterstitialAd$show$1, reason: invalid class name */
    /* JADX INFO: compiled from: InterstitialAd.kt */
    @DebugMetadata(c = "com.unity3d.ads.InterstitialAd$show$1", f = "InterstitialAd.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ShowConfiguration $configuration;
        final /* synthetic */ Context $context;
        final /* synthetic */ InterstitialShowListener $listener;
        int label;
        final /* synthetic */ InterstitialAd this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ShowConfiguration showConfiguration, InterstitialAd interstitialAd, Context context, InterstitialShowListener interstitialShowListener, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$configuration = showConfiguration;
            this.this$0 = interstitialAd;
            this.$context = context;
            this.$listener = interstitialShowListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$configuration, this.this$0, this.$context, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Map<String, String> mapEmptyMap;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ShowConfiguration showConfiguration = this.$configuration;
            IServiceProvider iServiceProvider = null;
            Object[] objArr = 0;
            String customRewardString = showConfiguration != null ? showConfiguration.getCustomRewardString() : null;
            ShowConfiguration showConfiguration2 = this.$configuration;
            if (showConfiguration2 == null || (mapEmptyMap = showConfiguration2.getExtras()) == null) {
                mapEmptyMap = MapsKt__MapsKt.emptyMap();
            }
            ShowConfigurationInternal showConfigurationInternal = new ShowConfigurationInternal(customRewardString, mapEmptyMap);
            UnityAdsShowOptions unityAdsShowOptions = new UnityAdsShowOptions();
            unityAdsShowOptions.setObjectId(ProtobufExtensionsKt.toUUID(this.this$0.adObject.getOpportunityId()).toString());
            unityAdsShowOptions.showConfiguration = showConfigurationInternal;
            this.this$0.adObject.setShowConfiguration(this.$configuration);
            AdObject adObject = this.this$0.adObject;
            ShowConfiguration showConfiguration3 = this.$configuration;
            adObject.setPlayerServerId(showConfiguration3 != null ? showConfiguration3.getCustomRewardString() : null);
            ServiceProvider serviceProvider = ServiceProvider.INSTANCE;
            int i = 1;
            CurrentActivityDataSource currentActivityDataSource = (CurrentActivityDataSource) serviceProvider.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(CurrentActivityDataSource.class), 1, null));
            SendDiagnosticEvent sendDiagnosticEvent = (SendDiagnosticEvent) serviceProvider.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class), 1, null));
            SessionRepository sessionRepository = (SessionRepository) serviceProvider.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SessionRepository.class), 1, null));
            Activity currentActivity = currentActivityDataSource.getCurrentActivity();
            ShowActivityResolverKt.commitExtras(this.$context, currentActivity, this.$configuration);
            Activity activityResolveEffectiveActivity = ShowActivityResolverKt.resolveEffectiveActivity(this.$context, currentActivity, this.this$0.adObject, sendDiagnosticEvent, sessionRepository);
            this.this$0.adObject.setActivity(activityResolveEffectiveActivity != null ? new WeakReference<>(activityResolveEffectiveActivity) : null);
            UnityAdsSDK unityAdsSDK = new UnityAdsSDK(iServiceProvider, i, objArr == true ? 1 : 0);
            String placementId = this.this$0.adObject.getPlacementId();
            final InterstitialShowListener interstitialShowListener = this.$listener;
            final InterstitialAd interstitialAd = this.this$0;
            unityAdsSDK.show(placementId, unityAdsShowOptions, new Listeners() { // from class: com.unity3d.ads.InterstitialAd.show.1.2

                /* JADX INFO: renamed from: com.unity3d.ads.InterstitialAd$show$1$2$WhenMappings */
                /* JADX INFO: compiled from: InterstitialAd.kt */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
                    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

                    static {
                        int[] iArr = new int[UnityAds.UnityAdsShowError.values().length];
                        try {
                            iArr[UnityAds.UnityAdsShowError.TIMEOUT.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[UnityAds.UnityAdsShowError.EXPIRED.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[UnityAds.UnityAdsShowError.ALREADY_SHOWING.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                        int[] iArr2 = new int[UnityAds.UnityAdsShowCompletionState.values().length];
                        try {
                            iArr2[UnityAds.UnityAdsShowCompletionState.COMPLETED.ordinal()] = 1;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr2[UnityAds.UnityAdsShowCompletionState.SKIPPED.ordinal()] = 2;
                        } catch (NoSuchFieldError unused5) {
                        }
                        $EnumSwitchMapping$1 = iArr2;
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onLeftApplication(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onRewarded(String str) {
                    Listeners.DefaultImpls.onRewarded(this, str);
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onError(String placementId2, UnityAds.UnityAdsShowError error, String message) {
                    ErrorOuterClass.PublicErrorCode publicErrorCode;
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(message, "message");
                    int i2 = WhenMappings.$EnumSwitchMapping$0[error.ordinal()];
                    if (i2 == 1) {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_TIMEOUT;
                    } else if (i2 == 2) {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_EXPIRED;
                    } else if (i2 == 3) {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN;
                    } else {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_INTERNAL;
                    }
                    InterstitialShowListener interstitialShowListener2 = interstitialShowListener;
                    if (interstitialShowListener2 != null) {
                        interstitialShowListener2.onFailed(interstitialAd, new UnityAdsError(publicErrorCode.getNumber(), UnityAdsErrorKt.getShowErrorMsg(publicErrorCode)));
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onStart(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    InterstitialShowListener interstitialShowListener2 = interstitialShowListener;
                    if (interstitialShowListener2 != null) {
                        interstitialShowListener2.onStarted(interstitialAd);
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onClick(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    InterstitialShowListener interstitialShowListener2 = interstitialShowListener;
                    if (interstitialShowListener2 != null) {
                        interstitialShowListener2.onClicked(interstitialAd);
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onComplete(String placementId2, UnityAds.UnityAdsShowCompletionState state) {
                    ShowFinishState showFinishState;
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    Intrinsics.checkNotNullParameter(state, "state");
                    InterstitialShowListener interstitialShowListener2 = interstitialShowListener;
                    if (interstitialShowListener2 != null) {
                        InterstitialAd interstitialAd2 = interstitialAd;
                        int i2 = WhenMappings.$EnumSwitchMapping$1[state.ordinal()];
                        if (i2 == 1) {
                            showFinishState = ShowFinishState.COMPLETED;
                        } else {
                            if (i2 != 2) {
                                throw new NoWhenBranchMatchedException();
                            }
                            showFinishState = ShowFinishState.SKIPPED;
                        }
                        interstitialShowListener2.onCompleted(interstitialAd2, showFinishState);
                    }
                }
            });
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: InterstitialAd.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void load(LoadConfiguration configuration, LoadListener<InterstitialAd> listener) {
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(listener, "listener");
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new InterstitialAd$Companion$load$1(configuration, listener, null), 3, null);
        }
    }
}
