package com.vungle.ads.fpd;

import com.google.android.gms.common.api.Api;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
public enum AgeRange {
    AGE_18_20(1, new IntRange(18, 20)),
    AGE_21_30(2, new IntRange(21, 30)),
    AGE_31_40(3, new IntRange(31, 40)),
    AGE_41_50(4, new IntRange(41, 50)),
    AGE_51_60(5, new IntRange(51, 60)),
    AGE_61_70(6, new IntRange(61, 70)),
    AGE_71_75(7, new IntRange(71, 75)),
    OTHERS(0, new IntRange(Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER));

    public static final Companion Companion = new Companion(null);
    public final int a;
    public final IntRange b;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AgeRange fromAge$vungle_ads_release(int i) {
            AgeRange ageRange;
            AgeRange[] ageRangeArrValues = AgeRange.values();
            int length = ageRangeArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    ageRange = null;
                    break;
                }
                ageRange = ageRangeArrValues[i2];
                IntRange range = ageRange.getRange();
                int first = range.getFirst();
                if (i <= range.getLast() && first <= i) {
                    break;
                }
                i2++;
            }
            return ageRange == null ? AgeRange.OTHERS : ageRange;
        }
    }

    AgeRange(int i, IntRange intRange) {
        this.a = i;
        this.b = intRange;
    }

    public final int getId() {
        return this.a;
    }

    public final IntRange getRange() {
        return this.b;
    }
}
