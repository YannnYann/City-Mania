package com.google.crypto.tink.internal;

/* JADX INFO: loaded from: classes3.dex */
public final class TinkBugException extends RuntimeException {

    public interface ThrowingSupplier<T> {
        T get() throws Exception;
    }

    public TinkBugException(String message) {
        super(message);
    }

    public TinkBugException(Throwable cause) {
        super(cause);
    }

    public static <T> T exceptionIsBug(ThrowingSupplier<T> t) {
        try {
            return t.get();
        } catch (Exception e) {
            throw new TinkBugException(e);
        }
    }
}
