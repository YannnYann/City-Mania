package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class L3 {
    private final boolean a;
    private final N3 b;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[N3.values().length];
            try {
                iArr[N3.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[N3.a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[N3.b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public L3(boolean z, N3 n3) {
        this.a = z;
        this.b = n3;
    }

    public final boolean a() {
        return this.a;
    }

    public final N3 b() {
        return this.b;
    }

    public final N3 c() {
        return this.b;
    }

    public final boolean d() {
        return this.a;
    }

    public final String e() {
        N3 n3 = this.b;
        int i = n3 == null ? -1 : a.a[n3.ordinal()];
        if (i == 1) {
            return "Placement delivery is false";
        }
        if (i == 2) {
            return "In pacing mode";
        }
        if (i != 3) {
            return null;
        }
        return "Max ad cap reached";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof L3)) {
            return false;
        }
        L3 l3 = (L3) obj;
        return this.a == l3.a && this.b == l3.b;
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        N3 n3 = this.b;
        return iHashCode + (n3 == null ? 0 : n3.hashCode());
    }

    public String toString() {
        return "CappingStatus(isCapped=" + this.a + " reason=" + this.b + ")";
    }

    public /* synthetic */ L3(boolean z, N3 n3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : n3);
    }

    public final L3 a(boolean z, N3 n3) {
        return new L3(z, n3);
    }

    public static /* synthetic */ L3 a(L3 l3, boolean z, N3 n3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = l3.a;
        }
        if ((i & 2) != 0) {
            n3 = l3.b;
        }
        return l3.a(z, n3);
    }
}
