package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public abstract class as extends ci1 {
    public final zx0 n;
    public boolean o;
    public boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public as(String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional webView, v3 adEventEmitter, fm0 delegatingAdListener, zx0 fullScreenAdPresenter, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, BaseRequest baseRequest) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, webView, adEventEmitter, delegatingAdListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
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
        this.n = fullScreenAdPresenter;
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Job jobL = l();
        if (jobL != null) {
            Job.DefaultImpls.cancel$default(jobL, null, 1, null);
        }
        a((Job) null);
        this.n.a(context, this.o, this.p);
    }
}
