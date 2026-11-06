package ads_mobile_sdk;

import android.os.Bundle;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.gson.JsonObject;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class s02 {
    public int a;
    public q02 b;
    public String c;
    public final Map d;
    public Double e;
    public km1 f;
    public km1 g;
    public ak1 h;
    public final Map i;
    public r31 j;
    public View k;
    public q41 l;
    public VideoController m;
    public dg2 n;
    public Deferred o;
    public final List p;
    public hm1 q;
    public Bundle r;
    public float s;
    public View t;
    public AdChoicesPlacement u;
    public String v;
    public JsonObject w;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s02)) {
            return false;
        }
        s02 s02Var = (s02) obj;
        return this.a == s02Var.a && this.b == s02Var.b && Intrinsics.areEqual(this.c, s02Var.c) && Intrinsics.areEqual(this.d, s02Var.d) && Intrinsics.areEqual(this.e, s02Var.e) && Intrinsics.areEqual(this.f, s02Var.f) && Intrinsics.areEqual(this.g, s02Var.g) && Intrinsics.areEqual(this.h, s02Var.h) && Intrinsics.areEqual(this.i, s02Var.i) && Intrinsics.areEqual(this.j, s02Var.j) && Intrinsics.areEqual(this.k, s02Var.k) && Intrinsics.areEqual(this.l, s02Var.l) && Intrinsics.areEqual(this.m, s02Var.m) && Intrinsics.areEqual(this.n, s02Var.n) && Intrinsics.areEqual(this.o, s02Var.o) && Intrinsics.areEqual(this.p, s02Var.p) && Intrinsics.areEqual(this.q, s02Var.q) && Intrinsics.areEqual(this.r, s02Var.r) && Float.compare(this.s, s02Var.s) == 0 && Intrinsics.areEqual(this.t, s02Var.t) && this.u == s02Var.u && Intrinsics.areEqual(this.v, s02Var.v) && Intrinsics.areEqual(this.w, s02Var.w);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        q02 q02Var = this.b;
        int iHashCode2 = (iHashCode + (q02Var == null ? 0 : q02Var.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        Double d = this.e;
        int iHashCode4 = (iHashCode3 + (d == null ? 0 : d.hashCode())) * 31;
        km1 km1Var = this.f;
        int iHashCode5 = (iHashCode4 + (km1Var == null ? 0 : km1Var.hashCode())) * 31;
        km1 km1Var2 = this.g;
        int iHashCode6 = (iHashCode5 + (km1Var2 == null ? 0 : km1Var2.hashCode())) * 31;
        ak1 ak1Var = this.h;
        int iHashCode7 = (this.i.hashCode() + ((iHashCode6 + (ak1Var == null ? 0 : ak1Var.hashCode())) * 31)) * 31;
        r31 r31Var = this.j;
        int iHashCode8 = (iHashCode7 + (r31Var == null ? 0 : r31Var.hashCode())) * 31;
        View view = this.k;
        int iHashCode9 = (iHashCode8 + (view == null ? 0 : view.hashCode())) * 31;
        q41 q41Var = this.l;
        int iHashCode10 = (iHashCode9 + (q41Var == null ? 0 : q41Var.hashCode())) * 31;
        VideoController videoController = this.m;
        int iHashCode11 = (iHashCode10 + (videoController == null ? 0 : videoController.hashCode())) * 31;
        dg2 dg2Var = this.n;
        int iHashCode12 = (iHashCode11 + (dg2Var == null ? 0 : dg2Var.hashCode())) * 31;
        Deferred deferred = this.o;
        int iA = h93.a(this.p, (iHashCode12 + (deferred == null ? 0 : deferred.hashCode())) * 31, 31);
        hm1 hm1Var = this.q;
        int iHashCode13 = (Float.hashCode(this.s) + ((this.r.hashCode() + ((iA + (hm1Var == null ? 0 : hm1Var.hashCode())) * 31)) * 31)) * 31;
        View view2 = this.t;
        int iHashCode14 = (iHashCode13 + (view2 == null ? 0 : view2.hashCode())) * 31;
        AdChoicesPlacement adChoicesPlacement = this.u;
        int iHashCode15 = (iHashCode14 + (adChoicesPlacement == null ? 0 : adChoicesPlacement.hashCode())) * 31;
        String str2 = this.v;
        int iHashCode16 = (iHashCode15 + (str2 == null ? 0 : str2.hashCode())) * 31;
        JsonObject jsonObject = this.w;
        return iHashCode16 + (jsonObject != null ? jsonObject.hashCode() : 0);
    }

    public final String toString() {
        return "NativeAdAssets(templateId=" + this.a + ", nativeAdType=" + this.b + ", customTemplateId=" + this.c + ", stringAssets=" + this.d + ", starRating=" + this.e + ", image=" + this.f + ", icon=" + this.g + ", attributionInfo=" + this.h + ", customImageAssets=" + this.i + ", mediaWebView=" + this.j + ", mediaView=" + this.k + ", gmaWebViewVideoController=" + this.l + ", videoController=" + this.m + ", omidSettings=" + this.n + ", omidDisplayWebView=" + this.o + ", muteThisAdReasons=" + this.p + ", defaultMuteThisAdReason=" + this.q + ", extras=" + this.r + ", mediaContentAspectRatio=" + this.s + ", adChoicesContent=" + this.t + ", pubProvidedAttributionInfoPlacement=" + this.u + ", watermark=" + this.v + ", adSpecificResponseInfoExtras=" + this.w + ")";
    }

    public /* synthetic */ s02() {
        this(-1, null, null, new LinkedHashMap(), null, null, null, null, new LinkedHashMap(), null, null, null, null, null, null, new ArrayList(), null, new Bundle(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null, null, null, null);
    }

    public s02(int i, q02 q02Var, String str, Map stringAssets, Double d, km1 km1Var, km1 km1Var2, ak1 ak1Var, Map customImageAssets, r31 r31Var, View view, q41 q41Var, VideoController videoController, dg2 dg2Var, Deferred deferred, List muteThisAdReasons, hm1 hm1Var, Bundle extras, float f, View view2, AdChoicesPlacement adChoicesPlacement, String str2, JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(stringAssets, "stringAssets");
        Intrinsics.checkNotNullParameter(customImageAssets, "customImageAssets");
        Intrinsics.checkNotNullParameter(muteThisAdReasons, "muteThisAdReasons");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.a = i;
        this.b = q02Var;
        this.c = str;
        this.d = stringAssets;
        this.e = d;
        this.f = km1Var;
        this.g = km1Var2;
        this.h = ak1Var;
        this.i = customImageAssets;
        this.j = r31Var;
        this.k = view;
        this.l = q41Var;
        this.m = videoController;
        this.n = dg2Var;
        this.o = deferred;
        this.p = muteThisAdReasons;
        this.q = hm1Var;
        this.r = extras;
        this.s = f;
        this.t = view2;
        this.u = adChoicesPlacement;
        this.v = str2;
        this.w = jsonObject;
    }
}
