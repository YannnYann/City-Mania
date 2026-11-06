package ads_mobile_sdk;

import android.graphics.Insets;
import android.os.Build;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lb implements oe3 {
    public final String a;
    public final float b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final Insets g;
    public final String h;
    public final Boolean i;
    public final String j;
    public final String k;
    public final List l;
    public final j83 m;
    public final boolean n;
    public final Integer o;
    public final Integer p;

    public lb(String formatString, float f, int i, int i2, int i3, int i4, Insets insets, String str, Boolean bool, String str2, String str3, ArrayList supportedAdSizes, j83 j83Var, boolean z, Integer num, Integer num2) {
        Intrinsics.checkNotNullParameter(formatString, "formatString");
        Intrinsics.checkNotNullParameter(supportedAdSizes, "supportedAdSizes");
        this.a = formatString;
        this.b = f;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = insets;
        this.h = str;
        this.i = bool;
        this.j = str2;
        this.k = str3;
        this.l = supportedAdSizes;
        this.m = j83Var;
        this.n = z;
        this.o = num;
        this.p = num2;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Insets insets;
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.format = this.a;
        signals.screenDensity = this.b;
        signals.screenHeight = this.d;
        signals.screenWidth = this.c;
        signals.screenHeightDip = this.f;
        signals.screenWidthDip = this.e;
        if (Build.VERSION.SDK_INT >= 30 && (insets = this.g) != null) {
            signals.safeAreaMarginLeftDip = Integer.valueOf(insets.left);
            signals.safeAreaMarginTopDip = Integer.valueOf(this.g.top);
            signals.safeAreaMarginRightDip = Integer.valueOf(this.g.right);
            signals.safeAreaMarginBottomDip = Integer.valueOf(this.g.bottom);
        }
        signals.responsiveAutoFormat = this.h;
        signals.adaptiveSlot = this.i;
        signals.fluidType = this.j;
        signals.multipleAdSizeString = this.k;
        signals.adSizeArray.addAll(this.l);
        j83 j83Var = this.m;
        if (j83Var != null) {
            signals.roundedCornerTopLeftDip = Integer.valueOf(j83Var.a);
            signals.roundedCornerTopRightDip = Integer.valueOf(this.m.b);
            signals.roundedCornerBottomLeftDip = Integer.valueOf(this.m.d);
            signals.roundedCornerBottomRightDip = Integer.valueOf(this.m.c);
        }
        signals.isGreaterThanMaxAllowedBannerSize = this.n;
        Integer num = this.o;
        if (num != null) {
            signals.maxSlotWidth = num;
        }
        Integer num2 = this.p;
        if (num2 != null) {
            signals.maxSlotHeight = num2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lb)) {
            return false;
        }
        lb lbVar = (lb) obj;
        return Intrinsics.areEqual(this.a, lbVar.a) && Float.compare(this.b, lbVar.b) == 0 && this.c == lbVar.c && this.d == lbVar.d && this.e == lbVar.e && this.f == lbVar.f && Intrinsics.areEqual(this.g, lbVar.g) && Intrinsics.areEqual(this.h, lbVar.h) && Intrinsics.areEqual(this.i, lbVar.i) && Intrinsics.areEqual(this.j, lbVar.j) && Intrinsics.areEqual(this.k, lbVar.k) && Intrinsics.areEqual(this.l, lbVar.l) && Intrinsics.areEqual(this.m, lbVar.m) && this.n == lbVar.n && Intrinsics.areEqual(this.o, lbVar.o) && Intrinsics.areEqual(this.p, lbVar.p);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v27, types: [int] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v39 */
    public final int hashCode() {
        int iA = y1.a(this.f, y1.a(this.e, y1.a(this.d, y1.a(this.c, (Float.hashCode(this.b) + (this.a.hashCode() * 31)) * 31, 31), 31), 31), 31);
        Insets insets = this.g;
        int iHashCode = (iA + (insets == null ? 0 : insets.hashCode())) * 31;
        String str = this.h;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.i;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.j;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.k;
        int iA2 = h93.a(this.l, (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31, 31);
        j83 j83Var = this.m;
        int iHashCode5 = (iA2 + (j83Var == null ? 0 : j83Var.hashCode())) * 31;
        boolean z = this.n;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode5 + r2) * 31;
        Integer num = this.o;
        int iHashCode6 = (i + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.p;
        return iHashCode6 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "AdSizeSignal(formatString=" + this.a + ", screenDensity=" + this.b + ", screenWidth=" + this.c + ", screenHeight=" + this.d + ", screenWidthDip=" + this.e + ", screenHeightDip=" + this.f + ", safeAreaMarginsDip=" + this.g + ", responsiveAutoFormat=" + this.h + ", isInlineAdaptive=" + this.i + ", fluidType=" + this.j + ", multipleAdSizeString=" + this.k + ", supportedAdSizes=" + this.l + ", roundedCornerRadii=" + this.m + ", isGreaterThanMaxAllowedBannerSize=" + this.n + ", maxSlotWidth=" + this.o + ", maxSlotHeight=" + this.p + ")";
    }
}
