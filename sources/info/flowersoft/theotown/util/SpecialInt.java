package info.flowersoft.theotown.util;

import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SpecialInt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SpecialInt {
    public static final Companion Companion = new Companion(null);
    public static final Random random = new Random(0);
    public long seed;
    public int valueA;
    public int valueB;

    public SpecialInt(int i) {
        set(i);
    }

    public SpecialInt() {
        this(0);
    }

    public final void setZero() {
        set(0);
    }

    public final void set(int i) {
        Random random2 = random;
        synchronized (random2) {
            long jMix = Companion.mix(System.nanoTime() ^ ((long) System.identityHashCode(this)));
            this.seed = jMix;
            random2.setSeed(jMix);
            int iNextInt = random2.nextInt();
            int iNextInt2 = random2.nextInt();
            int iNextInt3 = random2.nextInt();
            int iNextInt4 = random2.nextInt();
            int iNextInt5 = random2.nextInt();
            this.valueA = (iNextInt ^ i) + iNextInt3;
            this.valueB = (~((i ^ iNextInt2) + iNextInt4)) + iNextInt5;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final int get() {
        int i;
        Random random2 = random;
        synchronized (random2) {
            random2.setSeed(this.seed);
            int iNextInt = random2.nextInt();
            int iNextInt2 = random2.nextInt();
            int iNextInt3 = random2.nextInt();
            int iNextInt4 = random2.nextInt();
            int iNextInt5 = random2.nextInt();
            i = iNextInt ^ (this.valueA - iNextInt3);
            if (i != (iNextInt2 ^ ((~(this.valueB - iNextInt5)) - iNextInt4))) {
                System.exit(0);
                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
            }
        }
        return i;
    }

    public String toString() {
        return String.valueOf(get());
    }

    /* JADX INFO: compiled from: SpecialInt.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long mix(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        public Companion() {
        }

        public final Random getRandom() {
            return SpecialInt.random;
        }
    }
}
