package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class BrokenCreativeAlgorithmResult {
    public final boolean a;
    public final BrokenCreativeAlgorithmParams b;
    public final long c;

    public BrokenCreativeAlgorithmResult(boolean z, BrokenCreativeAlgorithmParams algorithmParams, long j) {
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
        this.a = z;
        this.b = algorithmParams;
        this.c = j;
    }

    public final BrokenCreativeAlgorithmParams getAlgorithmParams() {
        return this.b;
    }

    public final long getDurationMs() {
        return this.c;
    }

    public final boolean isBroken() {
        return this.a;
    }
}
