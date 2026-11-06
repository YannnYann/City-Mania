package com.vungle.ads.internal.downloader;

import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public enum k {
    CRITICAL(-2147483647),
    HIGHEST(0),
    /* JADX INFO: Fake field, exist only in values array */
    HIGH(1),
    LOWEST(Api.BaseClientBuilder.API_PRIORITY_OTHER);

    public final int a;

    k(int i) {
        this.a = i;
    }
}
