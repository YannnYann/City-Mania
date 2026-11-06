package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: DurationUnit.kt */
/* JADX INFO: loaded from: classes5.dex */
public class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {

    /* JADX INFO: compiled from: DurationUnit.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final long convertDurationUnitToMilliseconds(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return multiplyNonNegativeWithoutOverflow$DurationUnitKt__DurationUnitKt(j, getMillisMultiplier$DurationUnitKt__DurationUnitKt(unit));
    }

    public static final long multiplyNonNegativeWithoutOverflow$DurationUnitKt__DurationUnitKt(long j, long j2) {
        if (j == 0) {
            return 0L;
        }
        if (j == 1) {
            return RangesKt___RangesKt.coerceAtMost(j2, 4611686018427387903L);
        }
        if (j2 == 1) {
            return RangesKt___RangesKt.coerceAtMost(j, 4611686018427387903L);
        }
        int iNumberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j)) - Long.numberOfLeadingZeros(j2);
        if (iNumberOfLeadingZeros < 63) {
            return j * j2;
        }
        if (iNumberOfLeadingZeros > 63) {
            return 4611686018427387903L;
        }
        return RangesKt___RangesKt.coerceAtMost(j * j2, 4611686018427387903L);
    }

    public static final long getMillisMultiplier$DurationUnitKt__DurationUnitKt(DurationUnit durationUnit) {
        int i = WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        if (i == 1) {
            return 86400000L;
        }
        if (i == 2) {
            return 3600000L;
        }
        if (i == 3) {
            return 60000L;
        }
        if (i == 4) {
            return 1000L;
        }
        if (i == 5) {
            return 1L;
        }
        throw new IllegalStateException(("Wrong unit for millisMultiplier: " + durationUnit).toString());
    }
}
