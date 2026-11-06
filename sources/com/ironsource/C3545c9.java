package com.ironsource;

import com.unity3d.mediation.LevelPlayAdInfo;
import java.text.DecimalFormat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.c9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3545c9 {
    public static final a c = new a(null);
    public static final String d = "auctionId";
    public static final String e = "adUnit";
    public static final String f = "adFormat";
    public static final String g = "mediationAdUnitName";
    public static final String h = "mediationAdUnitId";
    public static final String i = "country";
    public static final String j = "ab";
    public static final String k = "segmentName";
    public static final String l = "placement";
    public static final String m = "adNetwork";
    public static final String n = "instanceName";
    public static final String o = "instanceId";
    public static final String p = "revenue";
    public static final String q = "precision";
    public static final String r = "encryptedCPM";
    public static final String s = "creativeId";
    private final LevelPlayAdInfo a;
    private final DecimalFormat b;

    /* JADX INFO: renamed from: com.ironsource.c9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C3545c9(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a = adInfo;
        this.b = new DecimalFormat("#.#####");
    }

    public final String a() {
        return this.a.getAb();
    }

    public final String b() {
        return this.a.getAdFormat();
    }

    public final String c() {
        return this.a.getAdNetwork();
    }

    public final JSONObject d() {
        return this.a.impressionData$mediationsdk_release();
    }

    public final String e() {
        return this.a.getAuctionId();
    }

    public final String f() {
        return this.a.getCountry();
    }

    public final String g() {
        return this.a.getCreativeId();
    }

    public final String h() {
        return this.a.getEncryptedCPM();
    }

    public final String i() {
        return this.a.getInstanceId();
    }

    public final String j() {
        return this.a.getInstanceName();
    }

    public final String k() {
        return this.a.getAdUnitId();
    }

    public final String l() {
        return this.a.getAdUnitName();
    }

    public final String m() {
        return this.a.getPlacementName();
    }

    public final String n() {
        return this.a.getImpressionPrecision$mediationsdk_release();
    }

    public final double o() {
        return this.a.getImpressionRevenue$mediationsdk_release();
    }

    public final String p() {
        return this.a.getSegmentName();
    }

    public String toString() {
        String strE = e();
        String strL = l();
        String strK = k();
        String strB = b();
        String strF = f();
        String strA = a();
        String strP = p();
        String strM = m();
        String strC = c();
        String strJ = j();
        String strI = i();
        o();
        return "auctionId: '" + strE + "', mediationAdUnitName: '" + strL + "', mediationAdUnitId: '" + strK + "', adFormat: '" + strB + "', country: '" + strF + "', ab: '" + strA + "', segmentName: '" + strP + "', placement: '" + strM + "', adNetwork: '" + strC + "', instanceName: '" + strJ + "', instanceId: '" + strI + "', revenue: " + this.b.format(o()) + ", precision: '" + n() + "', encryptedCPM: '" + h() + "', creativeId: '" + g() + "'";
    }
}
