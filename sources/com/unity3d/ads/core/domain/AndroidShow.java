package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidShowOptions;
import com.unity3d.ads.core.configuration.GameServerIdReader;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AccelerometerRepository;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.extensions.JSONObjectExtensionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: AndroidShow.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidShow implements Show {
    private final AccelerometerRepository accelerometerRepository;
    private final AdRepository adRepository;
    private final Context context;
    private final GameServerIdReader gameServerIdReader;
    private final HandleGatewayAdResponse handleGatewayAdResponse;
    private final PreShowWebViewStrategy preShowStrategy;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final ValidateExtrasSize validateExtrasSize;

    public AndroidShow(Context context, AdRepository adRepository, GameServerIdReader gameServerIdReader, SendDiagnosticEvent sendDiagnosticEvent, ValidateExtrasSize validateExtrasSize, HandleGatewayAdResponse handleGatewayAdResponse, PreShowWebViewStrategy preShowStrategy, AccelerometerRepository accelerometerRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(gameServerIdReader, "gameServerIdReader");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(validateExtrasSize, "validateExtrasSize");
        Intrinsics.checkNotNullParameter(handleGatewayAdResponse, "handleGatewayAdResponse");
        Intrinsics.checkNotNullParameter(preShowStrategy, "preShowStrategy");
        Intrinsics.checkNotNullParameter(accelerometerRepository, "accelerometerRepository");
        this.context = context;
        this.adRepository = adRepository;
        this.gameServerIdReader = gameServerIdReader;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.validateExtrasSize = validateExtrasSize;
        this.handleGatewayAdResponse = handleGatewayAdResponse;
        this.preShowStrategy = preShowStrategy;
        this.accelerometerRepository = accelerometerRepository;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidShow.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1", f = "AndroidShow.kt", l = {53, 107}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super ShowEvent>, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ AndroidShow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AdObject adObject, AndroidShow androidShow, UnityAdsShowOptions unityAdsShowOptions, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$adObject = adObject;
            this.this$0 = androidShow;
            this.$showOptions = unityAdsShowOptions;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$adObject, this.this$0, this.$showOptions, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x01ac, code lost:
        
            if (r0.collect(r1, r27) == r13) goto L44;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0137  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01b2  */
        /* JADX WARN: Type inference failed for: r0v39, types: [T, com.unity3d.ads.core.data.model.AdObject] */
        /* JADX WARN: Type inference failed for: r0v9, types: [T, com.unity3d.ads.core.data.model.AdObject] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r28) {
            /*
                Method dump skipped, instruction units count: 458
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidShow.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$4, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidShow.kt */
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$4", f = "AndroidShow.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass4 extends SuspendLambda implements Function2<FlowCollector<? super ShowEvent>, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref$ObjectRef<AdObject> $ad;
            final /* synthetic */ AdObject $adObject;
            final /* synthetic */ AdPlayer $adPlayer;
            final /* synthetic */ boolean $isFullscreenShow;
            final /* synthetic */ UnityAdsShowOptions $showOptions;
            int label;
            final /* synthetic */ AndroidShow this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(AdPlayer adPlayer, Ref$ObjectRef<AdObject> ref$ObjectRef, AndroidShow androidShow, AdObject adObject, boolean z, UnityAdsShowOptions unityAdsShowOptions, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.$adPlayer = adPlayer;
                this.$ad = ref$ObjectRef;
                this.this$0 = androidShow;
                this.$adObject = adObject;
                this.$isFullscreenShow = z;
                this.$showOptions = unityAdsShowOptions;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass4(this.$adPlayer, this.$ad, this.this$0, this.$adObject, this.$isFullscreenShow, this.$showOptions, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Continuation<? super Unit> continuation) {
                return ((AnonymousClass4) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                JSONObject data;
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (!this.$adPlayer.getWebViewContainer().isRenderProcessGone().getValue().booleanValue()) {
                    AdObject adObject = this.$ad.element;
                    GameServerIdReader gameServerIdReader = this.this$0.gameServerIdReader;
                    Object playerServerId = this.$ad.element.getPlayerServerId();
                    Object obj2 = gameServerIdReader.getJsonStorage().get(gameServerIdReader.getKey());
                    if (obj2 != null) {
                        if (!(obj2 instanceof String)) {
                            obj2 = playerServerId;
                        }
                        if (obj2 != null) {
                            playerServerId = obj2;
                        }
                    }
                    if (gameServerIdReader.getJsonStorage().get(gameServerIdReader.getKey()) != null) {
                        gameServerIdReader.getJsonStorage().delete(gameServerIdReader.getKey());
                    }
                    adObject.setPlayerServerId((String) playerServerId);
                    this.$adObject.getState().setValue(AdObjectState.SHOWING);
                    if (this.$isFullscreenShow) {
                        this.this$0.accelerometerRepository.start();
                    }
                    AdPlayer adPlayer = this.$adPlayer;
                    UnityAdsShowOptions unityAdsShowOptions = this.$showOptions;
                    adPlayer.show(new AndroidShowOptions((unityAdsShowOptions == null || (data = unityAdsShowOptions.getData()) == null) ? null : JSONObjectExtensionsKt.toBuiltInMap(data), this.$ad.element.getPlacementId(), this.$ad.element.isOfferwallAd(), this.$ad.element.getOfferwallPlacementName()));
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$5, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidShow.kt */
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$5", f = "AndroidShow.kt", l = {101}, m = "invokeSuspend")
        public static final class AnonymousClass5 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref$ObjectRef<AdObject> $ad;
            final /* synthetic */ AdObject $adObject;
            final /* synthetic */ boolean $isFullscreenShow;
            final /* synthetic */ ByteString $opportunityId;
            int label;
            final /* synthetic */ AndroidShow this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass5(boolean z, AndroidShow androidShow, AdObject adObject, ByteString byteString, Ref$ObjectRef<AdObject> ref$ObjectRef, Continuation<? super AnonymousClass5> continuation) {
                super(3, continuation);
                this.$isFullscreenShow = z;
                this.this$0 = androidShow;
                this.$adObject = adObject;
                this.$opportunityId = byteString;
                this.$ad = ref$ObjectRef;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
                return new AnonymousClass5(this.$isFullscreenShow, this.this$0, this.$adObject, this.$opportunityId, this.$ad, continuation).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (this.$isFullscreenShow) {
                        this.this$0.accelerometerRepository.stop();
                    }
                    this.$adObject.getState().setValue(AdObjectState.COMPLETED);
                    this.this$0.adRepository.removeAd(this.$opportunityId);
                    PreShowWebViewStrategy preShowWebViewStrategy = this.this$0.preShowStrategy;
                    AdObject adObject = this.$ad.element;
                    this.label = 1;
                    if (preShowWebViewStrategy.onShowComplete(adObject, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$6, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidShow.kt */
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$6", f = "AndroidShow.kt", l = {104}, m = "invokeSuspend")
        public static final class AnonymousClass6 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, ShowEvent, Continuation<? super Boolean>, Object> {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            public AnonymousClass6(Continuation<? super AnonymousClass6> continuation) {
                super(3, continuation);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, ShowEvent showEvent, Continuation<? super Boolean> continuation) {
                AnonymousClass6 anonymousClass6 = new AnonymousClass6(continuation);
                anonymousClass6.L$0 = flowCollector;
                anonymousClass6.L$1 = showEvent;
                return anonymousClass6.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                ShowEvent showEvent;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    ShowEvent showEvent2 = (ShowEvent) this.L$1;
                    this.L$0 = showEvent2;
                    this.label = 1;
                    if (flowCollector.emit(showEvent2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    showEvent = showEvent2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    showEvent = (ShowEvent) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxBoolean(((showEvent instanceof ShowEvent.Completed) || (showEvent instanceof ShowEvent.Error)) ? false : true);
            }
        }
    }

    @Override // com.unity3d.ads.core.domain.Show
    public Flow<ShowEvent> invoke(AdObject adObject, UnityAdsShowOptions unityAdsShowOptions) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return FlowKt.flow(new AnonymousClass1(adObject, this, unityAdsShowOptions, null));
    }

    @Override // com.unity3d.ads.core.domain.Show
    public Object terminate(AdObject adObject, Continuation<? super Unit> continuation) {
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer == null) {
            return Unit.INSTANCE;
        }
        Object objDestroy = adPlayer.destroy(continuation);
        return objDestroy == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDestroy : Unit.INSTANCE;
    }
}
