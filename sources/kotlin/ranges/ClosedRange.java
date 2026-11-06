package kotlin.ranges;

import java.lang.Comparable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Range.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ClosedRange<T extends Comparable<? super T>> {
    boolean contains(T t);

    T getEndInclusive();

    T getStart();

    boolean isEmpty();

    /* JADX INFO: compiled from: Range.kt */
    public static final class DefaultImpls {
        public static <T extends Comparable<? super T>> boolean contains(ClosedRange<T> closedRange, T value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.compareTo(closedRange.getStart()) >= 0 && value.compareTo(closedRange.getEndInclusive()) <= 0;
        }

        public static <T extends Comparable<? super T>> boolean isEmpty(ClosedRange<T> closedRange) {
            return closedRange.getStart().compareTo(closedRange.getEndInclusive()) > 0;
        }
    }
}
