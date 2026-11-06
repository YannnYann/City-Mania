package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.z4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3959z4 {
    public static final a b;
    public static final EnumC3959z4 c = new EnumC3959z4("IADS", 0, "iads");
    public static final EnumC3959z4 d = new EnumC3959z4("UADS", 1, "uads");
    public static final EnumC3959z4 e = new EnumC3959z4("SHARED", 2, "shared");
    public static final EnumC3959z4 f = new EnumC3959z4("NONE", 3, "none");
    private static final /* synthetic */ EnumC3959z4[] g;
    private static final /* synthetic */ EnumEntries h;
    private final String a;

    /* JADX INFO: renamed from: com.ironsource.z4$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC3959z4 a(String str) {
            EnumC3959z4 enumC3959z4;
            EnumC3959z4[] enumC3959z4ArrValues = EnumC3959z4.values();
            int length = enumC3959z4ArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    enumC3959z4 = null;
                    break;
                }
                enumC3959z4 = enumC3959z4ArrValues[i];
                if (Intrinsics.areEqual(enumC3959z4.c(), str)) {
                    break;
                }
                i++;
            }
            return enumC3959z4 == null ? EnumC3959z4.f : enumC3959z4;
        }

        private a() {
        }
    }

    static {
        EnumC3959z4[] enumC3959z4ArrA = a();
        g = enumC3959z4ArrA;
        h = EnumEntriesKt.enumEntries(enumC3959z4ArrA);
        b = new a(null);
    }

    private EnumC3959z4(String str, int i, String str2) {
        this.a = str2;
    }

    private static final /* synthetic */ EnumC3959z4[] a() {
        return new EnumC3959z4[]{c, d, e, f};
    }

    public static EnumEntries<EnumC3959z4> b() {
        return h;
    }

    public static EnumC3959z4 valueOf(String str) {
        return (EnumC3959z4) Enum.valueOf(EnumC3959z4.class, str);
    }

    public static EnumC3959z4[] values() {
        return (EnumC3959z4[]) g.clone();
    }

    public final String c() {
        return this.a;
    }

    public static final EnumC3959z4 a(String str) {
        return b.a(str);
    }
}
