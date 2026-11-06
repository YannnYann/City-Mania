package io.bidmachine.rendering.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m {
    public static final List b(String str, Character[] chArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < str.length()) {
            int i4 = i3 + 1;
            if (ArraysKt___ArraysKt.contains(chArr, Character.valueOf(str.charAt(i)))) {
                String strSubstring = str.substring(i2, i3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                arrayList.add(strSubstring);
                if (i3 > i2) {
                    i2 = i3;
                }
            }
            i++;
            i3 = i4;
        }
        String strSubstring2 = str.substring(i2, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        arrayList.add(strSubstring2);
        return arrayList;
    }
}
