package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gh3 {
    public final y11 a;
    public final q11 b;
    public final gf3 c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gh3)) {
            return false;
        }
        gh3 gh3Var = (gh3) obj;
        return this.a == gh3Var.a && this.b == gh3Var.b && Intrinsics.areEqual(this.c, gh3Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        q11 q11Var = this.b;
        int iHashCode2 = (iHashCode + (q11Var == null ? 0 : q11Var.hashCode())) * 31;
        gf3 gf3Var = this.c;
        return iHashCode2 + (gf3Var != null ? gf3Var.hashCode() : 0);
    }

    public final String toString() {
        return "SignalMeta(signalId=" + this.a + ", cacheState=" + this.b + ", signalData=" + this.c + ")";
    }

    public /* synthetic */ gh3(y11 y11Var, q11 q11Var, int i) {
        this(y11Var, (i & 2) != 0 ? null : q11Var, (gf3) null);
    }

    public gh3(y11 signalId, q11 q11Var, gf3 gf3Var) {
        Intrinsics.checkNotNullParameter(signalId, "signalId");
        this.a = signalId;
        this.b = q11Var;
        this.c = gf3Var;
    }
}
