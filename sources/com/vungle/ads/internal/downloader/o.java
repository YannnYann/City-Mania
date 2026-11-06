package com.vungle.ads.internal.downloader;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class o extends Exception {
    public final c a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(String url, c downloadError) {
        super("Template download failed: " + url + ", error: " + downloadError, downloadError.a());
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(downloadError, "downloadError");
        this.a = downloadError;
    }

    public final c a() {
        return this.a;
    }
}
