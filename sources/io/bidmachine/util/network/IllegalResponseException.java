package io.bidmachine.util.network;

import java.io.IOException;

/* JADX INFO: compiled from: IllegalResponseException.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IllegalResponseException extends IOException {
    public final int responseCode;

    public IllegalResponseException(int i) {
        super("Server returned " + i + " code");
        this.responseCode = i;
    }
}
