package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ga2 {
    public final ha2 a;

    public ga2(ha2 networkPingStrategy) {
        Intrinsics.checkNotNullParameter(networkPingStrategy, "networkPingStrategy");
        this.a = networkPingStrategy;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ga2) && Intrinsics.areEqual(this.a, ((ga2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "NetworkPingConfig(networkPingStrategy=" + this.a + ")";
    }
}
