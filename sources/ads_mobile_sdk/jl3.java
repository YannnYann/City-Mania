package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.DeviceSignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jl3 implements oe3 {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final List h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final long m;
    public final boolean n;
    public final String o;
    public final boolean p;
    public final int q;
    public final String r;
    public final boolean s;
    public final boolean t;

    public jl3(boolean z, boolean z2, String countryCode, String str, boolean z3, boolean z4, String languageCode, List languageCodeList, String str2, String str3, String submodel, String buildName, long j, boolean z5, String str4, boolean z6, int i, String str5, boolean z7, boolean z8) {
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        Intrinsics.checkNotNullParameter(languageCodeList, "languageCodeList");
        Intrinsics.checkNotNullParameter(submodel, "submodel");
        Intrinsics.checkNotNullParameter(buildName, "buildName");
        this.a = z;
        this.b = z2;
        this.c = countryCode;
        this.d = str;
        this.e = z3;
        this.f = z4;
        this.g = languageCode;
        this.h = languageCodeList;
        this.i = str2;
        this.j = str3;
        this.k = submodel;
        this.l = buildName;
        this.m = j;
        this.n = z5;
        this.o = str4;
        this.p = z6;
        this.q = i;
        this.r = str5;
        this.s = z7;
        this.t = z8;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.canOpenGeo = Boolean.valueOf(this.a);
        signals.canOpenHttp = Boolean.valueOf(this.b);
        signals.countryCode = this.c;
        signals.deviceCountryCode = this.d;
        signals.isEmulator = Boolean.valueOf(this.e);
        signals.isLatchskyDevice = this.f;
        String str = this.g;
        signals.languageCode = str;
        m21 m21Var = o21.f;
        signals.clientLanguageCode = m21.a(str, this.c);
        signals.languageCodeList.addAll(this.h);
        signals.deviceLanguageCode = this.i;
        signals.marketVersion = this.j;
        signals.submodel = this.k;
        DeviceSignals deviceSignals = signals.deviceSignals;
        deviceSignals.buildName = this.l;
        deviceSignals.remainingDataPartitionSpaceKilobytes = Long.valueOf(this.m);
        signals.deviceSignals.browserSignals.isDefaultBrowserCustomTabsCapable = Boolean.valueOf(this.n);
        signals.deviceSignals.playStoreSignals.playStoreVersion = this.o;
        if (this.p) {
            signals.isBattlestarDevice = Boolean.TRUE;
        }
        signals.buildApiLevel = Integer.valueOf(this.q);
        signals.osVersion = this.r;
        signals.transparentBackgroundSupported = Boolean.valueOf(this.s);
        signals.isHsdpSupported = Integer.valueOf(this.t ? 1 : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jl3)) {
            return false;
        }
        jl3 jl3Var = (jl3) obj;
        return this.a == jl3Var.a && this.b == jl3Var.b && Intrinsics.areEqual(this.c, jl3Var.c) && Intrinsics.areEqual(this.d, jl3Var.d) && this.e == jl3Var.e && this.f == jl3Var.f && Intrinsics.areEqual(this.g, jl3Var.g) && Intrinsics.areEqual(this.h, jl3Var.h) && Intrinsics.areEqual(this.i, jl3Var.i) && Intrinsics.areEqual(this.j, jl3Var.j) && Intrinsics.areEqual(this.k, jl3Var.k) && Intrinsics.areEqual(this.l, jl3Var.l) && this.m == jl3Var.m && this.n == jl3Var.n && Intrinsics.areEqual(this.o, jl3Var.o) && this.p == jl3Var.p && this.q == jl3Var.q && Intrinsics.areEqual(this.r, jl3Var.r) && this.s == jl3Var.s && this.t == jl3Var.t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21, types: [int] */
    /* JADX WARN: Type inference failed for: r0v26, types: [int] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.b;
        ?? r3 = z2;
        if (z2) {
            r3 = 1;
        }
        int iA = ob.a(this.c, (i + r3) * 31, 31);
        String str = this.d;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        boolean z3 = this.e;
        ?? r32 = z3;
        if (z3) {
            r32 = 1;
        }
        int i2 = (iHashCode + r32) * 31;
        boolean z4 = this.f;
        ?? r33 = z4;
        if (z4) {
            r33 = 1;
        }
        int iA2 = h93.a(this.h, ob.a(this.g, (i2 + r33) * 31, 31), 31);
        String str2 = this.i;
        int iHashCode2 = (iA2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.j;
        int iHashCode3 = (Long.hashCode(this.m) + ob.a(this.l, ob.a(this.k, (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31), 31)) * 31;
        boolean z5 = this.n;
        ?? r02 = z5;
        if (z5) {
            r02 = 1;
        }
        int i3 = (iHashCode3 + r02) * 31;
        String str4 = this.o;
        int iHashCode4 = (i3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        boolean z6 = this.p;
        ?? r03 = z6;
        if (z6) {
            r03 = 1;
        }
        int iA3 = y1.a(this.q, (iHashCode4 + r03) * 31, 31);
        String str5 = this.r;
        int iHashCode5 = (iA3 + (str5 != null ? str5.hashCode() : 0)) * 31;
        boolean z7 = this.s;
        ?? r34 = z7;
        if (z7) {
            r34 = 1;
        }
        int i4 = (iHashCode5 + r34) * 31;
        boolean z8 = this.t;
        return i4 + (z8 ? 1 : z8);
    }

    public final String toString() {
        return "StaticDeviceSignal(canOpenGeo=" + this.a + ", canOpenHttp=" + this.b + ", countryCode=" + this.c + ", deviceCountryCode=" + this.d + ", isEmulator=" + this.e + ", isLatchskyDevice=" + this.f + ", languageCode=" + this.g + ", languageCodeList=" + this.h + ", deviceLanguageCode=" + this.i + ", marketVersion=" + this.j + ", submodel=" + this.k + ", buildName=" + this.l + ", remainingDataPartitionSpaceKilobytes=" + this.m + ", isDefaultBrowserCustomTabsCapable=" + this.n + ", playStoreVersion=" + this.o + ", isBattlestarDevice=" + this.p + ", buildApiLevel=" + this.q + ", osVersion=" + this.r + ", isTransparentBackgroundSupported=" + this.s + ", isHsdpSupported=" + this.t + ")";
    }
}
