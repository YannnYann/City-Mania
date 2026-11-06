package com.unity3d.ads.core.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: compiled from: GetMemoryValueFromString.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetMemoryValueFromStringKt {
    public static final long getMemoryValueFromString(String str) {
        Long longOrNull;
        if (str == null) {
            return -1L;
        }
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        String strGroup = null;
        while (matcher.find()) {
            strGroup = matcher.group(1);
        }
        if (strGroup == null || (longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strGroup)) == null) {
            return -1L;
        }
        return longOrNull.longValue();
    }
}
