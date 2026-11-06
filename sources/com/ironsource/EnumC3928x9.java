package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.x9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3928x9 {
    public static final a b;
    public static final EnumC3928x9 c = new EnumC3928x9("NonBidder", 0, 1);
    public static final EnumC3928x9 d = new EnumC3928x9("Bidder", 1, 2);
    public static final EnumC3928x9 e = new EnumC3928x9("NotSupported", 2, -1);
    private static final /* synthetic */ EnumC3928x9[] f;
    private static final /* synthetic */ EnumEntries g;
    private final int a;

    /* JADX INFO: renamed from: com.ironsource.x9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC3928x9 a(int i) {
            EnumC3928x9 enumC3928x9;
            EnumC3928x9[] enumC3928x9ArrValues = EnumC3928x9.values();
            int length = enumC3928x9ArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC3928x9 = null;
                    break;
                }
                enumC3928x9 = enumC3928x9ArrValues[i2];
                if (enumC3928x9.a == i) {
                    break;
                }
                i2++;
            }
            return enumC3928x9 == null ? EnumC3928x9.e : enumC3928x9;
        }

        private a() {
        }
    }

    static {
        EnumC3928x9[] enumC3928x9ArrA = a();
        f = enumC3928x9ArrA;
        g = EnumEntriesKt.enumEntries(enumC3928x9ArrA);
        b = new a(null);
    }

    private EnumC3928x9(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3928x9[] a() {
        return new EnumC3928x9[]{c, d, e};
    }

    public static EnumEntries<EnumC3928x9> b() {
        return g;
    }

    public static EnumC3928x9 valueOf(String str) {
        return (EnumC3928x9) Enum.valueOf(EnumC3928x9.class, str);
    }

    public static EnumC3928x9[] values() {
        return (EnumC3928x9[]) f.clone();
    }

    public final int c() {
        return this.a;
    }

    public final boolean b(EnumC3928x9 instanceType) {
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        return instanceType.c() == this.a;
    }
}
