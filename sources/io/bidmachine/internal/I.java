package io.bidmachine.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class I {
    public final long a;
    public final long b;
    public final boolean c;

    public I(long j, long j2, boolean z) {
        this.a = j;
        this.b = j2;
        this.c = z;
    }

    public final long a() {
        return this.b;
    }

    public final long b() {
        return this.a;
    }

    public final boolean c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I)) {
            return false;
        }
        I i = (I) obj;
        return this.a == i.a && this.b == i.b && this.c == i.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((Long.hashCode(this.a) * 31) + Long.hashCode(this.b)) * 31;
        boolean z = this.c;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "StartupMetrics(startTime=" + this.a + ", duration=" + this.b + ", isFinished=" + this.c + ')';
    }
}
