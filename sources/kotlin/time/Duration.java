package kotlin.time;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Duration implements Comparable<Duration> {
    public final long rawValue;
    public static final Companion Companion = new Companion(null);
    public static final long ZERO = m2872constructorimpl(0);
    public static final long INFINITE = DurationKt.durationOfMillis(4611686018427387903L);
    public static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);
    public static final long INVALID = m2872constructorimpl(9223372036854759646L);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m2870boximpl(long j) {
        return new Duration(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2872constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2874equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m2906unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2875equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    public static final long m2888getValueimpl(long j) {
        return j >> 1;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2889hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    public static final boolean m2891isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    public static final boolean m2892isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m2894isNegativeimpl(long j) {
        return j < 0;
    }

    /* JADX INFO: renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m2895isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object obj) {
        return m2874equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m2889hashCodeimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2906unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m2905compareToLRDsOJo(duration.m2906unboximpl());
    }

    public /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    public static final DurationUnit m2887getStorageUnitimpl(long j) {
        return m2892isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* JADX INFO: compiled from: Duration.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        /* JADX INFO: renamed from: fromRawValue-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m2907fromRawValueUwyO8pc$kotlin_stdlib(long j) {
            long jM2872constructorimpl = Duration.m2872constructorimpl(j);
            if (DurationJvmKt.getDurationAssertionsEnabled()) {
                if (Duration.m2892isInNanosimpl(jM2872constructorimpl)) {
                    long jM2888getValueimpl = Duration.m2888getValueimpl(jM2872constructorimpl);
                    if (-4611686018426999999L <= jM2888getValueimpl && jM2888getValueimpl < 4611686018427000000L) {
                        return jM2872constructorimpl;
                    }
                    throw new AssertionError(Duration.m2888getValueimpl(jM2872constructorimpl) + " ns is out of nanoseconds range");
                }
                long jM2888getValueimpl2 = Duration.m2888getValueimpl(jM2872constructorimpl);
                if (-4611686018427387903L >= jM2888getValueimpl2 || jM2888getValueimpl2 >= 4611686018427387903L) {
                    long jM2888getValueimpl3 = Duration.m2888getValueimpl(jM2872constructorimpl);
                    if (jM2888getValueimpl3 != 4611686018427387903L && jM2888getValueimpl3 != -4611686018427387903L) {
                        throw new AssertionError(Duration.m2888getValueimpl(jM2872constructorimpl) + " ms is out of milliseconds range");
                    }
                }
                long jM2888getValueimpl4 = Duration.m2888getValueimpl(jM2872constructorimpl);
                if (-4611686018426L > jM2888getValueimpl4 || jM2888getValueimpl4 >= 4611686018427L) {
                    return jM2872constructorimpl;
                }
                throw new AssertionError(Duration.m2888getValueimpl(jM2872constructorimpl) + " ms is denormalized");
            }
            return jM2872constructorimpl;
        }

        /* JADX INFO: renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m2911getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* JADX INFO: renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m2908getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* JADX INFO: renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m2910getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* JADX INFO: renamed from: getINVALID-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m2909getINVALIDUwyO8pc$kotlin_stdlib() {
            return Duration.INVALID;
        }

        /* JADX INFO: renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m2912parseIsoStringUwyO8pc(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                long duration$default = DurationKt.parseDuration$default(value, true, false, 4, null);
                if (Duration.m2875equalsimpl0(duration$default, Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib())) {
                    throw new IllegalStateException("invariant failed");
                }
                return duration$default;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }
    }

    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m2904unaryMinusUwyO8pc(long j) {
        return DurationKt.durationOf(-m2888getValueimpl(j), ((int) j) & 1);
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m2897plusLRDsOJo(long j, long j2) {
        if ((((int) j) & 1) != (((int) j2) & 1)) {
            return m2891isInMillisimpl(j) ? m2868addValuesMixedRangesUwyO8pc(j, m2888getValueimpl(j), m2888getValueimpl(j2)) : m2868addValuesMixedRangesUwyO8pc(j, m2888getValueimpl(j2), m2888getValueimpl(j));
        }
        if (m2892isInNanosimpl(j)) {
            return DurationKt.durationOfNanosNormalized(m2888getValueimpl(j) + m2888getValueimpl(j2));
        }
        long jAddMillisWithoutOverflow = DurationKt.addMillisWithoutOverflow(m2888getValueimpl(j), m2888getValueimpl(j2));
        if (jAddMillisWithoutOverflow != 9223372036854759646L) {
            return (jAddMillisWithoutOverflow == 4611686018427387903L || jAddMillisWithoutOverflow == -4611686018427387903L) ? DurationKt.durationOfMillis(jAddMillisWithoutOverflow) : DurationKt.durationOfMillisNormalized(jAddMillisWithoutOverflow);
        }
        throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
    }

    /* JADX INFO: renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    public static final long m2868addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long jNanosToMillis = DurationKt.nanosToMillis(j3);
        long jAddMillisWithoutOverflow = DurationKt.addMillisWithoutOverflow(j2, jNanosToMillis);
        if (-4611686018426L > jAddMillisWithoutOverflow || jAddMillisWithoutOverflow >= 4611686018427L) {
            return DurationKt.durationOfMillis(jAddMillisWithoutOverflow);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jAddMillisWithoutOverflow) + (j3 - DurationKt.millisToNanos(jNanosToMillis)));
    }

    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m2896minusLRDsOJo(long j, long j2) {
        return m2897plusLRDsOJo(j, m2904unaryMinusUwyO8pc(j2));
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m2899timesUwyO8pc(long j, int i) {
        if (m2893isInfiniteimpl(j)) {
            if (i != 0) {
                return i > 0 ? j : m2904unaryMinusUwyO8pc(j);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (i == 0) {
            return ZERO;
        }
        long jM2888getValueimpl = m2888getValueimpl(j);
        long j2 = i;
        long j3 = jM2888getValueimpl * j2;
        if (!m2892isInNanosimpl(j)) {
            if (j3 / j2 == jM2888getValueimpl) {
                return DurationKt.durationOfMillis(RangesKt___RangesKt.coerceIn(j3, new LongRange(-4611686018427387903L, 4611686018427387903L)));
            }
            return MathKt__MathJVMKt.getSign(jM2888getValueimpl) * MathKt__MathJVMKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        if (-2147483647L <= jM2888getValueimpl && jM2888getValueimpl < 2147483648L) {
            return DurationKt.durationOfNanos(j3);
        }
        if (j3 / j2 == jM2888getValueimpl) {
            return DurationKt.durationOfNanosNormalized(j3);
        }
        long jNanosToMillis = DurationKt.nanosToMillis(jM2888getValueimpl);
        long j4 = jNanosToMillis * j2;
        long jNanosToMillis2 = DurationKt.nanosToMillis((jM2888getValueimpl - DurationKt.millisToNanos(jNanosToMillis)) * j2) + j4;
        if (j4 / j2 != jNanosToMillis || (jNanosToMillis2 ^ j4) < 0) {
            return MathKt__MathJVMKt.getSign(jM2888getValueimpl) * MathKt__MathJVMKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        return DurationKt.durationOfMillis(RangesKt___RangesKt.coerceIn(jNanosToMillis2, new LongRange(-4611686018427387903L, 4611686018427387903L)));
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m2898timesUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(d);
        if (iRoundToInt == d) {
            return m2899timesUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM2887getStorageUnitimpl = m2887getStorageUnitimpl(j);
        return DurationKt.toDuration(m2900toDoubleimpl(j, durationUnitM2887getStorageUnitimpl) * d, durationUnitM2887getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m2873divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m2895isPositiveimpl(j)) {
                return INFINITE;
            }
            if (m2894isNegativeimpl(j)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (m2892isInNanosimpl(j)) {
            return DurationKt.durationOfNanos(m2888getValueimpl(j) / ((long) i));
        }
        if (m2893isInfiniteimpl(j)) {
            return m2899timesUwyO8pc(j, MathKt__MathJVMKt.getSign(i));
        }
        long j2 = i;
        long jM2888getValueimpl = m2888getValueimpl(j) / j2;
        if (-4611686018426L > jM2888getValueimpl || jM2888getValueimpl >= 4611686018427L) {
            return DurationKt.durationOfMillis(jM2888getValueimpl);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jM2888getValueimpl) + (DurationKt.millisToNanos(m2888getValueimpl(j) - (jM2888getValueimpl * j2)) / j2));
    }

    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m2893isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m2890isFiniteimpl(long j) {
        return !m2893isInfiniteimpl(j);
    }

    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m2876getAbsoluteValueUwyO8pc(long j) {
        return m2894isNegativeimpl(j) ? m2904unaryMinusUwyO8pc(j) : j;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m2905compareToLRDsOJo(long j) {
        return m2871compareToLRDsOJo(this.rawValue, j);
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m2871compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2894isNegativeimpl(j) ? -i : i;
    }

    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m2877getHoursComponentimpl(long j) {
        if (m2893isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2879getInWholeHoursimpl(j) % ((long) 24));
    }

    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m2884getMinutesComponentimpl(long j) {
        if (m2893isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2882getInWholeMinutesimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m2886getSecondsComponentimpl(long j) {
        if (m2893isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2883getInWholeSecondsimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m2885getNanosecondsComponentimpl(long j) {
        long jM2888getValueimpl;
        if (m2893isInfiniteimpl(j)) {
            return 0;
        }
        if (m2891isInMillisimpl(j)) {
            jM2888getValueimpl = DurationKt.millisToNanos(m2888getValueimpl(j) % ((long) 1000));
        } else {
            jM2888getValueimpl = m2888getValueimpl(j) % ((long) 1000000000);
        }
        return (int) jM2888getValueimpl;
    }

    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    public static final double m2900toDoubleimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m2888getValueimpl(j), m2887getStorageUnitimpl(j), unit);
    }

    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m2902toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m2888getValueimpl(j), m2887getStorageUnitimpl(j), unit);
    }

    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m2878getInWholeDaysimpl(long j) {
        return m2902toLongimpl(j, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m2879getInWholeHoursimpl(long j) {
        return m2902toLongimpl(j, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m2882getInWholeMinutesimpl(long j) {
        return m2902toLongimpl(j, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m2883getInWholeSecondsimpl(long j) {
        return m2902toLongimpl(j, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m2881getInWholeMillisecondsimpl(long j) {
        return (m2891isInMillisimpl(j) && m2890isFiniteimpl(j)) ? m2888getValueimpl(j) : m2902toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m2880getInWholeMicrosecondsimpl(long j) {
        return m2902toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    public String toString() {
        return m2903toStringimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2903toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM2894isNegativeimpl = m2894isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM2894isNegativeimpl) {
            sb.append('-');
        }
        long jM2876getAbsoluteValueUwyO8pc = m2876getAbsoluteValueUwyO8pc(j);
        long jM2878getInWholeDaysimpl = m2878getInWholeDaysimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2877getHoursComponentimpl = m2877getHoursComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2884getMinutesComponentimpl = m2884getMinutesComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2886getSecondsComponentimpl = m2886getSecondsComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2885getNanosecondsComponentimpl = m2885getNanosecondsComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM2878getInWholeDaysimpl != 0;
        boolean z2 = iM2877getHoursComponentimpl != 0;
        boolean z3 = iM2884getMinutesComponentimpl != 0;
        boolean z4 = (iM2886getSecondsComponentimpl == 0 && iM2885getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM2878getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM2877getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM2884getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM2886getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2869appendFractionalimpl(j, sb, iM2886getSecondsComponentimpl, iM2885getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM2885getNanosecondsComponentimpl >= 1000000) {
                m2869appendFractionalimpl(j, sb, iM2885getNanosecondsComponentimpl / 1000000, iM2885getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (iM2885getNanosecondsComponentimpl >= 1000) {
                m2869appendFractionalimpl(j, sb, iM2885getNanosecondsComponentimpl / 1000, iM2885getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM2885getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM2894isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    public static final void m2869appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strPadStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) strPadStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    /* JADX INFO: renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m2901toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m2894isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long jM2876getAbsoluteValueUwyO8pc = m2876getAbsoluteValueUwyO8pc(j);
        long jM2879getInWholeHoursimpl = m2879getInWholeHoursimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2884getMinutesComponentimpl = m2884getMinutesComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2886getSecondsComponentimpl = m2886getSecondsComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        int iM2885getNanosecondsComponentimpl = m2885getNanosecondsComponentimpl(jM2876getAbsoluteValueUwyO8pc);
        long j2 = m2893isInfiniteimpl(j) ? 9999999999999L : jM2879getInWholeHoursimpl;
        boolean z = false;
        boolean z2 = j2 != 0;
        boolean z3 = (iM2886getSecondsComponentimpl == 0 && iM2885getNanosecondsComponentimpl == 0) ? false : true;
        if (iM2884getMinutesComponentimpl != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(j2);
            sb.append('H');
        }
        if (z) {
            sb.append(iM2884getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m2869appendFractionalimpl(j, sb, iM2886getSecondsComponentimpl, iM2885getNanosecondsComponentimpl, 9, "S", true);
        }
        return sb.toString();
    }
}
