package com.ironsource;

import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class W7 {
    public static final a b;
    public static final W7 c = new W7("UnknownProvider", 0, 0);
    public static final W7 d = new W7("DeliverySonic", 1, 1);
    public static final W7 e = new W7("MarketPlaceISX", 2, 3);
    private static final /* synthetic */ W7[] f;
    private static final /* synthetic */ EnumEntries g;
    private final int a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final W7 a(Integer num) {
            W7 w7;
            W7[] w7ArrValues = W7.values();
            int length = w7ArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    w7 = null;
                    break;
                }
                w7 = w7ArrValues[i];
                int iC = w7.c();
                if (num != null && iC == num.intValue()) {
                    break;
                }
                i++;
            }
            return w7 == null ? W7.c : w7;
        }

        private a() {
        }

        public final W7 a(String dynamicDemandSourceId) {
            Intrinsics.checkNotNullParameter(dynamicDemandSourceId, "dynamicDemandSourceId");
            List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) dynamicDemandSourceId, new String[]{"_"}, false, 0, 6, (Object) null);
            return listSplit$default.size() < 2 ? W7.c : a(StringsKt__StringNumberConversionsKt.toIntOrNull((String) listSplit$default.get(1)));
        }
    }

    static {
        W7[] w7ArrA = a();
        f = w7ArrA;
        g = EnumEntriesKt.enumEntries(w7ArrA);
        b = new a(null);
    }

    private W7(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ W7[] a() {
        return new W7[]{c, d, e};
    }

    public static EnumEntries<W7> b() {
        return g;
    }

    public static W7 valueOf(String str) {
        return (W7) Enum.valueOf(W7.class, str);
    }

    public static W7[] values() {
        return (W7[]) f.clone();
    }

    public final int c() {
        return this.a;
    }
}
