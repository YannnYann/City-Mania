package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;

/* JADX INFO: compiled from: TimeSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TimeSource$Monotonic implements TimeSource$WithComparableMarks {
    public static final TimeSource$Monotonic INSTANCE = new TimeSource$Monotonic();

    @Override // kotlin.time.TimeSource$WithComparableMarks
    public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
        return ValueTimeMark.m2922boximpl(m2921markNowz9LOYto());
    }

    /* JADX INFO: renamed from: markNow-z9LOYto, reason: not valid java name */
    public long m2921markNowz9LOYto() {
        return MonotonicTimeSource.INSTANCE.m2919markNowz9LOYto();
    }

    public String toString() {
        return MonotonicTimeSource.INSTANCE.toString();
    }

    /* JADX INFO: compiled from: TimeSource.kt */
    public static final class ValueTimeMark implements ComparableTimeMark {
        public final long reading;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ ValueTimeMark m2922boximpl(long j) {
            return new ValueTimeMark(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m2923constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m2925equalsimpl(long j, Object obj) {
            return (obj instanceof ValueTimeMark) && j == ((ValueTimeMark) obj).m2932unboximpl();
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m2927hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m2931toStringimpl(long j) {
            return "ValueTimeMark(reading=" + j + ')';
        }

        public boolean equals(Object obj) {
            return m2925equalsimpl(this.reading, obj);
        }

        public int hashCode() {
            return m2927hashCodeimpl(this.reading);
        }

        public String toString() {
            return m2931toStringimpl(this.reading);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m2932unboximpl() {
            return this.reading;
        }

        @Override // java.lang.Comparable
        public /* bridge */ int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
        }

        public /* synthetic */ ValueTimeMark(long j) {
            this.reading = j;
        }

        /* JADX INFO: renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
        public static long m2924elapsedNowUwyO8pc(long j) {
            return MonotonicTimeSource.INSTANCE.m2918elapsedFrom6eNON_k(j);
        }

        @Override // kotlin.time.TimeMark
        /* JADX INFO: renamed from: elapsedNow-UwyO8pc */
        public long mo2920elapsedNowUwyO8pc() {
            return m2924elapsedNowUwyO8pc(this.reading);
        }

        /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
        public static long m2930plusLRDsOJo(long j, long j2) {
            return MonotonicTimeSource.INSTANCE.m2916adjustReading6QKq23U(j, j2);
        }

        /* JADX INFO: renamed from: hasPassedNow-impl, reason: not valid java name */
        public static boolean m2926hasPassedNowimpl(long j) {
            return !Duration.m2894isNegativeimpl(m2924elapsedNowUwyO8pc(j));
        }

        @Override // kotlin.time.ComparableTimeMark
        /* JADX INFO: renamed from: minus-UwyO8pc */
        public long mo2865minusUwyO8pc(ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return m2929minusUwyO8pc(this.reading, other);
        }

        /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
        public static long m2929minusUwyO8pc(long j, ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (!(other instanceof ValueTimeMark)) {
                throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) m2931toStringimpl(j)) + " and " + other);
            }
            return m2928minus6eNON_k(j, ((ValueTimeMark) other).m2932unboximpl());
        }

        /* JADX INFO: renamed from: minus-6eNON_k, reason: not valid java name */
        public static final long m2928minus6eNON_k(long j, long j2) {
            return MonotonicTimeSource.INSTANCE.m2917differenceBetweenfRLX17w(j, j2);
        }
    }
}
