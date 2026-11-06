package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g32 {
    public final JsonObject a;
    public final JsonObject b;
    public final JsonObject c;
    public final JsonObject d;
    public final JsonObject e;

    public g32(JsonObject assetViewsSignal, JsonObject nativeAdViewSignal, JsonObject scrollViewSignal, JsonObject lockScreenSignal, JsonObject adScreenSignal) {
        Intrinsics.checkNotNullParameter(assetViewsSignal, "assetViewsSignal");
        Intrinsics.checkNotNullParameter(nativeAdViewSignal, "nativeAdViewSignal");
        Intrinsics.checkNotNullParameter(scrollViewSignal, "scrollViewSignal");
        Intrinsics.checkNotNullParameter(lockScreenSignal, "lockScreenSignal");
        Intrinsics.checkNotNullParameter(adScreenSignal, "adScreenSignal");
        this.a = assetViewsSignal;
        this.b = nativeAdViewSignal;
        this.c = scrollViewSignal;
        this.d = lockScreenSignal;
        this.e = adScreenSignal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g32)) {
            return false;
        }
        g32 g32Var = (g32) obj;
        return Intrinsics.areEqual(this.a, g32Var.a) && Intrinsics.areEqual(this.b, g32Var.b) && Intrinsics.areEqual(this.c, g32Var.c) && Intrinsics.areEqual(this.d, g32Var.d) && Intrinsics.areEqual(this.e, g32Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + z1.a(this.d, z1.a(this.c, z1.a(this.b, this.a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        return "NativeAdSignals(assetViewsSignal=" + this.a + ", nativeAdViewSignal=" + this.b + ", scrollViewSignal=" + this.c + ", lockScreenSignal=" + this.d + ", adScreenSignal=" + this.e + ")";
    }
}
