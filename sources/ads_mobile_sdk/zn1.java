package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zn1 extends ci1 {
    public final View n;
    public final AdSize o;
    public final rm3 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn1(String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional gmaWebView, v3 adEventEmitter, fm0 delegatingAdEventListener, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, View view, AdSize resolvedAdSize, rm3 swipeableInterstitialAdCore, BaseRequest baseRequest) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, gmaWebView, adEventEmitter, delegatingAdEventListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdEventListener, "delegatingAdEventListener");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(resolvedAdSize, "resolvedAdSize");
        Intrinsics.checkNotNullParameter(swipeableInterstitialAdCore, "swipeableInterstitialAdCore");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.n = view;
        this.o = resolvedAdSize;
        this.p = swipeableInterstitialAdCore;
    }
}
