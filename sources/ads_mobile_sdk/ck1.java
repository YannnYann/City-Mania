package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ck1 extends ci1 {
    public final View n;
    public final g33 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck1(View view, String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional gmaWebView, v3 adEventEmitter, fm0 delegatingAdEventListener, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, g33 refreshListener, BaseRequest baseRequest) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, gmaWebView, adEventEmitter, delegatingAdEventListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(view, "view");
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
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.n = view;
        this.o = refreshListener;
    }

    public final View o() {
        return this.n;
    }

    public final g33 n() {
        return this.o;
    }

    public final AdSize m() {
        p2 p2Var;
        if (b().s0) {
            List list = b().b0;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (StringsKt__StringsKt.contains$default((CharSequence) it.next(), (CharSequence) "FirstParty", false, 2, (Object) null)) {
                    }
                }
            }
            return new AdSize(this.n.getWidth(), this.n.getHeight());
        }
        if (!b().y.isEmpty()) {
            p2Var = (p2) b().y.get(0);
        } else {
            p2Var = (p2) b().g.get(0);
        }
        if (p2Var.c) {
            return AdSize.FLUID;
        }
        return new AdSize(p2Var.a, p2Var.b);
    }
}
