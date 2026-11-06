package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sj1 extends as {
    public final Optional q;
    public final t91 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sj1(String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional webView, v3 adEventEmitter, fm0 delegatingAdListener, zx0 fullScreenAdPresenter, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, BaseRequest baseRequest, Optional gmaWebViewContainer, t91 impressionDataWrapper) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, webView, adEventEmitter, delegatingAdListener, fullScreenAdPresenter, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdListener, "delegatingAdListener");
        Intrinsics.checkNotNullParameter(fullScreenAdPresenter, "fullScreenAdPresenter");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(gmaWebViewContainer, "gmaWebViewContainer");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.q = gmaWebViewContainer;
        this.r = impressionDataWrapper;
    }
}
