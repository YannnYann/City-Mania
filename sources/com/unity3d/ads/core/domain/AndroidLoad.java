package com.unity3d.ads.core.domain;

import ads_mobile_sdk.fh;
import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsErrorKt;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidLoad.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidLoad implements Load {
    private final AdRepository adRepository;
    private final CoroutineDispatcher defaultDispatcher;
    private final GatewayClient gatewayClient;
    private final GetAdPlayerConfigRequest getAdPlayerConfigRequest;
    private final GetAdRequest getAdRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final HandleGatewayAdResponse handleGatewayAdResponse;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final ValidateExtrasSize validateExtrasSize;

    public AndroidLoad(CoroutineDispatcher defaultDispatcher, GetAdRequest getAdRequest, GetAdPlayerConfigRequest getAdPlayerConfigRequest, GetRequestPolicy getRequestPolicy, HandleGatewayAdResponse handleGatewayAdResponse, SessionRepository sessionRepository, GatewayClient gatewayClient, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, ValidateExtrasSize validateExtrasSize) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getAdRequest, "getAdRequest");
        Intrinsics.checkNotNullParameter(getAdPlayerConfigRequest, "getAdPlayerConfigRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(handleGatewayAdResponse, "handleGatewayAdResponse");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(validateExtrasSize, "validateExtrasSize");
        this.defaultDispatcher = defaultDispatcher;
        this.getAdRequest = getAdRequest;
        this.getAdPlayerConfigRequest = getAdPlayerConfigRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.handleGatewayAdResponse = handleGatewayAdResponse;
        this.sessionRepository = sessionRepository;
        this.gatewayClient = gatewayClient;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.validateExtrasSize = validateExtrasSize;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidLoad$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidLoad.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidLoad$invoke$2", f = "AndroidLoad.kt", l = {fh.H0, 101, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, 166}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super LoadResult>, Object> {
        final /* synthetic */ AdRequestOuterClass.BannerSize $bannerSize;
        final /* synthetic */ Context $context;
        final /* synthetic */ HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup $headerBiddingAdMarkup;
        final /* synthetic */ UnityAdsLoadOptions $loadOptions;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ String $placement;
        int I$0;
        int I$1;
        long J$0;
        long J$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        final /* synthetic */ AndroidLoad this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AdRequestOuterClass.BannerSize bannerSize, AndroidLoad androidLoad, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, ByteString byteString, String str, UnityAdsLoadOptions unityAdsLoadOptions, Context context, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$bannerSize = bannerSize;
            this.this$0 = androidLoad;
            this.$headerBiddingAdMarkup = headerBiddingAdMarkup;
            this.$opportunityId = byteString;
            this.$placement = str;
            this.$loadOptions = unityAdsLoadOptions;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$bannerSize, this.this$0, this.$headerBiddingAdMarkup, this.$opportunityId, this.$placement, this.$loadOptions, this.$context, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super LoadResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0353  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x0356  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0368 A[Catch: UnityAdsNetworkException -> 0x036f, TryCatch #14 {UnityAdsNetworkException -> 0x036f, blocks: (B:99:0x032d, B:103:0x0358, B:105:0x0368, B:109:0x0378), top: B:281:0x032d }] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0376  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x047f  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x04f8  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x04fb  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x050d A[Catch: UnityAdsNetworkException -> 0x0514, TryCatch #28 {UnityAdsNetworkException -> 0x0514, blocks: (B:163:0x04d2, B:167:0x04fd, B:169:0x050d, B:173:0x051a, B:176:0x053e, B:178:0x0557, B:183:0x0564, B:184:0x058a, B:186:0x05ff, B:187:0x0609, B:189:0x0616, B:190:0x0627), top: B:308:0x04d2 }] */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0518  */
        /* JADX WARN: Removed duplicated region for block: B:176:0x053e A[Catch: UnityAdsNetworkException -> 0x0514, TRY_ENTER, TryCatch #28 {UnityAdsNetworkException -> 0x0514, blocks: (B:163:0x04d2, B:167:0x04fd, B:169:0x050d, B:173:0x051a, B:176:0x053e, B:178:0x0557, B:183:0x0564, B:184:0x058a, B:186:0x05ff, B:187:0x0609, B:189:0x0616, B:190:0x0627), top: B:308:0x04d2 }] */
        /* JADX WARN: Removed duplicated region for block: B:184:0x058a A[Catch: UnityAdsNetworkException -> 0x0514, TryCatch #28 {UnityAdsNetworkException -> 0x0514, blocks: (B:163:0x04d2, B:167:0x04fd, B:169:0x050d, B:173:0x051a, B:176:0x053e, B:178:0x0557, B:183:0x0564, B:184:0x058a, B:186:0x05ff, B:187:0x0609, B:189:0x0616, B:190:0x0627), top: B:308:0x04d2 }] */
        /* JADX WARN: Removed duplicated region for block: B:194:0x063e  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x0640  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0668  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x0670 A[Catch: UnityAdsNetworkException -> 0x0691, TryCatch #32 {UnityAdsNetworkException -> 0x0691, blocks: (B:203:0x066a, B:205:0x0670, B:207:0x067a, B:210:0x0695, B:211:0x069c, B:215:0x06a6, B:216:0x06ab), top: B:315:0x066a }] */
        /* JADX WARN: Removed duplicated region for block: B:211:0x069c A[Catch: UnityAdsNetworkException -> 0x0691, TryCatch #32 {UnityAdsNetworkException -> 0x0691, blocks: (B:203:0x066a, B:205:0x0670, B:207:0x067a, B:210:0x0695, B:211:0x069c, B:215:0x06a6, B:216:0x06ab), top: B:315:0x066a }] */
        /* JADX WARN: Removed duplicated region for block: B:243:0x06e3  */
        /* JADX WARN: Removed duplicated region for block: B:320:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:321:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:323:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:83:0x02d5  */
        /* JADX WARN: Type inference failed for: r11v11 */
        /* JADX WARN: Type inference failed for: r11v16 */
        /* JADX WARN: Type inference failed for: r11v23 */
        /* JADX WARN: Type inference failed for: r13v18 */
        /* JADX WARN: Type inference failed for: r13v20 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r14v5, types: [com.unity3d.ads.core.domain.AndroidLoad, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r14v7 */
        /* JADX WARN: Type inference failed for: r15v19, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v27 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4, types: [com.unity3d.ads.core.domain.AndroidLoad, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r21v16 */
        /* JADX WARN: Type inference failed for: r21v17 */
        /* JADX WARN: Type inference failed for: r21v18 */
        /* JADX WARN: Type inference failed for: r21v19, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r21v20 */
        /* JADX WARN: Type inference failed for: r21v38 */
        /* JADX WARN: Type inference failed for: r21v39 */
        /* JADX WARN: Type inference failed for: r21v40 */
        /* JADX WARN: Type inference failed for: r21v41 */
        /* JADX WARN: Type inference failed for: r25v2 */
        /* JADX WARN: Type inference failed for: r25v3 */
        /* JADX WARN: Type inference failed for: r25v4 */
        /* JADX WARN: Type inference failed for: r25v7 */
        /* JADX WARN: Type inference failed for: r25v8 */
        /* JADX WARN: Type inference failed for: r4v0, types: [com.unity3d.ads.core.domain.AndroidLoad, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v19 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v21 */
        /* JADX WARN: Type inference failed for: r4v23 */
        /* JADX WARN: Type inference failed for: r4v27 */
        /* JADX WARN: Type inference failed for: r4v28 */
        /* JADX WARN: Type inference failed for: r4v31 */
        /* JADX WARN: Type inference failed for: r4v32 */
        /* JADX WARN: Type inference failed for: r4v34 */
        /* JADX WARN: Type inference failed for: r4v35 */
        /* JADX WARN: Type inference failed for: r4v36, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r4v39 */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Type inference failed for: r4v40 */
        /* JADX WARN: Type inference failed for: r4v41, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r4v42, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r4v49 */
        /* JADX WARN: Type inference failed for: r4v52 */
        /* JADX WARN: Type inference failed for: r4v54, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r4v56 */
        /* JADX WARN: Type inference failed for: r4v57 */
        /* JADX WARN: Type inference failed for: r7v13 */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v15 */
        /* JADX WARN: Type inference failed for: r7v16 */
        /* JADX WARN: Type inference failed for: r7v28 */
        /* JADX WARN: Type inference failed for: r7v29 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v61 */
        /* JADX WARN: Type inference failed for: r8v62 */
        /* JADX WARN: Type inference failed for: r9v12, types: [com.unity3d.ads.core.domain.AndroidLoad, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v28 */
        /* JADX WARN: Type inference failed for: r9v3 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r43) {
            /*
                Method dump skipped, instruction units count: 1836
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidLoad.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.unity3d.ads.core.domain.Load
    public Object invoke(Context context, String str, ByteString byteString, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, AdRequestOuterClass.BannerSize bannerSize, UnityAdsLoadOptions unityAdsLoadOptions, Continuation<? super LoadResult> continuation) {
        return BuildersKt.withContext(this.defaultDispatcher, new AnonymousClass2(bannerSize, this, headerBiddingAdMarkup, byteString, str, unityAdsLoadOptions, context, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadResult.Failure handleGatewayException(UnityAdsNetworkException unityAdsNetworkException) {
        ErrorOuterClass.PublicErrorCode errorCode;
        String loadErrorMsg;
        ErrorOuterClass.PublicErrorCode errorCode2;
        String str;
        boolean z = unityAdsNetworkException instanceof NetworkTimeoutException;
        if (z) {
            errorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_TIMEOUT;
        } else if (!(unityAdsNetworkException instanceof GatewayException) || (errorCode = ((GatewayException) unityAdsNetworkException).getErrorCode()) == null) {
            errorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NETWORK;
        }
        ErrorOuterClass.PublicErrorCode publicErrorCode = errorCode;
        if (z) {
            loadErrorMsg = UnityAdsErrorKt.MSG_BOLD_LOAD_FAIL_TIME_OUT;
        } else if (!(unityAdsNetworkException instanceof GatewayException) || (errorCode2 = ((GatewayException) unityAdsNetworkException).getErrorCode()) == null || (loadErrorMsg = UnityAdsErrorKt.getLoadErrorMsg(errorCode2)) == null) {
            loadErrorMsg = UnityAdsErrorKt.getLoadErrorMsg(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NETWORK);
        }
        String str2 = loadErrorMsg;
        if (z) {
            str = "timeout";
        } else {
            str = "gateway";
        }
        return new LoadResult.Failure(publicErrorCode, str2, unityAdsNetworkException, str, unityAdsNetworkException.getMessage(), unityAdsNetworkException instanceof GatewayException ? ((GatewayException) unityAdsNetworkException).getErrorToken() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCachePhaseFailure(LoadResult.Failure failure) {
        String reason = failure.getReason();
        int iHashCode = reason.hashCode();
        return iHashCode != -1131560769 ? iHashCode != -952823001 ? iHashCode == -711698443 && reason.equals("adviewer") : reason.equals("invalid_url") : reason.equals("no_webview_entry_point");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestCount(boolean z) {
        if (z) {
            this.sessionRepository.incrementBannerLoadRequestCount();
        } else {
            this.sessionRepository.incrementLoadRequestCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestAdmCount(boolean z) {
        if (z) {
            this.sessionRepository.incrementBannerLoadRequestAdmCount();
        } else {
            this.sessionRepository.incrementLoadRequestAdmCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(ByteString byteString, String str, boolean z, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, UnityAdsLoadOptions unityAdsLoadOptions) {
        return SendDiagnosticEvent.Companion.getTmpAdObjectForEventSending(byteString, str, z, unityAdsLoadOptions, diagnosticAdType);
    }
}
