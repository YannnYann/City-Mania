package org.chromium.net;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UploadDataSink {
    public abstract void onReadError(Exception exception);

    public abstract void onReadSucceeded(boolean finalChunk);

    public abstract void onRewindError(Exception exception);

    public abstract void onRewindSucceeded();
}
