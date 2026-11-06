package com.unity3d.ads.core.domain;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: CommonGetFileExtensionFromUrl.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonGetFileExtensionFromUrl implements GetFileExtensionFromUrl {
    private final RemoveUrlQuery removeUrlQuery;

    public CommonGetFileExtensionFromUrl(RemoveUrlQuery removeUrlQuery) {
        Intrinsics.checkNotNullParameter(removeUrlQuery, "removeUrlQuery");
        this.removeUrlQuery = removeUrlQuery;
    }

    public final RemoveUrlQuery getRemoveUrlQuery() {
        return this.removeUrlQuery;
    }

    @Override // com.unity3d.ads.core.domain.GetFileExtensionFromUrl
    public String invoke(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String strInvoke = this.removeUrlQuery.invoke(url);
        if (strInvoke == null) {
            return null;
        }
        String strSubstringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(strInvoke, '/', (String) null, 2, (Object) null);
        if (!StringsKt__StringsKt.contains$default((CharSequence) strSubstringAfterLast$default, '.', false, 2, (Object) null)) {
            return null;
        }
        String strSubstringAfterLast$default2 = StringsKt__StringsKt.substringAfterLast$default(strSubstringAfterLast$default, '.', (String) null, 2, (Object) null);
        if (strSubstringAfterLast$default2.length() == 0) {
            return null;
        }
        return strSubstringAfterLast$default2;
    }
}
