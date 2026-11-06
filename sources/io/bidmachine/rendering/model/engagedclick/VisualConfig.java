package io.bidmachine.rendering.model.engagedclick;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class VisualConfig {
    public static final Companion Companion = new Companion(null);
    public final int a;
    public final double b;
    public final double c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public VisualConfig(int i, double d, double d2) {
        Integer numValueOf = i <= 0 ? null : Integer.valueOf(i);
        this.a = numValueOf != null ? numValueOf.intValue() : Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        Double dValueOf = d <= 0.0d ? null : Double.valueOf(d);
        this.b = dValueOf != null ? dValueOf.doubleValue() : 0.12d;
        Double dValueOf2 = d2 > 0.0d ? Double.valueOf(d2) : null;
        this.c = dValueOf2 != null ? dValueOf2.doubleValue() : 1.3d;
    }

    public final double getBaselineMultiplier() {
        return this.c;
    }

    public final double getDiffThreshold() {
        return this.b;
    }

    public final int getDownscaleMaxSidePx() {
        return this.a;
    }
}
