package com.unity3d.ads.core.domain;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import io.bidmachine.protobuf.EventTypeExtended;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidGetWebViewContainerUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetWebViewContainerUseCase implements GetWebViewContainerUseCase {
    private final Context context;
    private final CoroutineDispatcher defaultDispatcher;
    private final GetCachedAsset getCachedAsset;
    private final CoroutineDispatcher mainDispatcher;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics;

    public AndroidGetWebViewContainerUseCase(Context context, GetCachedAsset getCachedAsset, SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics, CoroutineDispatcher mainDispatcher, CoroutineDispatcher defaultDispatcher, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(getCachedAsset, "getCachedAsset");
        Intrinsics.checkNotNullParameter(sendWebViewClientErrorDiagnostics, "sendWebViewClientErrorDiagnostics");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.context = context;
        this.getCachedAsset = getCachedAsset;
        this.sendWebViewClientErrorDiagnostics = sendWebViewClientErrorDiagnostics;
        this.mainDispatcher = mainDispatcher;
        this.defaultDispatcher = defaultDispatcher;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    @Override // com.unity3d.ads.core.domain.GetWebViewContainerUseCase
    @SuppressLint({"SetJavaScriptEnabled"})
    public Object invoke(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super AndroidWebViewContainer> continuation) {
        return BuildersKt.withContext(this.mainDispatcher, new AnonymousClass2(new AndroidWebViewClient(this.getCachedAsset, this.sendDiagnosticEvent), coroutineScope, adObject, null), continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetWebViewContainerUseCase.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$2", f = "AndroidGetWebViewContainerUseCase.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AndroidWebViewContainer>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ CoroutineScope $adPlayerScope;
        final /* synthetic */ AndroidWebViewClient $newWebViewClient;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AndroidWebViewClient androidWebViewClient, CoroutineScope coroutineScope, AdObject adObject, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$newWebViewClient = androidWebViewClient;
            this.$adPlayerScope = coroutineScope;
            this.$adObject = adObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidGetWebViewContainerUseCase.this.new AnonymousClass2(this.$newWebViewClient, this.$adPlayerScope, this.$adObject, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AndroidWebViewContainer> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            WebView webView = new WebView(AndroidGetWebViewContainerUseCase.this.context);
            AndroidWebViewClient androidWebViewClient = this.$newWebViewClient;
            WebSettings settings = webView.getSettings();
            settings.setAllowFileAccess(false);
            settings.setBlockNetworkImage(false);
            settings.setBlockNetworkLoads(false);
            settings.setBuiltInZoomControls(false);
            settings.setCacheMode(-1);
            settings.setDatabaseEnabled(false);
            settings.setDisplayZoomControls(false);
            settings.setDomStorageEnabled(false);
            settings.setGeolocationEnabled(false);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(false);
            settings.setLoadsImagesAutomatically(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            settings.setMixedContentMode(1);
            settings.setNeedInitialFocus(true);
            settings.setSupportMultipleWindows(false);
            settings.setSupportZoom(false);
            settings.setUseWideViewPort(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            webView.setWebViewClient(androidWebViewClient);
            webView.setHorizontalScrollBarEnabled(false);
            webView.setVerticalScrollBarEnabled(false);
            webView.setInitialScale(0);
            webView.setBackgroundColor(0);
            webView.setBackgroundResource(0);
            return new AndroidWebViewContainer(webView, this.$newWebViewClient, AndroidGetWebViewContainerUseCase.this.sendWebViewClientErrorDiagnostics, AndroidGetWebViewContainerUseCase.this.mainDispatcher, AndroidGetWebViewContainerUseCase.this.defaultDispatcher, this.$adPlayerScope, AndroidGetWebViewContainerUseCase.this.context, this.$adObject, AndroidGetWebViewContainerUseCase.this.sendDiagnosticEvent, false, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, null);
        }
    }
}
