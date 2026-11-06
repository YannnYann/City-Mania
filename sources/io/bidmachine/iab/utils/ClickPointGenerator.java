package io.bidmachine.iab.utils;

import android.graphics.PointF;
import io.bidmachine.rendering.model.ClickArea;
import java.util.Random;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickPointGenerator {
    public static final Companion Companion = new Companion(null);
    public static final PointF Default = new PointF(0.5f, 0.7f);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public interface Distribution {

        public static final class Legacy implements Distribution {
            public static final Legacy INSTANCE = new Legacy();

            public final float a(Random random, float f, float f2) {
                double d;
                long j = 100000;
                double dSqrt = Math.sqrt(((double) (-2)) * Math.log(Math.abs(((random.nextLong() % j) + 1) / 100000.0d))) * Math.sin(Math.abs(((random.nextLong() % j) + 1) / 100000.0d) * 6.283185307179586d);
                if (0.4f > f2 || f2 > 0.6f) {
                    double d2 = f2;
                    d = f2 < 0.4f ? d2 + (((double) f) / (dSqrt * dSqrt)) : d2 - (((double) f) / (dSqrt * dSqrt));
                } else {
                    d = (dSqrt * ((double) f)) + ((double) f2);
                }
                return (float) RangesKt___RangesKt.coerceIn(d, 0.0d, 1.0d);
            }

            @Override // io.bidmachine.iab.utils.ClickPointGenerator.Distribution
            public PointF calculate(Random random, ClickArea clickArea) {
                Intrinsics.checkNotNullParameter(random, "random");
                Intrinsics.checkNotNullParameter(clickArea, "clickArea");
                return new PointF(a(random, clickArea.getSpread().x, clickArea.getCenter().x), a(random, clickArea.getSpread().y, clickArea.getCenter().y));
            }
        }

        public static final class Uniform implements Distribution {
            public static final Uniform INSTANCE = new Uniform();

            private final float a(Random random, float f, float f2) {
                return (float) (((double) (f - f2)) + (random.nextDouble() * ((double) f2) * ((double) 2)));
            }

            @Override // io.bidmachine.iab.utils.ClickPointGenerator.Distribution
            public PointF calculate(Random random, ClickArea clickArea) {
                Intrinsics.checkNotNullParameter(random, "random");
                Intrinsics.checkNotNullParameter(clickArea, "clickArea");
                return new PointF(a(random, clickArea.getCenter().x, clickArea.getSpread().x), a(random, clickArea.getCenter().y, clickArea.getSpread().y));
            }
        }

        PointF calculate(Random random, ClickArea clickArea);
    }

    public final PointF generate(ClickArea clickArea, Distribution distribution) {
        Intrinsics.checkNotNullParameter(clickArea, "clickArea");
        Intrinsics.checkNotNullParameter(distribution, "distribution");
        Long seed = clickArea.getSeed();
        return distribution.calculate(seed != null ? new Random(seed.longValue()) : new Random(), clickArea);
    }
}
