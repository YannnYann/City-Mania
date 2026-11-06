package com.unity3d.ads.core.extensions;

import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: MapExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MapExtensionsKt {
    public static final int sizeInKb(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Iterator<T> it = map.entrySet().iterator();
        int length = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Charset charset = Charsets.UTF_8;
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            int length2 = bytes.length;
            byte[] bytes2 = str2.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            length += length2 + bytes2.length;
        }
        return length / 1024;
    }
}
