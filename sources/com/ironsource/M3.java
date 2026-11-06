package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class M3 {
    public static final a c;
    public static final M3 d = new M3("Day", 0, "d", 86400000);
    public static final M3 e = new M3("Hour", 1, "h", 3600000);
    public static final M3 f = new M3("Second", 2, "s", 1000);
    private static final /* synthetic */ M3[] g;
    private static final /* synthetic */ EnumEntries h;
    private final String a;
    private final long b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final M3 a(String str) {
            for (M3 m3 : M3.values()) {
                if (Intrinsics.areEqual(m3.a, str)) {
                    return m3;
                }
            }
            return null;
        }

        private a() {
        }
    }

    static {
        M3[] m3ArrA = a();
        g = m3ArrA;
        h = EnumEntriesKt.enumEntries(m3ArrA);
        c = new a(null);
    }

    private M3(String str, int i, String str2, long j) {
        this.a = str2;
        this.b = j;
    }

    private static final /* synthetic */ M3[] a() {
        return new M3[]{d, e, f};
    }

    public static EnumEntries<M3> b() {
        return h;
    }

    public static M3 valueOf(String str) {
        return (M3) Enum.valueOf(M3.class, str);
    }

    public static M3[] values() {
        return (M3[]) g.clone();
    }

    public final long a(Integer num) {
        return ((long) (num != null ? num.intValue() : 1)) * this.b;
    }

    public static /* synthetic */ long a(M3 m3, Integer num, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: inMilliseconds");
        }
        if ((i & 1) != 0) {
            num = 1;
        }
        return m3.a(num);
    }
}
