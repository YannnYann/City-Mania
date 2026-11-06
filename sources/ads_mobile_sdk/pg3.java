package ads_mobile_sdk;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pg3 {
    public final String a;
    public final List b;

    public pg3(String signalBlob, List list) {
        Intrinsics.checkNotNullParameter(signalBlob, "signalBlob");
        this.a = signalBlob;
        this.b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pg3)) {
            return false;
        }
        pg3 pg3Var = (pg3) obj;
        return Intrinsics.areEqual(this.a, pg3Var.a) && Intrinsics.areEqual(this.b, pg3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        List list = this.b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "SignalResponse(signalBlob=" + this.a + ", csrbErrors=" + this.b + ")";
    }
}
