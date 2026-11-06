package io.bidmachine.util.network;

import com.unity3d.services.core.network.model.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NetworkUtilsKt {
    public static final void disconnectSafely(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public static final byte[] readBytes(URLConnection uRLConnection) throws IOException {
        Intrinsics.checkNotNullParameter(uRLConnection, "<this>");
        InputStream it = uRLConnection.getInputStream();
        try {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            byte[] bytes = ByteStreamsKt.readBytes(it);
            CloseableKt.closeFinally(it, null);
            return bytes;
        } finally {
        }
    }

    public static final boolean isHttp(URL url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        return Intrinsics.areEqual("http", url.getProtocol()) || Intrinsics.areEqual(HttpRequest.DEFAULT_SCHEME, url.getProtocol());
    }
}
