package com.ironsource;

import android.os.Debug;

/* JADX INFO: loaded from: classes3.dex */
public final class Rb {
    private final int a;
    private final int b;
    private final int c;

    public interface a {

        /* JADX INFO: renamed from: com.ironsource.Rb$a$a, reason: collision with other inner class name */
        public static final class C0032a implements a {
            @Override // com.ironsource.Rb.a
            public Rb get() {
                Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                int i = memoryInfo.dalvikPss;
                int i2 = memoryInfo.nativePss;
                return new Rb(i, i2, Math.max(0, (memoryInfo.getTotalPss() - i2) - i));
            }
        }

        Rb get();
    }

    public Rb(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.a;
    }

    public final int e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rb)) {
            return false;
        }
        Rb rb = (Rb) obj;
        return this.a == rb.a && this.b == rb.b && this.c == rb.c;
    }

    public final int f() {
        return this.c;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c);
    }

    public String toString() {
        return "MemoryInfo(javaHeapKb=" + this.a + ", nativeHeapKb=" + this.b + ", sharedOtherKb=" + this.c + ")";
    }

    public final Rb a(int i, int i2, int i3) {
        return new Rb(i, i2, i3);
    }

    public static /* synthetic */ Rb a(Rb rb, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = rb.a;
        }
        if ((i4 & 2) != 0) {
            i2 = rb.b;
        }
        if ((i4 & 4) != 0) {
            i3 = rb.c;
        }
        return rb.a(i, i2, i3);
    }
}
