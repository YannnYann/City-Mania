package org.chromium.net.impl;

import org.chromium.net.CallbackException;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidCallbackExceptionWrapper extends CallbackException {
    public AndroidCallbackExceptionWrapper(android.net.http.CallbackException e) {
        super(e.getMessage(), e.getCause());
    }
}
