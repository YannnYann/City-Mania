package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qm3 {
    public final int a;
    public final qb3 b;
    public final String c;
    public final List d;

    public qm3(int i, qb3 qb3Var, String str, ArrayList interactionTypes) {
        Intrinsics.checkNotNullParameter(interactionTypes, "interactionTypes");
        this.a = i;
        this.b = qb3Var;
        this.c = str;
        this.d = interactionTypes;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qm3)) {
            return false;
        }
        qm3 qm3Var = (qm3) obj;
        return this.a == qm3Var.a && this.b == qm3Var.b && Intrinsics.areEqual(this.c, qm3Var.c) && Intrinsics.areEqual(this.d, qm3Var.d);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        qb3 qb3Var = this.b;
        int iHashCode2 = (iHashCode + (qb3Var == null ? 0 : qb3Var.hashCode())) * 31;
        String str = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "SwipeableInterstitialAdConfig(requiredScreenHoldSec=" + this.a + ", videoAutoPlayStartTime=" + this.b + ", interactionUrl=" + this.c + ", interactionTypes=" + this.d + ")";
    }
}
