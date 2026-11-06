package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yh2 implements oe3 {
    public final String a;
    public final String b;
    public final Integer c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;

    public yh2(String packageName, String str, Integer num, String str2, String str3, String str4, String appName, String str5, String str6) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        this.a = packageName;
        this.b = str;
        this.c = num;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = appName;
        this.h = str5;
        this.i = str6;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.packageName = this.a;
        signals.versionName = this.b;
        signals.versionCode = this.c;
        signals.displayLabel = this.d;
        signals.installerPackage = this.e;
        signals.initiatorPackage = this.f;
        signals.appName = this.g;
        signals.appWebPropertyCode = this.h;
        signals.applicationCode = this.i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yh2)) {
            return false;
        }
        yh2 yh2Var = (yh2) obj;
        return Intrinsics.areEqual(this.a, yh2Var.a) && Intrinsics.areEqual(this.b, yh2Var.b) && Intrinsics.areEqual(this.c, yh2Var.c) && Intrinsics.areEqual(this.d, yh2Var.d) && Intrinsics.areEqual(this.e, yh2Var.e) && Intrinsics.areEqual(this.f, yh2Var.f) && Intrinsics.areEqual(this.g, yh2Var.g) && Intrinsics.areEqual(this.h, yh2Var.h) && Intrinsics.areEqual(this.i, yh2Var.i);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        int iA = ob.a(this.g, (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31, 31);
        String str5 = this.h;
        int iHashCode6 = (iA + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.i;
        return iHashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        return "PackageInfoSignal(packageName=" + this.a + ", versionName=" + this.b + ", versionCode=" + this.c + ", displayLabel=" + this.d + ", installerPackage=" + this.e + ", initiatorPackage=" + this.f + ", appName=" + this.g + ", appWebPropertyCode=" + this.h + ", applicationCode=" + this.i + ")";
    }
}
