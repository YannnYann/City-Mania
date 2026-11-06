package com.unity3d.ads.core.domain;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AdPlayerScope;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.WebViewConfiguration;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.domain.adload.PreloadedWebView;
import com.unity3d.ads.core.domain.adload.WebViewLessLoadStrategy;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidHandleGatewayAdResponse implements HandleGatewayAdResponse {
    private final AdPlayerScope adPlayerScope;
    private final AdRepository adRepository;
    private final CacheWebViewAssets cacheWebViewAssets;
    private final CampaignRepository campaignRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetAdPlayer getAdPlayer;
    private final HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer;
    private final GetLatestWebViewConfiguration getLatestWebViewConfiguration;
    private final GetOperativeEventApi getOperativeEventApi;
    private final GetWebViewBridgeUseCase getWebViewBridge;
    private final AndroidGetWebViewContainerUseCase getWebViewContainerUseCase;
    private final PreShowWebViewStrategy preShowStrategy;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final WebViewLessLoadStrategy webViewLessLoadStrategy;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", l = {371, 377}, m = "cleanup")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.cleanup(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", l = {110, Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 152, ModuleDescriptor.MODULE_VERSION, 229, 287, 288, 300, 331, 337}, m = "invoke")
    public static final class C40251 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public C40251(Continuation<? super C40251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.invoke(null, null, null, null, null, null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", l = {347}, m = "loadUrl")
    public static final class C40261 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C40261(Continuation<? super C40261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.loadUrl(null, null, null, this);
        }
    }

    public AndroidHandleGatewayAdResponse(AdRepository adRepository, AndroidGetWebViewContainerUseCase getWebViewContainerUseCase, GetWebViewBridgeUseCase getWebViewBridge, DeviceInfoRepository deviceInfoRepository, HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer, CampaignRepository campaignRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, GetLatestWebViewConfiguration getLatestWebViewConfiguration, AdPlayerScope adPlayerScope, GetAdPlayer getAdPlayer, CacheWebViewAssets cacheWebViewAssets, WebViewLessLoadStrategy webViewLessLoadStrategy, SessionRepository sessionRepository, PreShowWebViewStrategy preShowStrategy) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(getWebViewContainerUseCase, "getWebViewContainerUseCase");
        Intrinsics.checkNotNullParameter(getWebViewBridge, "getWebViewBridge");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(getHandleInvocationsFromAdViewer, "getHandleInvocationsFromAdViewer");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getLatestWebViewConfiguration, "getLatestWebViewConfiguration");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(getAdPlayer, "getAdPlayer");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        Intrinsics.checkNotNullParameter(webViewLessLoadStrategy, "webViewLessLoadStrategy");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(preShowStrategy, "preShowStrategy");
        this.adRepository = adRepository;
        this.getWebViewContainerUseCase = getWebViewContainerUseCase;
        this.getWebViewBridge = getWebViewBridge;
        this.deviceInfoRepository = deviceInfoRepository;
        this.getHandleInvocationsFromAdViewer = getHandleInvocationsFromAdViewer;
        this.campaignRepository = campaignRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getLatestWebViewConfiguration = getLatestWebViewConfiguration;
        this.adPlayerScope = adPlayerScope;
        this.getAdPlayer = getAdPlayer;
        this.cacheWebViewAssets = cacheWebViewAssets;
        this.webViewLessLoadStrategy = webViewLessLoadStrategy;
        this.sessionRepository = sessionRepository;
        this.preShowStrategy = preShowStrategy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03b4 A[Catch: all -> 0x03d2, CancellationException -> 0x03d6, TryCatch #113 {CancellationException -> 0x03d6, all -> 0x03d2, blocks: (B:148:0x04df, B:155:0x04f3, B:107:0x03a5, B:109:0x03b4, B:111:0x03bc, B:122:0x041e, B:124:0x042e, B:118:0x03e7), top: B:563:0x03a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03e7 A[Catch: all -> 0x03d2, CancellationException -> 0x03d6, TRY_LEAVE, TryCatch #113 {CancellationException -> 0x03d6, all -> 0x03d2, blocks: (B:148:0x04df, B:155:0x04f3, B:107:0x03a5, B:109:0x03b4, B:111:0x03bc, B:122:0x041e, B:124:0x042e, B:118:0x03e7), top: B:563:0x03a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x042e A[Catch: all -> 0x03d2, CancellationException -> 0x03d6, TRY_LEAVE, TryCatch #113 {CancellationException -> 0x03d6, all -> 0x03d2, blocks: (B:148:0x04df, B:155:0x04f3, B:107:0x03a5, B:109:0x03b4, B:111:0x03bc, B:122:0x041e, B:124:0x042e, B:118:0x03e7), top: B:563:0x03a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04df A[Catch: all -> 0x03d2, CancellationException -> 0x03d6, TRY_ENTER, TRY_LEAVE, TryCatch #113 {CancellationException -> 0x03d6, all -> 0x03d2, blocks: (B:148:0x04df, B:155:0x04f3, B:107:0x03a5, B:109:0x03b4, B:111:0x03bc, B:122:0x041e, B:124:0x042e, B:118:0x03e7), top: B:563:0x03a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05f7 A[Catch: all -> 0x0d02, CancellationException -> 0x0d09, TRY_ENTER, TRY_LEAVE, TryCatch #66 {CancellationException -> 0x0d09, all -> 0x0d02, blocks: (B:192:0x05c7, B:200:0x05f7), top: B:653:0x05c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x06b7 A[Catch: all -> 0x0713, CancellationException -> 0x0719, TRY_LEAVE, TryCatch #72 {CancellationException -> 0x0719, all -> 0x0713, blocks: (B:232:0x06b1, B:234:0x06b7, B:242:0x070f), top: B:641:0x06b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0733 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0874 A[Catch: all -> 0x0c76, CancellationException -> 0x0c7e, TRY_ENTER, TryCatch #82 {CancellationException -> 0x0c7e, all -> 0x0c76, blocks: (B:313:0x084c, B:322:0x0877, B:321:0x0874), top: B:622:0x084c }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x097d  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0ab1  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0afb A[Catch: all -> 0x0b98, CancellationException -> 0x0b9b, TRY_LEAVE, TryCatch #88 {CancellationException -> 0x0b9b, all -> 0x0b98, blocks: (B:375:0x0adc, B:377:0x0afb), top: B:610:0x0adc }] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0b9e  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x0d8b  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0dcb  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0dd3  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x05d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0865 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:618:0x08ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0541 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:663:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:664:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:665:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Type inference failed for: r0v132, types: [com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy] */
    /* JADX WARN: Type inference failed for: r11v52, types: [T, com.unity3d.ads.adplayer.AdPlayer] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v18, types: [T] */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v86 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v20 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v16 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r20v19 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v26 */
    /* JADX WARN: Type inference failed for: r20v32 */
    /* JADX WARN: Type inference failed for: r20v33 */
    /* JADX WARN: Type inference failed for: r20v34 */
    /* JADX WARN: Type inference failed for: r25v10, types: [com.unity3d.ads.core.data.model.AdObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r25v12 */
    /* JADX WARN: Type inference failed for: r25v15 */
    /* JADX WARN: Type inference failed for: r25v16 */
    /* JADX WARN: Type inference failed for: r25v17 */
    /* JADX WARN: Type inference failed for: r25v18 */
    /* JADX WARN: Type inference failed for: r25v19 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [com.unity3d.ads.core.data.model.AdObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v35, types: [com.unity3d.ads.core.domain.GetAdPlayer] */
    /* JADX WARN: Type inference failed for: r2v36, types: [T, com.unity3d.ads.adplayer.AdPlayer] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v45, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r48v0, types: [com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse] */
    /* JADX WARN: Type inference failed for: r50v3, types: [com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse] */
    /* JADX WARN: Type inference failed for: r50v4 */
    /* JADX WARN: Type inference failed for: r50v5 */
    /* JADX WARN: Type inference failed for: r50v6, types: [com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse] */
    /* JADX WARN: Type inference failed for: r51v20, types: [com.unity3d.ads.core.data.model.AdObject] */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.unity3d.ads.core.domain.HandleGatewayAdResponse
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(com.unity3d.ads.UnityAdsLoadOptions r49, com.google.protobuf.ByteString r50, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r51, android.content.Context r52, java.lang.String r53, gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticAdType r54, boolean r55, boolean r56, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.data.model.LoadResult> r57) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3568
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.invoke(com.unity3d.ads.UnityAdsLoadOptions, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, android.content.Context, java.lang.String, gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticAdType, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2", f = "AndroidHandleGatewayAdResponse.kt", l = {Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineScope $adScope;
        final /* synthetic */ AdObject $eagerAdObject;
        final /* synthetic */ Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> $loadWebView;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ String $webViewUrl;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$eagerAdObject = adObject;
            this.$webViewUrl = str;
            this.$response = adResponse;
            this.$adScope = coroutineScope;
            this.$loadWebView = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass2(this.$eagerAdObject, this.$webViewUrl, this.$response, this.$adScope, this.$loadWebView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PreShowWebViewStrategy preShowWebViewStrategy = AndroidHandleGatewayAdResponse.this.preShowStrategy;
                AdObject adObject = this.$eagerAdObject;
                String str = this.$webViewUrl;
                AdResponseOuterClass.AdResponse adResponse = this.$response;
                CoroutineScope coroutineScope = this.$adScope;
                Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> function2 = this.$loadWebView;
                this.label = 1;
                if (preShowWebViewStrategy.onLoadSuccess(adObject, str, adResponse, coroutineScope, function2, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3", f = "AndroidHandleGatewayAdResponse.kt", l = {295}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<AllowedPiiOuterClass.AllowedPii, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref$ObjectRef<AdPlayer> $adPlayer;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Ref$ObjectRef<AdPlayer> ref$ObjectRef, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$adPlayer = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$adPlayer, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AllowedPiiOuterClass.AllowedPii allowedPii, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(allowedPii, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AllowedPiiOuterClass.AllowedPii allowedPii = (AllowedPiiOuterClass.AllowedPii) this.L$0;
                AdPlayer adPlayer = this.$adPlayer.element;
                byte[] byteArray = allowedPii.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                this.label = 1;
                if (adPlayer.onAllowedPiiChange(byteArray, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4", f = "AndroidHandleGatewayAdResponse.kt", l = {301, 302}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref$ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ LoadEvent $loadEvent;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ AdObject $tmpAdObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(AdObject adObject, LoadEvent loadEvent, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref$ObjectRef<AdPlayer> ref$ObjectRef, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$tmpAdObject = adObject;
            this.$loadEvent = loadEvent;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass4(this.$tmpAdObject, this.$loadEvent, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
        
            if (r3.cleanup(r4, r5, r6, r7, r9) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r10)
                goto L56
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L32
            L1e:
                kotlin.ResultKt.throwOnFailure(r10)
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.this
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r10)
                com.unity3d.ads.core.data.model.AdObject r1 = r9.$tmpAdObject
                r9.label = r3
                java.lang.Object r10 = r10.onShowComplete(r1, r9)
                if (r10 != r0) goto L32
                goto L55
            L32:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.this
                java.lang.Error r4 = new java.lang.Error
                com.unity3d.ads.adplayer.model.LoadEvent r10 = r9.$loadEvent
                com.unity3d.ads.adplayer.model.LoadEvent$Error r10 = (com.unity3d.ads.adplayer.model.LoadEvent.Error) r10
                java.lang.String r10 = r10.getMessage()
                r4.<init>(r10)
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r9.label = r2
                r8 = r9
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L56
            L55:
                return r0
            L56:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5", f = "AndroidHandleGatewayAdResponse.kt", l = {320}, m = "invokeSuspend")
    public static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebViewConfiguration $webviewConfiguration;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(WebViewConfiguration webViewConfiguration, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$webviewConfiguration = webViewConfiguration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass5(this.$webviewConfiguration, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CacheWebViewAssets cacheWebViewAssets = AndroidHandleGatewayAdResponse.this.cacheWebViewAssets;
                WebViewConfiguration webViewConfiguration = this.$webviewConfiguration;
                this.label = 1;
                if (cacheWebViewAssets.invoke(webViewConfiguration, true, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6", f = "AndroidHandleGatewayAdResponse.kt", l = {332, 333}, m = "invokeSuspend")
    public static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref$ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ Ref$ObjectRef<AdObject> $preShowAdObject;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ CancellationException $t;
        int label;
        final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Ref$ObjectRef<AdObject> ref$ObjectRef, AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, CancellationException cancellationException, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref$ObjectRef<AdPlayer> ref$ObjectRef2, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$preShowAdObject = ref$ObjectRef;
            this.this$0 = androidHandleGatewayAdResponse;
            this.$t = cancellationException;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = ref$ObjectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass6(this.$preShowAdObject, this.this$0, this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        
            if (r3.cleanup(r4, r5, r6, r7, r9) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r10)
                goto L51
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L38
            L1e:
                kotlin.ResultKt.throwOnFailure(r10)
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.core.data.model.AdObject> r10 = r9.$preShowAdObject
                T r10 = r10.element
                com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
                if (r10 == 0) goto L38
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r1 = r9.this$0
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r1 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r1)
                r9.label = r3
                java.lang.Object r10 = r1.onShowComplete(r10, r9)
                if (r10 != r0) goto L38
                goto L50
            L38:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = r9.this$0
                java.util.concurrent.CancellationException r4 = r9.$t
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r9.label = r2
                r8 = r9
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L51
            L50:
                return r0
            L51:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass6.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7", f = "AndroidHandleGatewayAdResponse.kt", l = {338, 339}, m = "invokeSuspend")
    public static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref$ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ Ref$ObjectRef<AdObject> $preShowAdObject;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ Throwable $t;
        int label;
        final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass7(Ref$ObjectRef<AdObject> ref$ObjectRef, AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, Throwable th, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref$ObjectRef<AdPlayer> ref$ObjectRef2, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$preShowAdObject = ref$ObjectRef;
            this.this$0 = androidHandleGatewayAdResponse;
            this.$t = th;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = ref$ObjectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$preShowAdObject, this.this$0, this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        
            if (r3.cleanup(r4, r5, r6, r7, r9) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r10)
                goto L51
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L38
            L1e:
                kotlin.ResultKt.throwOnFailure(r10)
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.core.data.model.AdObject> r10 = r9.$preShowAdObject
                T r10 = r10.element
                com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
                if (r10 == 0) goto L38
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r1 = r9.this$0
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r1 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r1)
                r9.label = r3
                java.lang.Object r10 = r1.onShowComplete(r10, r9)
                if (r10 != r0) goto L38
                goto L50
            L38:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = r9.this$0
                java.lang.Throwable r4 = r9.$t
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r9.label = r2
                r8 = r9
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L51
            L50:
                return r0
            L51:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass7.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object loadUrl(com.unity3d.ads.core.data.model.AdObject r11, java.lang.String r12, com.unity3d.ads.adplayer.WebViewContainer r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.C40261
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1 r0 = (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.C40261) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1 r0 = new com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            long r11 = r0.J$0
            java.lang.Object r13 = r0.L$0
            com.unity3d.ads.core.data.model.AdObject r13 = (com.unity3d.ads.core.data.model.AdObject) r13
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L2f
            goto L54
        L2f:
            r0 = move-exception
            r14 = r0
            goto L60
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3a:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.time.TimeSource$Monotonic r14 = kotlin.time.TimeSource$Monotonic.INSTANCE
            long r4 = r14.m2921markNowz9LOYto()
            kotlin.Result$Companion r14 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L5c
            r0.L$0 = r11     // Catch: java.lang.Throwable -> L5c
            r0.J$0 = r4     // Catch: java.lang.Throwable -> L5c
            r0.label = r3     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r12 = r13.loadUrl(r12, r0)     // Catch: java.lang.Throwable -> L5c
            if (r12 != r1) goto L52
            return r1
        L52:
            r13 = r11
            r11 = r4
        L54:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r14 = kotlin.Result.m2760constructorimpl(r14)     // Catch: java.lang.Throwable -> L2f
        L5a:
            r5 = r13
            goto L6b
        L5c:
            r0 = move-exception
            r14 = r0
            r13 = r11
            r11 = r4
        L60:
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r14 = kotlin.ResultKt.createFailure(r14)
            java.lang.Object r14 = kotlin.Result.m2760constructorimpl(r14)
            goto L5a
        L6b:
            kotlin.Result r13 = kotlin.Result.m2759boximpl(r14)
            kotlin.time.TimedValue r14 = new kotlin.time.TimedValue
            long r11 = kotlin.time.TimeSource$Monotonic.ValueTimeMark.m2924elapsedNowUwyO8pc(r11)
            r0 = 0
            r14.<init>(r13, r11, r0)
            java.lang.Object r11 = r14.component1()
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.m2768unboximpl()
            long r12 = r14.m2933component2UwyO8pc()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r0 = r10.sendDiagnosticEvent
            boolean r14 = kotlin.Result.m2766isSuccessimpl(r11)
            if (r14 == 0) goto L93
            gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticEventType r14 = gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_SUCCESS_TIME
        L91:
            r1 = r14
            goto L96
        L93:
            gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticEventType r14 = gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_FAILURE_TIME
            goto L91
        L96:
            kotlin.time.DurationUnit r14 = kotlin.time.DurationUnit.MILLISECONDS
            double r12 = kotlin.time.Duration.m2900toDoubleimpl(r12, r14)
            java.lang.Double r2 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r12)
            r8 = 108(0x6c, float:1.51E-43)
            r9 = 0
            r3 = 0
            r4 = 0
            r6 = 0
            r7 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.loadUrl(com.unity3d.ads.core.data.model.AdObject, java.lang.String, com.unity3d.ads.adplayer.WebViewContainer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
    
        if (r14.destroy(r9) == r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object cleanup(java.lang.Throwable r14, com.google.protobuf.ByteString r15, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r16, com.unity3d.ads.adplayer.AdPlayer r17, kotlin.coroutines.Continuation<? super kotlin.Unit> r18) {
        /*
            r13 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass1
            if (r1 == 0) goto L16
            r1 = r0
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r1 = (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r9 = r1
            goto L1c
        L16:
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r1 = new com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1
            r1.<init>(r0)
            goto L14
        L1c:
            java.lang.Object r0 = r9.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r12 = 2
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 == r3) goto L39
            if (r2 != r12) goto L31
            kotlin.ResultKt.throwOnFailure(r0)
            goto Lab
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L39:
            java.lang.Object r14 = r9.L$0
            com.unity3d.ads.adplayer.AdPlayer r14 = (com.unity3d.ads.adplayer.AdPlayer) r14
            kotlin.ResultKt.throwOnFailure(r0)
            goto L9d
        L41:
            kotlin.ResultKt.throwOnFailure(r0)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl$Companion r0 = gatewayprotocol.v1.OperativeEventErrorDataKt.Dsl.Companion
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData$Builder r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder()
            java.lang.String r4 = "newBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl r0 = r0._create(r2)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorType r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED
            r0.setErrorType(r2)
            java.lang.Throwable r2 = r14.getCause()
            if (r2 == 0) goto L64
            java.lang.String r2 = r2.getMessage()
            if (r2 != 0) goto L6c
        L64:
            java.lang.String r2 = r14.getMessage()
            if (r2 != 0) goto L6c
            java.lang.String r2 = ""
        L6c:
            r0.setMessage(r2)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData r14 = r0._build()
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r2 = r13.getOperativeEventApi
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType r0 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_LOAD_ERROR
            com.google.protobuf.ByteString r5 = r16.getTrackingToken()
            java.lang.String r4 = "getTrackingToken(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.google.protobuf.ByteString r6 = r14.toByteString()
            java.lang.String r14 = "toByteString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r14)
            r14 = r17
            r9.L$0 = r14
            r9.label = r3
            r7 = 0
            r8 = 0
            r10 = 48
            r11 = 0
            r4 = r15
            r3 = r0
            java.lang.Object r15 = com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r15 != r1) goto L9d
            goto Laa
        L9d:
            if (r14 == 0) goto Lae
            r15 = 0
            r9.L$0 = r15
            r9.label = r12
            java.lang.Object r14 = r14.destroy(r9)
            if (r14 != r1) goto Lab
        Laa:
            return r1
        Lab:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        Lae:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.cleanup(java.lang.Throwable, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, com.unity3d.ads.adplayer.AdPlayer, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
