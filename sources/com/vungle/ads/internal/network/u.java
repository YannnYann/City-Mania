package com.vungle.ads.internal.network;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;

/* JADX INFO: loaded from: classes4.dex */
public final class u implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody == null || request.header("Content-Encoding") != null) {
            return chain.proceed(request);
        }
        Request.Builder builderHeader = request.newBuilder().header("Content-Encoding", "gzip");
        String strMethod = request.method();
        Buffer buffer = new Buffer();
        BufferedSink bufferedSinkBuffer = Okio.buffer(new GzipSink(buffer));
        requestBodyBody.writeTo(bufferedSinkBuffer);
        bufferedSinkBuffer.close();
        return chain.proceed(builderHeader.method(strMethod, new t(requestBodyBody, buffer)).build());
    }
}
