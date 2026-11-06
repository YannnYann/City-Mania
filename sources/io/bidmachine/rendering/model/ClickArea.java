package io.bidmachine.rendering.model;

import android.graphics.PointF;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickArea {
    public static final Companion Companion = new Companion(null);
    public static final PointF d = new PointF(0.5f, 0.5f);
    public static final PointF e = new PointF(0.1f, 0.1f);
    public final PointF a;
    public final PointF b;
    public final Long c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PointF getDEFAULT_CENTER$bidmachine_android_sdk_bb_3_8_0() {
            return ClickArea.d;
        }

        public final PointF getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0() {
            return ClickArea.e;
        }

        public Companion() {
        }
    }

    public ClickArea() {
        this(null, null, null, 7, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClickArea)) {
            return false;
        }
        ClickArea clickArea = (ClickArea) obj;
        return Intrinsics.areEqual(this.a, clickArea.a) && Intrinsics.areEqual(this.b, clickArea.b) && Intrinsics.areEqual(this.c, clickArea.c);
    }

    public final PointF getCenter() {
        return this.a;
    }

    public final Long getSeed() {
        return this.c;
    }

    public final PointF getSpread() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        Long l = this.c;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "ClickArea(center=" + this.a + ", spread=" + this.b + ", seed=" + this.c + ')';
    }

    public ClickArea(PointF center, PointF spread, Long l) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(spread, "spread");
        this.a = center;
        this.b = spread;
        this.c = l;
    }

    public /* synthetic */ ClickArea(PointF pointF, PointF pointF2, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? d : pointF, (i & 2) != 0 ? e : pointF2, (i & 4) != 0 ? null : l);
    }
}
