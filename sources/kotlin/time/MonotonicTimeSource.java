package kotlin.time;

import kotlin.time.TimeSource$Monotonic;

/* JADX INFO: compiled from: MonoTimeSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MonotonicTimeSource implements TimeSource$WithComparableMarks {
    public static final MonotonicTimeSource INSTANCE = new MonotonicTimeSource();
    public static final long zero = System.nanoTime();

    @Override // kotlin.time.TimeSource$WithComparableMarks
    public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
        return TimeSource$Monotonic.ValueTimeMark.m2922boximpl(m2919markNowz9LOYto());
    }

    public final long read() {
        return System.nanoTime() - zero;
    }

    public String toString() {
        return "TimeSource(System.nanoTime())";
    }

    /* JADX INFO: renamed from: markNow-z9LOYto, reason: not valid java name */
    public long m2919markNowz9LOYto() {
        return TimeSource$Monotonic.ValueTimeMark.m2923constructorimpl(read());
    }

    /* JADX INFO: renamed from: elapsedFrom-6eNON_k, reason: not valid java name */
    public final long m2918elapsedFrom6eNON_k(long j) {
        return LongSaturatedMathKt.saturatingDiff(read(), j, DurationUnit.NANOSECONDS);
    }

    /* JADX INFO: renamed from: differenceBetween-fRLX17w, reason: not valid java name */
    public final long m2917differenceBetweenfRLX17w(long j, long j2) {
        return LongSaturatedMathKt.saturatingOriginsDiff(j, j2, DurationUnit.NANOSECONDS);
    }

    /* JADX INFO: renamed from: adjustReading-6QKq23U, reason: not valid java name */
    public final long m2916adjustReading6QKq23U(long j, long j2) {
        return TimeSource$Monotonic.ValueTimeMark.m2923constructorimpl(LongSaturatedMathKt.m2914saturatingAddNuflL3o(j, DurationUnit.NANOSECONDS, j2));
    }
}
