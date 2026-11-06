package kotlinx.serialization.internal;

import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: compiled from: ElementMarker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ElementMarker {
    public static final Companion Companion = new Companion(null);

    @Deprecated
    public static final long[] EMPTY_HIGH_MARKS = new long[0];
    public final SerialDescriptor descriptor;
    public final long[] highMarksArray;
    public long lowerMarks;
    public final Function2<SerialDescriptor, Integer, Boolean> readIfAbsent;

    /* JADX WARN: Multi-variable type inference failed */
    public ElementMarker(SerialDescriptor descriptor, Function2<? super SerialDescriptor, ? super Integer, Boolean> readIfAbsent) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(readIfAbsent, "readIfAbsent");
        this.descriptor = descriptor;
        this.readIfAbsent = readIfAbsent;
        int elementsCount = descriptor.getElementsCount();
        if (elementsCount <= 64) {
            this.lowerMarks = elementsCount != 64 ? (-1) << elementsCount : 0L;
            this.highMarksArray = EMPTY_HIGH_MARKS;
        } else {
            this.lowerMarks = 0L;
            this.highMarksArray = prepareHighMarksArray(elementsCount);
        }
    }

    /* JADX INFO: compiled from: ElementMarker.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final void mark(int i) {
        if (i < 64) {
            this.lowerMarks |= 1 << i;
        } else {
            markHigh(i);
        }
    }

    public final int nextUnmarkedIndex() {
        int iNumberOfTrailingZeros;
        int elementsCount = this.descriptor.getElementsCount();
        do {
            long j = this.lowerMarks;
            if (j == -1) {
                if (elementsCount > 64) {
                    return nextUnmarkedHighIndex();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
            this.lowerMarks |= 1 << iNumberOfTrailingZeros;
        } while (!this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(iNumberOfTrailingZeros)).booleanValue());
        return iNumberOfTrailingZeros;
    }

    public final long[] prepareHighMarksArray(int i) {
        long[] jArr = new long[(i - 1) >>> 6];
        if ((i & 63) != 0) {
            jArr[ArraysKt___ArraysKt.getLastIndex(jArr)] = (-1) << i;
        }
        return jArr;
    }

    public final void markHigh(int i) {
        int i2 = (i >>> 6) - 1;
        long[] jArr = this.highMarksArray;
        jArr[i2] = jArr[i2] | (1 << (i & 63));
    }

    public final int nextUnmarkedHighIndex() {
        int length = this.highMarksArray.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = i2 * 64;
            long j = this.highMarksArray[i];
            while (j != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
                j |= 1 << iNumberOfTrailingZeros;
                int i4 = iNumberOfTrailingZeros + i3;
                if (this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(i4)).booleanValue()) {
                    this.highMarksArray[i] = j;
                    return i4;
                }
            }
            this.highMarksArray[i] = j;
            i = i2;
        }
        return -1;
    }
}
