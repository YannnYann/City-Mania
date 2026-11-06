package io.bidmachine.analytics.internal.G;

import io.bidmachine.analytics.internal.g.C4116c;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.EnumC4120g;
import java.util.Date;
import kotlin.NoWhenBranchMatchedException;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[EnumC4114a.values().length];
            try {
                iArr[EnumC4114a.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC4114a.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC4114a.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC4114a.NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[EnumC4120g.values().length];
            try {
                iArr2[EnumC4120g.PRECISE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[EnumC4120g.ESTIMATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private static final long a(C4116c c4116c) {
        return (c4116c.c() - (c4116c.c() % ((long) 1000))) - MathKt__MathJVMKt.roundToLong(c4116c.d() * 1000000000000L);
    }

    public static final io.bidmachine.analytics.internal.G.a b(C4116c c4116c) {
        return new io.bidmachine.analytics.internal.G.a(c4116c.b(), c4116c.f(), io.bidmachine.analytics.internal.I.g.a(new Date(c4116c.c())), a(c4116c.a()), a(c4116c), a(c4116c.e()));
    }

    private static final int a(EnumC4114a enumC4114a) {
        int i = a.$EnumSwitchMapping$0[enumC4114a.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    if (i == 4) {
                        return 4;
                    }
                    throw new NoWhenBranchMatchedException();
                }
            }
        }
        return i2;
    }

    private static final int a(EnumC4120g enumC4120g) {
        int i = a.$EnumSwitchMapping$1[enumC4120g.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }
}
