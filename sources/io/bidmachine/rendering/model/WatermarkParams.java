package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class WatermarkParams {
    public final Algorithm a;
    public final String b;
    public final int c;
    public final Location d;

    public enum Algorithm {
        RGB_STRIP
    }

    public enum Location {
        TOP_LEFT,
        TOP_CENTER,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_CENTER,
        BOTTOM_RIGHT
    }

    public WatermarkParams(Algorithm algorithm, String payload, int i, Location location) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(location, "location");
        this.a = algorithm;
        this.b = payload;
        this.c = i;
        this.d = location;
    }

    public final int getBaseColor() {
        return this.c;
    }

    public final Location getLocation() {
        return this.d;
    }

    public final String getPayload() {
        return this.b;
    }
}
