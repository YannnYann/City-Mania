package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.u9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3874u9 {
    public static final a b;
    public static final EnumC3874u9 c = new EnumC3874u9("APP_ACTIVITY", 0, 0);
    public static final EnumC3874u9 d = new EnumC3874u9("DIRECT_INTENT", 1, 1);
    private static final /* synthetic */ EnumC3874u9[] e;
    private static final /* synthetic */ EnumEntries f;
    private final int a;

    /* JADX INFO: renamed from: com.ironsource.u9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC3874u9 a(int i) {
            EnumC3874u9 enumC3874u9;
            EnumC3874u9[] enumC3874u9ArrValues = EnumC3874u9.values();
            int length = enumC3874u9ArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC3874u9 = null;
                    break;
                }
                enumC3874u9 = enumC3874u9ArrValues[i2];
                if (enumC3874u9.c() == i) {
                    break;
                }
                i2++;
            }
            return enumC3874u9 == null ? EnumC3874u9.c : enumC3874u9;
        }

        private a() {
        }
    }

    static {
        EnumC3874u9[] enumC3874u9ArrA = a();
        e = enumC3874u9ArrA;
        f = EnumEntriesKt.enumEntries(enumC3874u9ArrA);
        b = new a(null);
    }

    private EnumC3874u9(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3874u9[] a() {
        return new EnumC3874u9[]{c, d};
    }

    public static EnumEntries<EnumC3874u9> b() {
        return f;
    }

    public static EnumC3874u9 valueOf(String str) {
        return (EnumC3874u9) Enum.valueOf(EnumC3874u9.class, str);
    }

    public static EnumC3874u9[] values() {
        return (EnumC3874u9[]) e.clone();
    }

    public final int c() {
        return this.a;
    }
}
