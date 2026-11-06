package io.bidmachine.util.network;

import java.net.URLConnection;

/* JADX INFO: compiled from: ResponseProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ResponseProcessor<ResponseType> {
    ResponseType process(URLConnection uRLConnection) throws Throwable;
}
