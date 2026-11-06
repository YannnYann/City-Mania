package ads_mobile_sdk;

import java.util.Arrays;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class os3 {
    public final UUID a;
    public final uj2[] b;

    public os3(UUID rootTraceId, uj2[] perTraceMeta) {
        Intrinsics.checkNotNullParameter(rootTraceId, "rootTraceId");
        Intrinsics.checkNotNullParameter(perTraceMeta, "perTraceMeta");
        this.a = rootTraceId;
        this.b = perTraceMeta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof os3)) {
            return false;
        }
        os3 os3Var = (os3) obj;
        return Intrinsics.areEqual(this.a, os3Var.a) && Intrinsics.areEqual(this.b, os3Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "TraceSnapshot(rootTraceId=" + this.a + ", perTraceMeta=" + Arrays.toString(this.b) + ")";
    }
}
