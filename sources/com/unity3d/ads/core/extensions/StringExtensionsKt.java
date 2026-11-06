package com.unity3d.ads.core.extensions;

import java.net.URLConnection;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import okio.ByteString;

/* JADX INFO: compiled from: StringExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class StringExtensionsKt {
    private static final Regex VERSION_REGEX = new Regex("[0-9.]+");

    public static final String getSHA256Hash(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strHex = ByteString.of(Arrays.copyOf(bytes, bytes.length)).sha256().hex();
        Intrinsics.checkNotNullExpressionValue(strHex, "hex(...)");
        return strHex;
    }

    public static final String guessMimeType(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return URLConnection.guessContentTypeFromName(str);
    }

    public static final int compareVersion(String str, String other) {
        Integer intOrNull;
        Integer intOrNull2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (str.length() == 0 || other.length() == 0) {
            return -1;
        }
        String strRemovePrefix = StringsKt__StringsKt.removePrefix(StringsKt__StringsKt.removePrefix(str, "v"), "V");
        String strRemovePrefix2 = StringsKt__StringsKt.removePrefix(StringsKt__StringsKt.removePrefix(other, "v"), "V");
        Regex regex = VERSION_REGEX;
        if (!regex.matches(strRemovePrefix) || !regex.matches(strRemovePrefix2) || StringsKt__StringsKt.contains$default((CharSequence) strRemovePrefix, (CharSequence) "..", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) strRemovePrefix2, (CharSequence) "..", false, 2, (Object) null)) {
            return -1;
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) strRemovePrefix, new String[]{"."}, false, 0, 6, (Object) null);
        List listSplit$default2 = StringsKt__StringsKt.split$default((CharSequence) strRemovePrefix2, new String[]{"."}, false, 0, 6, (Object) null);
        int iMax = Math.max(listSplit$default.size(), listSplit$default2.size());
        for (int i = 0; i < iMax; i++) {
            String str2 = (String) CollectionsKt___CollectionsKt.getOrNull(listSplit$default, i);
            int iIntValue = (str2 == null || (intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(str2)) == null) ? 0 : intOrNull2.intValue();
            String str3 = (String) CollectionsKt___CollectionsKt.getOrNull(listSplit$default2, i);
            int iIntValue2 = (str3 == null || (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str3)) == null) ? 0 : intOrNull.intValue();
            if (iIntValue != iIntValue2) {
                return Intrinsics.compare(iIntValue, iIntValue2);
            }
        }
        return 0;
    }
}
