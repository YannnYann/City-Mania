package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.c7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3543c7 {
    public static final a b;
    public static final EnumC3543c7 c = new EnumC3543c7("SendEvent", 0, 0);
    public static final EnumC3543c7 d = new EnumC3543c7("NativeController", 1, 1);
    private static final /* synthetic */ EnumC3543c7[] e;
    private static final /* synthetic */ EnumEntries f;
    private final int a;

    /* JADX INFO: renamed from: com.ironsource.c7$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC3543c7 a(int i) {
            EnumC3543c7 enumC3543c7;
            EnumC3543c7[] enumC3543c7ArrValues = EnumC3543c7.values();
            int length = enumC3543c7ArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC3543c7 = null;
                    break;
                }
                enumC3543c7 = enumC3543c7ArrValues[i2];
                if (enumC3543c7.c() == i) {
                    break;
                }
                i2++;
            }
            return enumC3543c7 == null ? EnumC3543c7.c : enumC3543c7;
        }

        private a() {
        }
    }

    static {
        EnumC3543c7[] enumC3543c7ArrA = a();
        e = enumC3543c7ArrA;
        f = EnumEntriesKt.enumEntries(enumC3543c7ArrA);
        b = new a(null);
    }

    private EnumC3543c7(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3543c7[] a() {
        return new EnumC3543c7[]{c, d};
    }

    public static EnumEntries<EnumC3543c7> b() {
        return f;
    }

    public static EnumC3543c7 valueOf(String str) {
        return (EnumC3543c7) Enum.valueOf(EnumC3543c7.class, str);
    }

    public static EnumC3543c7[] values() {
        return (EnumC3543c7[]) e.clone();
    }

    public final int c() {
        return this.a;
    }
}
