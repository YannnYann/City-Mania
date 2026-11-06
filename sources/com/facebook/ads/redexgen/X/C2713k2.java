package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.api.NativeAdViewApi;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2713k2 implements NativeAdViewApi {
    public static String[] A00 = {"4lhDSJeQx8ImoxNIMYyIsOpW4XJuQDgf", "lqCKp7vrLkXGNxXrvc6I3m7c", "zCZ5ygsfQGVhB3Y237HbJ1q9o76yX", "bq9vw23WcXUY1kk1BWsR1Wz1yPOY5uBm", "", "Hv6Nwq3QZSzEF0Nb8JqXMZqCHWYzLqUn", "tYYpfGiIizklMQ8", "46C5bVFnHWUcfGRcMiONp8ja9wt0MV54"};

    public static View A00(C1643Hi c1643Hi, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C2939nk c2939nk = (C2939nk) nativeAdViewAttributes.getInternalAttributes();
        GT internalNativeAd = GT.A0L(nativeAd.getInternalNativeAd());
        internalNativeAd.A1h(EnumC2940nl.A00(type.getEnumCode()));
        internalNativeAd.A1g(c2939nk);
        C7F c7f = new C7F();
        NativeAdLayout mediumRectTemplateLayout = new NativeAdLayout(c1643Hi, c7f);
        c7f.A08(mediumRectTemplateLayout, c1643Hi, nativeAd, c2939nk);
        mediumRectTemplateLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (AbstractC3070px.A02 * type.getHeight())));
        return mediumRectTemplateLayout;
    }

    public static View A01(C1643Hi c1643Hi, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        GT gtA0L = GT.A0L(nativeAd.getInternalNativeAd());
        C2939nk c2939nk = (C2939nk) nativeAdViewAttributes.getInternalAttributes();
        gtA0L.A1h(EnumC2940nl.A0B);
        gtA0L.A1g(c2939nk);
        C7F c7f = new C7F();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(c1643Hi, c7f);
        c7f.A08(nativeAdLayout, c1643Hi, nativeAd, c2939nk);
        return nativeAdLayout;
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd) {
        return render(context, nativeAd, (NativeAdViewAttributes) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
        return render(context, nativeAd, type, null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) throws Throwable {
        try {
            return A00(C2698jn.A03(context), nativeAd, type, nativeAdViewAttributes);
        } catch (Throwable th) {
            C1643Hi c1643HiA03 = C2698jn.A03(context);
            if (A00[1].length() == 17) {
                Throwable t = new RuntimeException();
                throw t;
            }
            String[] strArr = A00;
            strArr[0] = "2CJ6YuIajjVObDWBrmgwGQhi0qiA6kO3";
            strArr[3] = "BzZMljeHsN6l5z4UR6G3olqVRWzg5ScF";
            return AbstractC3168rX.A00(c1643HiA03, th);
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        C1643Hi contextWrapper;
        try {
            if (context instanceof C1643Hi) {
                contextWrapper = (C1643Hi) context;
            } else {
                contextWrapper = C2698jn.A03(context);
            }
            return A01(contextWrapper, nativeAd, nativeAdViewAttributes);
        } catch (Throwable th) {
            return AbstractC3168rX.A00(C2698jn.A03(context), th);
        }
    }
}
