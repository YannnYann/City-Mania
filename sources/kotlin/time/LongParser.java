package kotlin.time;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LongParser {
    public final boolean allowSign;
    public final long lastDigitMax;
    public final long overflowLimit;
    public final long overflowThreshold;
    public static final Companion Companion = new Companion(null);
    public static final LongParser iso = new LongParser(4611686018427387903L, true);

    /* JADX INFO: renamed from: default, reason: not valid java name */
    public static final LongParser f3916default = new LongParser(Long.MAX_VALUE, false);

    public LongParser(long j, boolean z) {
        this.overflowLimit = j;
        this.allowSign = z;
        long j2 = 10;
        this.overflowThreshold = j / j2;
        this.lastDigitMax = j % j2;
    }

    /* JADX INFO: compiled from: Duration.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final LongParser getIso() {
            return LongParser.iso;
        }

        public final LongParser getDefault() {
            return LongParser.f3916default;
        }
    }
}
