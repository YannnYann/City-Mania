package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class fl0 extends wy2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl0(Context applicationContext, CoroutineContext uiContext, CoroutineContext loadContext, CoroutineScope loadScope, CoroutineScope backgroundScope, dw2 componentProvider, e33 refreshHelper, ao0 displayUtil, BannerAdRequest bannerAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState) {
        super(applicationContext, uiContext, loadContext, loadScope, backgroundScope, componentProvider, refreshHelper, displayUtil, bannerAdRequest, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, initializationConfigWrapper, z, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(loadContext, "loadContext");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(refreshHelper, "refreshHelper");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(bannerAdRequest, "bannerAdRequest");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
    }

    @Override // ads_mobile_sdk.wy2
    public final o53 a(Context context, AdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(context, "context");
        return new o53(context, adSize);
    }
}
