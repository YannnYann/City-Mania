package io.bidmachine.rendering.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class BrokenCreativeEvent {
    public final double a;
    public final int b;
    public final String c;
    public final long d;
    public final List e;

    public BrokenCreativeEvent(double d, int i, String adElementName, long j, List<BrokenCreativeAlgorithmResult> algorithmResults) {
        Intrinsics.checkNotNullParameter(adElementName, "adElementName");
        Intrinsics.checkNotNullParameter(algorithmResults, "algorithmResults");
        this.a = d;
        this.b = i;
        this.c = adElementName;
        this.d = j;
        this.e = algorithmResults;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(BrokenCreativeEvent.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.bidmachine.rendering.model.BrokenCreativeEvent");
        BrokenCreativeEvent brokenCreativeEvent = (BrokenCreativeEvent) obj;
        return this.a == brokenCreativeEvent.a && this.b == brokenCreativeEvent.b && Intrinsics.areEqual(this.c, brokenCreativeEvent.c);
    }

    public final String getAdElementName() {
        return this.c;
    }

    public final int getAdPhaseSequence() {
        return this.b;
    }

    public final List<BrokenCreativeAlgorithmResult> getAlgorithmResults() {
        return this.e;
    }

    public final long getDurationMs() {
        return this.d;
    }

    public int hashCode() {
        return (((Double.hashCode(this.a) * 31) + this.b) * 31) + this.c.hashCode();
    }

    public final double isBroken() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("isBroken - ");
        sb.append(this.a);
        sb.append(" (");
        sb.append(this.a == 1.0d);
        sb.append("), adPhaseSequence - ");
        sb.append(this.b);
        sb.append(", adElementName - ");
        sb.append(this.c);
        sb.append(", durationMs - ");
        sb.append(this.d);
        return sb.toString();
    }
}
