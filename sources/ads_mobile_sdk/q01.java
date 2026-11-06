package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q01 implements v01 {
    public final Object b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q01) && Intrinsics.areEqual(this.b, ((q01) obj).b);
    }

    public final int hashCode() {
        Object obj = this.b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "Success(result=" + this.b + ")";
    }

    public q01(Object obj) {
        this.b = obj;
    }

    public final Object a() {
        return this.b;
    }
}
