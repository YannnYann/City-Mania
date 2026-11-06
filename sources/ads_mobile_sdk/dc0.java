package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dc0 extends fc0 {
    public final String a;
    public final km1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dc0(String key, km1 imageValue) {
        super(0);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(imageValue, "imageValue");
        this.a = key;
        this.b = imageValue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dc0)) {
            return false;
        }
        dc0 dc0Var = (dc0) obj;
        return Intrinsics.areEqual(this.a, dc0Var.a) && Intrinsics.areEqual(this.b, dc0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ImageCustomAsset(key=" + this.a + ", imageValue=" + this.b + ")";
    }
}
