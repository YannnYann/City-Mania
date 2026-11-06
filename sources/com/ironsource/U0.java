package com.ironsource;

import com.ironsource.R6;
import com.ironsource.mediationsdk.IronSource;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class U0 {
    public static final U0 a = new U0();

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSource.a.values().length];
            try {
                iArr[IronSource.a.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSource.a.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IronSource.a.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IronSource.a.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    private U0() {
    }

    public static final R6.a a(IronSource.a adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        int i = a.a[adUnit.ordinal()];
        if (i == 1) {
            return R6.a.REWARDED_VIDEO;
        }
        if (i == 2) {
            return R6.a.INTERSTITIAL;
        }
        if (i == 3) {
            return R6.a.BANNER;
        }
        if (i == 4) {
            return R6.a.NATIVE_AD;
        }
        throw new NoWhenBranchMatchedException();
    }
}
