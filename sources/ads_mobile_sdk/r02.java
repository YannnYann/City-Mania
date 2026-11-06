package ads_mobile_sdk;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r02 {
    public static s02 a(p12 nativeAdMapper, AdChoicesPlacement adChoicePlacement) {
        km1 km1Var;
        km1 km1Var2;
        Intrinsics.checkNotNullParameter(nativeAdMapper, "nativeAdMapper");
        Intrinsics.checkNotNullParameter(adChoicePlacement, "adChoicePlacement");
        s02 s02Var = new s02();
        s02Var.b = q02.a;
        s02Var.a = 6;
        ArrayList arrayListF = nativeAdMapper.f();
        s91 s91Var = arrayListF != null ? (s91) CollectionsKt___CollectionsKt.firstOrNull((List) arrayListF) : null;
        if (s91Var != null) {
            Drawable drawableE = s91Var.e();
            Uri uriD = s91Var.d();
            if (uriD == null) {
                uriD = Uri.EMPTY;
            }
            Intrinsics.checkNotNull(uriD);
            km1Var = new km1(drawableE, uriD, s91Var.a(), s91Var.c(), s91Var.b());
        } else {
            km1Var = null;
        }
        s02Var.f = km1Var;
        s91 icon = nativeAdMapper.getIcon();
        if (icon != null) {
            Drawable drawableE2 = icon.e();
            Uri uriD2 = icon.d();
            if (uriD2 == null) {
                uriD2 = Uri.EMPTY;
            }
            Intrinsics.checkNotNull(uriD2);
            km1Var2 = new km1(drawableE2, uriD2, icon.a(), icon.c(), icon.b());
        } else {
            km1Var2 = null;
        }
        s02Var.g = km1Var2;
        for (Map.Entry entry : MapsKt__MapsKt.mapOf(TuplesKt.to("headline", nativeAdMapper.getHeadline()), TuplesKt.to(C3522b4.i.E0, nativeAdMapper.getBody()), TuplesKt.to(C3522b4.i.F0, nativeAdMapper.getAdvertiser()), TuplesKt.to("call_to_action", nativeAdMapper.getCallToAction()), TuplesKt.to(C3522b4.i.U, nativeAdMapper.getStore()), TuplesKt.to("price", nativeAdMapper.getPrice())).entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 != null) {
                s02Var.d.put(str, str2);
            }
        }
        s02Var.k = nativeAdMapper.a();
        s02Var.m = nativeAdMapper.getHasVideoContent() ? new iq3() : null;
        s02Var.r = nativeAdMapper.getExtras();
        s02Var.s = nativeAdMapper.e();
        s02Var.t = nativeAdMapper.c();
        s02Var.u = adChoicePlacement;
        return s02Var;
    }
}
