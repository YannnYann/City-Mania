package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: longSaturatedMath.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LongSaturatedMathKt {
    /* JADX INFO: renamed from: saturatingAdd-NuflL3o, reason: not valid java name */
    public static final long m2914saturatingAddNuflL3o(long j, DurationUnit unit, long j2) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        long jM2902toLongimpl = Duration.m2902toLongimpl(j2, unit);
        if (((j - 1) | 1) == Long.MAX_VALUE) {
            return m2913checkInfiniteSumDefinedPjuGub4(j, j2, jM2902toLongimpl);
        }
        if (((jM2902toLongimpl - 1) | 1) == Long.MAX_VALUE) {
            return m2915saturatingAddInHalvesNuflL3o(j, unit, j2);
        }
        long j3 = j + jM2902toLongimpl;
        return ((j ^ j3) & (jM2902toLongimpl ^ j3)) < 0 ? j < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j3;
    }

    /* JADX INFO: renamed from: checkInfiniteSumDefined-PjuGub4, reason: not valid java name */
    public static final long m2913checkInfiniteSumDefinedPjuGub4(long j, long j2, long j3) {
        if (!Duration.m2893isInfiniteimpl(j2) || (j ^ j3) >= 0) {
            return j;
        }
        throw new IllegalArgumentException("Summing infinities of different signs");
    }

    /* JADX INFO: renamed from: saturatingAddInHalves-NuflL3o, reason: not valid java name */
    public static final long m2915saturatingAddInHalvesNuflL3o(long j, DurationUnit durationUnit, long j2) {
        long jM2873divUwyO8pc = Duration.m2873divUwyO8pc(j2, 2);
        long jM2902toLongimpl = Duration.m2902toLongimpl(jM2873divUwyO8pc, durationUnit);
        return (1 | (jM2902toLongimpl - 1)) == Long.MAX_VALUE ? jM2902toLongimpl : m2914saturatingAddNuflL3o(m2914saturatingAddNuflL3o(j, durationUnit, jM2873divUwyO8pc), durationUnit, Duration.m2896minusLRDsOJo(j2, jM2873divUwyO8pc));
    }

    public static final long infinityOfSign(long j) {
        return j < 0 ? Duration.Companion.m2910getNEG_INFINITEUwyO8pc$kotlin_stdlib() : Duration.Companion.m2908getINFINITEUwyO8pc();
    }

    public static final long saturatingDiff(long j, long j2, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ((1 | (j2 - 1)) == Long.MAX_VALUE) {
            return Duration.m2904unaryMinusUwyO8pc(infinityOfSign(j2));
        }
        return saturatingFiniteDiff(j, j2, unit);
    }

    public static final long saturatingOriginsDiff(long j, long j2, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (((j2 - 1) | 1) == Long.MAX_VALUE) {
            if (j == j2) {
                return Duration.Companion.m2911getZEROUwyO8pc();
            }
            return Duration.m2904unaryMinusUwyO8pc(infinityOfSign(j2));
        }
        if ((1 | (j - 1)) == Long.MAX_VALUE) {
            return infinityOfSign(j);
        }
        return saturatingFiniteDiff(j, j2, unit);
    }

    public static final long saturatingFiniteDiff(long j, long j2, DurationUnit durationUnit) {
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long jConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit2, durationUnit);
                long j4 = (j / jConvertDurationUnit) - (j2 / jConvertDurationUnit);
                long j5 = (j % jConvertDurationUnit) - (j2 % jConvertDurationUnit);
                Duration.Companion companion = Duration.Companion;
                return Duration.m2897plusLRDsOJo(DurationKt.toDuration(j4, durationUnit2), DurationKt.toDuration(j5, durationUnit));
            }
            return Duration.m2904unaryMinusUwyO8pc(infinityOfSign(j3));
        }
        return DurationKt.toDuration(j3, durationUnit);
    }
}
