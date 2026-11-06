package kotlin.time;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimeSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ComparableTimeMark extends TimeMark, Comparable<ComparableTimeMark> {
    /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
    long mo2865minusUwyO8pc(ComparableTimeMark comparableTimeMark);

    /* JADX INFO: compiled from: TimeSource.kt */
    public static final class DefaultImpls {
        public static int compareTo(ComparableTimeMark comparableTimeMark, ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return Duration.m2871compareToLRDsOJo(comparableTimeMark.mo2865minusUwyO8pc(other), Duration.Companion.m2911getZEROUwyO8pc());
        }
    }
}
