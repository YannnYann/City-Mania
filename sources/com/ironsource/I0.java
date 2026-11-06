package com.ironsource;

/* JADX INFO: loaded from: classes3.dex */
public final class I0 {
    private final long a;

    public I0(long j) {
        this.a = j;
    }

    public final long a() {
        return this.a;
    }

    public final long b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof I0) && this.a == ((I0) obj).a;
    }

    public int hashCode() {
        return Long.hashCode(this.a);
    }

    public String toString() {
        return "AdUnitInteractionData(impressionTimeout=" + this.a + ")";
    }

    public final I0 a(long j) {
        return new I0(j);
    }

    public static /* synthetic */ I0 a(I0 i0, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = i0.a;
        }
        return i0.a(j);
    }
}
