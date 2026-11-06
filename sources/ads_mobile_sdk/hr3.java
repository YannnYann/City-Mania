package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class hr3 {
    public final int a;
    public final Integer b;
    public final long c;
    public final long d;
    public final zr0 e;

    public hr3(int i, Integer num, long j, long j2, zr0 fillDefinition) {
        Intrinsics.checkNotNullParameter(fillDefinition, "fillDefinition");
        this.a = i;
        this.b = num;
        this.c = j;
        this.d = j2;
        this.e = fillDefinition;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hr3)) {
            return false;
        }
        hr3 hr3Var = (hr3) obj;
        return this.a == hr3Var.a && Intrinsics.areEqual(this.b, hr3Var.b) && Duration.m2875equalsimpl0(this.c, hr3Var.c) && Duration.m2875equalsimpl0(this.d, hr3Var.d) && this.e == hr3Var.e;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        Integer num = this.b;
        return this.e.hashCode() + ((Duration.m2889hashCodeimpl(this.d) + ((Duration.m2889hashCodeimpl(this.c) + ((iHashCode + (num == null ? 0 : num.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ThrottleConfiguration(nofillsBeforeThrottle=" + this.a + ", postThrottleNofillsBeforeThrottle=" + this.b + ", nofillRetentionTime=" + Duration.m2903toStringimpl(this.c) + ", callbackDelay=" + Duration.m2903toStringimpl(this.d) + ", fillDefinition=" + this.e + ")";
    }
}
