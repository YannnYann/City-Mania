package io.bidmachine.internal;

import io.bidmachine.util.version.Version;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class S {
    public final Version a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public S(Version version, int i, long j, long j2, long j3, long j4) {
        Intrinsics.checkNotNullParameter(version, "version");
        this.a = version;
        this.b = i;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
    }

    public final S a(Version version, int i, long j, long j2, long j3, long j4) {
        Intrinsics.checkNotNullParameter(version, "version");
        return new S(version, i, j, j2, j3, j4);
    }

    public final long b() {
        return this.c;
    }

    public final long c() {
        return this.f;
    }

    public final long d() {
        return this.d;
    }

    public final int e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S)) {
            return false;
        }
        S s = (S) obj;
        return Intrinsics.areEqual(this.a, s.a) && this.b == s.b && this.c == s.c && this.d == s.d && this.e == s.e && this.f == s.f;
    }

    public final Version f() {
        return this.a;
    }

    public int hashCode() {
        return (((((((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Long.hashCode(this.c)) * 31) + Long.hashCode(this.d)) * 31) + Long.hashCode(this.e)) * 31) + Long.hashCode(this.f);
    }

    public String toString() {
        return "VersionMilestone(version=" + this.a + ", sessionCount=" + this.b + ", firstSessionTime=" + this.c + ", lastSessionTime=" + this.d + ", currentSessionDuration=" + this.e + ", lastSessionDuration=" + this.f + ')';
    }

    public static /* synthetic */ S a(S s, Version version, int i, long j, long j2, long j3, long j4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            version = s.a;
        }
        if ((i2 & 2) != 0) {
            i = s.b;
        }
        if ((i2 & 4) != 0) {
            j = s.c;
        }
        if ((i2 & 8) != 0) {
            j2 = s.d;
        }
        if ((i2 & 16) != 0) {
            j3 = s.e;
        }
        if ((i2 & 32) != 0) {
            j4 = s.f;
        }
        long j5 = j4;
        long j6 = j3;
        long j7 = j2;
        return s.a(version, i, j, j7, j6, j5);
    }

    public final long a() {
        return this.e;
    }
}
