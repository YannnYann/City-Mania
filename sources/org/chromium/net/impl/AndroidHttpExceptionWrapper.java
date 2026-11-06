package org.chromium.net.impl;

import android.net.http.HttpException;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidHttpExceptionWrapper extends CronetException {
    public AndroidHttpExceptionWrapper(HttpException e) {
        super(e.getMessage(), e);
    }
}
