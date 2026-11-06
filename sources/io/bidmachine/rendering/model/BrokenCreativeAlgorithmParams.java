package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class BrokenCreativeAlgorithmParams {
    public final BrokenCreativeAlgorithmType a;
    public final float b;
    public final float c;

    public BrokenCreativeAlgorithmParams(BrokenCreativeAlgorithmType type, float f, float f2) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.a = type;
        this.b = f;
        this.c = f2;
    }

    public final float getThreshold() {
        return this.b;
    }

    public final BrokenCreativeAlgorithmType getType() {
        return this.a;
    }

    public final float getWeight() {
        return this.c;
    }
}
