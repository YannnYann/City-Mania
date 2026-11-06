package org.chromium.net;

/* JADX INFO: loaded from: classes5.dex */
public abstract class QuicException extends NetworkException {
    public int getConnectionCloseSource() {
        return 0;
    }

    public abstract int getQuicDetailedErrorCode();

    public QuicException(String message, Throwable cause) {
        super(message, cause);
    }
}
