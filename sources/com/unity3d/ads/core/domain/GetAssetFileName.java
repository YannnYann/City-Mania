package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.extensions.StringExtensionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: GetAssetFileName.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetAssetFileName {
    public final String invoke(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String strSubstringAfterLast = StringsKt__StringsKt.substringAfterLast(StringsKt__StringsKt.substringAfterLast$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '/', (String) null, 2, (Object) null), '.', "");
        if (!StringsKt__StringsKt.isBlank(strSubstringAfterLast)) {
            return StringExtensionsKt.getSHA256Hash(url) + '.' + strSubstringAfterLast;
        }
        return StringExtensionsKt.getSHA256Hash(url);
    }
}
