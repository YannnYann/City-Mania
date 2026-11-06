package io.bidmachine.rendering.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class BrokenCreativeDetectorParams {
    public final long a;
    public final double b;
    public final boolean c;
    public final boolean d;
    public final StopDetectorAfter e;
    public final double f;
    public final List g;

    public BrokenCreativeDetectorParams(long j, double d, boolean z, boolean z2, StopDetectorAfter stopAfter, double d2, List<BrokenCreativeAlgorithmParams> algorithms) {
        Intrinsics.checkNotNullParameter(stopAfter, "stopAfter");
        Intrinsics.checkNotNullParameter(algorithms, "algorithms");
        this.a = j;
        this.b = d;
        this.c = z;
        this.d = z2;
        this.e = stopAfter;
        this.f = d2;
        this.g = algorithms;
    }

    public final List<BrokenCreativeAlgorithmParams> getAlgorithms() {
        return this.g;
    }

    public final double getDownscaleFactor() {
        return this.b;
    }

    public final StopDetectorAfter getStopAfter() {
        return this.e;
    }

    public final long getTimeout() {
        return this.a;
    }

    public final double getWeightThreshold() {
        return this.f;
    }

    public final boolean isAllowDuplicate() {
        return this.d;
    }

    public final boolean isErrorOnly() {
        return this.c;
    }
}
