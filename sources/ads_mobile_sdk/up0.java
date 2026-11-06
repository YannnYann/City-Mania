package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class up0 {
    public final String a;
    public final long b;
    public final String c;
    public final int d;

    public up0(String packageName, long j, String deviceModel, int i) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        this.a = packageName;
        this.b = j;
        this.c = deviceModel;
        this.d = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof up0)) {
            return false;
        }
        up0 up0Var = (up0) obj;
        return Intrinsics.areEqual(this.a, up0Var.a) && this.b == up0Var.b && Intrinsics.areEqual(this.c, up0Var.c) && this.d == up0Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ob.a(this.c, (Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "EnvironmentData(packageName=" + this.a + ", versionCode=" + this.b + ", deviceModel=" + this.c + ", apiVersion=" + this.d + ")";
    }
}
