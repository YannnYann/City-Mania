package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nb3 implements oe3 {
    public final String a;
    public final String b;
    public final int c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final boolean g;

    public nb3(String afmaVersion, String additionalCapabilities, int i, String externalVersion, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(additionalCapabilities, "additionalCapabilities");
        Intrinsics.checkNotNullParameter(externalVersion, "externalVersion");
        this.a = afmaVersion;
        this.b = additionalCapabilities;
        this.c = i;
        this.d = externalVersion;
        this.e = z;
        this.f = z2;
        this.g = z3;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.afmaVersion = this.a;
        signals.isDecagon = true;
        signals.additionalCapabilities = this.b;
        signals.targetApi = Integer.valueOf(this.c);
        signals.granularVersion = this.d;
        signals.sdkEnvironment.isInstantApp = Boolean.valueOf(this.e);
        signals.sdkEnvironment.isPrivilegedProcess = this.f;
        if (this.g) {
            signals.b();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nb3)) {
            return false;
        }
        nb3 nb3Var = (nb3) obj;
        return Intrinsics.areEqual(this.a, nb3Var.a) && Intrinsics.areEqual(this.b, nb3Var.b) && this.c == nb3Var.c && Intrinsics.areEqual(this.d, nb3Var.d) && this.e == nb3Var.e && this.f == nb3Var.f && this.g == nb3Var.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.d, y1.a(this.c, ob.a(this.b, this.a.hashCode() * 31, 31), 31), 31);
        boolean z = this.e;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iA + r2) * 31;
        boolean z2 = this.f;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int i2 = (i + r22) * 31;
        boolean z3 = this.g;
        return i2 + (z3 ? 1 : z3);
    }

    public final String toString() {
        return "SdkEnvironmentSignal(afmaVersion=" + this.a + ", additionalCapabilities=" + this.b + ", targetApi=" + this.c + ", externalVersion=" + this.d + ", isInstantApp=" + this.e + ", isPrivilegedProcess=" + this.f + ", isAdapterInitConfigSet=" + this.g + ")";
    }
}
