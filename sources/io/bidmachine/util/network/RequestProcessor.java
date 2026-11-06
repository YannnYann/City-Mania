package io.bidmachine.util.network;

import java.net.URLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface RequestProcessor {
    default byte[] getBody() throws Throwable {
        return null;
    }

    default void setupConnection(URLConnection urlConnection) throws Throwable {
        Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
    }
}
