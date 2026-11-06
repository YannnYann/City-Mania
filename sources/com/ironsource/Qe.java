package com.ironsource;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Qe {
    private final String a;
    private final List<String> b;
    private final boolean c;

    public Qe(String str, List<String> list, boolean z) {
        this.a = str;
        this.b = list;
        this.c = z;
    }

    public final boolean a() {
        if (this.c) {
            List<String> list = this.b;
            if (list != null && !list.isEmpty()) {
                for (String str : list) {
                    String str2 = this.a;
                    if (str2 != null && StringsKt__StringsJVMKt.startsWith$default(str2, str, false, 2, null)) {
                        return true;
                    }
                }
            }
            return false;
        }
        List<String> list2 = this.b;
        if (list2 != null && !list2.isEmpty()) {
            for (String str3 : list2) {
                String str4 = this.a;
                if (str4 != null && StringsKt__StringsKt.contains$default((CharSequence) str4, (CharSequence) str3, false, 2, (Object) null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String b() {
        return this.a;
    }

    public /* synthetic */ Qe(String str, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i & 4) != 0 ? false : z);
    }
}
