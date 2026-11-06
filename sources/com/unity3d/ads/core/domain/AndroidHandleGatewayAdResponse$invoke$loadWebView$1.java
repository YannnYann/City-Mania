package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.adload.PreloadedWebView;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$loadWebView$1", f = "AndroidHandleGatewayAdResponse.kt", l = {Sdk.SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk.SDKError.Reason.AD_RESPONSE_EMPTY_VALUE}, m = "invokeSuspend")
public final class AndroidHandleGatewayAdResponse$invoke$loadWebView$1 extends SuspendLambda implements Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> {
    final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticAdType $adType;
    final /* synthetic */ AdObject $eagerAdObject;
    final /* synthetic */ String $eagerBase64ImpressionConfig;
    final /* synthetic */ AdResponseOuterClass.AdResponse $response;
    final /* synthetic */ String $webViewUrl;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$loadWebView$1(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, AdObject adObject, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, AdResponseOuterClass.AdResponse adResponse, String str, String str2, Continuation<? super AndroidHandleGatewayAdResponse$invoke$loadWebView$1> continuation) {
        super(2, continuation);
        this.this$0 = androidHandleGatewayAdResponse;
        this.$eagerAdObject = adObject;
        this.$adType = diagnosticAdType;
        this.$response = adResponse;
        this.$eagerBase64ImpressionConfig = str;
        this.$webViewUrl = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AndroidHandleGatewayAdResponse$invoke$loadWebView$1 androidHandleGatewayAdResponse$invoke$loadWebView$1 = new AndroidHandleGatewayAdResponse$invoke$loadWebView$1(this.this$0, this.$eagerAdObject, this.$adType, this.$response, this.$eagerBase64ImpressionConfig, this.$webViewUrl, continuation);
        androidHandleGatewayAdResponse$invoke$loadWebView$1.L$0 = obj;
        return androidHandleGatewayAdResponse$invoke$loadWebView$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WebViewContainer webViewContainer, Continuation<? super PreloadedWebView> continuation) {
        return ((AndroidHandleGatewayAdResponse$invoke$loadWebView$1) create(webViewContainer, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        WebViewBridge webViewBridge;
        AdPlayer adPlayer;
        Object objSingle;
        AdPlayer adPlayer2;
        WebViewBridge webViewBridge2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            WebViewContainer webViewContainer = (WebViewContainer) this.L$0;
            WebViewBridge webViewBridgeInvoke = this.this$0.getWebViewBridge.invoke(webViewContainer, this.this$0.adPlayerScope);
            AdPlayer adPlayerInvoke = this.this$0.getAdPlayer.invoke(webViewBridgeInvoke, webViewContainer, this.$eagerAdObject, this.$adType);
            AdObject adObjectCopy$default = AdObject.copy$default(this.$eagerAdObject, this.$eagerAdObject.getAdScope(), null, null, null, false, null, adPlayerInvoke, null, null, false, null, null, null, null, null, null, this.$eagerAdObject.getWebViewLessLoadingRequiredData(), 65470, null);
            HandleInvocationsFromAdViewer handleInvocationsFromAdViewer = this.this$0.getHandleInvocationsFromAdViewer;
            ByteString adData = this.$response.getAdData();
            Intrinsics.checkNotNullExpressionValue(adData, "getAdData(...)");
            String base64$default = ProtobufExtensionsKt.toBase64$default(adData, false, 1, null);
            String str = this.$eagerBase64ImpressionConfig;
            Intrinsics.checkNotNull(str);
            ByteString adDataRefreshToken = this.$response.getAdDataRefreshToken();
            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken, "getAdDataRefreshToken(...)");
            webViewBridgeInvoke.setExposedFunctions(handleInvocationsFromAdViewer.invoke(base64$default, ProtobufExtensionsKt.toBase64$default(adDataRefreshToken, false, 1, null), str, adObjectCopy$default));
            AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse = this.this$0;
            AdObject adObject = this.$eagerAdObject;
            String str2 = this.$webViewUrl;
            this.L$0 = webViewBridgeInvoke;
            this.L$1 = adPlayerInvoke;
            this.label = 1;
            if (androidHandleGatewayAdResponse.loadUrl(adObject, str2, webViewContainer, this) != coroutine_suspended) {
                webViewBridge = webViewBridgeInvoke;
                adPlayer = adPlayerInvoke;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adPlayer2 = (AdPlayer) this.L$1;
            webViewBridge2 = (WebViewBridge) this.L$0;
            ResultKt.throwOnFailure(obj);
            objSingle = obj;
            return new PreloadedWebView(adPlayer2, webViewBridge2, (LoadEvent) objSingle);
        }
        adPlayer = (AdPlayer) this.L$1;
        webViewBridge = (WebViewBridge) this.L$0;
        ResultKt.throwOnFailure(obj);
        Flow<LoadEvent> onLoadEvent = adPlayer.getOnLoadEvent();
        this.L$0 = webViewBridge;
        this.L$1 = adPlayer;
        this.label = 2;
        objSingle = FlowKt.single(onLoadEvent, this);
        if (objSingle != coroutine_suspended) {
            adPlayer2 = adPlayer;
            webViewBridge2 = webViewBridge;
            return new PreloadedWebView(adPlayer2, webViewBridge2, (LoadEvent) objSingle);
        }
        return coroutine_suspended;
    }
}
