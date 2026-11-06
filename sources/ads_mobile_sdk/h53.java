package ads_mobile_sdk;

import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h53 {
    public static j53 a(String format) {
        Intrinsics.checkNotNullParameter(format, "format");
        LinkedHashMap linkedHashMap = j53.c;
        String lowerCase = format.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return (j53) linkedHashMap.get(lowerCase);
    }
}
