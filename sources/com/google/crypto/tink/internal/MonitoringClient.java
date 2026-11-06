package com.google.crypto.tink.internal;

/* JADX INFO: loaded from: classes3.dex */
public interface MonitoringClient {

    public interface Logger {
        default void log(int keyId, long numBytesAsInput) {
        }

        default void logFailure() {
        }

        default void logKeyExport(int keyId) {
        }
    }

    Logger createLogger(KeysetHandleInterface keysetInfo, MonitoringAnnotations annotations, String primitive, String api);
}
