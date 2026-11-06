package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p01 extends i01 {
    public final String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p01(String message) {
        super(kk1.e, 0);
        Intrinsics.checkNotNullParameter(message, "message");
        this.c = message;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p01) && Intrinsics.areEqual(this.c, ((p01) obj).c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return "RedirectLimitError(message=" + this.c + ")";
    }

    public final String c() {
        return this.c;
    }
}
