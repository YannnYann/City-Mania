package com.vungle.ads.internal.network;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends ResponseBody {
    public final MediaType a;
    public final long b;

    public k(MediaType mediaType, long j) {
        this.a = mediaType;
        this.b = j;
    }

    @Override // okhttp3.ResponseBody
    public final long contentLength() {
        return this.b;
    }

    @Override // okhttp3.ResponseBody
    public final MediaType contentType() {
        return this.a;
    }

    @Override // okhttp3.ResponseBody
    public final BufferedSource source() {
        throw new IllegalStateException("Cannot read raw response body of a converted body.");
    }
}
