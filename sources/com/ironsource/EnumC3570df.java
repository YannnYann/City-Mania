package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.df, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3570df {
    public static final a b;
    public static final EnumC3570df c = new EnumC3570df("Off", 0, 0);
    public static final EnumC3570df d = new EnumC3570df("CurrentlyLoadedAds", 1, 1);
    public static final EnumC3570df e = new EnumC3570df("CurrentlyLoadedAdsAndFullHistory", 2, 2);
    private static final /* synthetic */ EnumC3570df[] f;
    private static final /* synthetic */ EnumEntries g;
    private final int a;

    /* JADX INFO: renamed from: com.ironsource.df$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC3570df a(int i) {
            EnumC3570df enumC3570df;
            EnumC3570df[] enumC3570dfArrValues = EnumC3570df.values();
            int length = enumC3570dfArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC3570df = null;
                    break;
                }
                enumC3570df = enumC3570dfArrValues[i2];
                if (enumC3570df.a == i) {
                    break;
                }
                i2++;
            }
            return enumC3570df == null ? EnumC3570df.d : enumC3570df;
        }

        private a() {
        }
    }

    static {
        EnumC3570df[] enumC3570dfArrA = a();
        f = enumC3570dfArrA;
        g = EnumEntriesKt.enumEntries(enumC3570dfArrA);
        b = new a(null);
    }

    private EnumC3570df(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3570df[] a() {
        return new EnumC3570df[]{c, d, e};
    }

    public static EnumEntries<EnumC3570df> b() {
        return g;
    }

    public static EnumC3570df valueOf(String str) {
        return (EnumC3570df) Enum.valueOf(EnumC3570df.class, str);
    }

    public static EnumC3570df[] values() {
        return (EnumC3570df[]) f.clone();
    }

    public final int c() {
        return this.a;
    }
}
