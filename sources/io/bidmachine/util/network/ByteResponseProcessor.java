package io.bidmachine.util.network;

import java.net.URLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteResponseProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ByteResponseProcessor implements ResponseProcessor<byte[]> {
    @Override // io.bidmachine.util.network.ResponseProcessor
    public byte[] process(URLConnection urlConnection) throws Throwable {
        Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
        return NetworkUtilsKt.readBytes(urlConnection);
    }
}
