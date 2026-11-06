package org.chromium.net.impl;

import android.net.http.UrlRequest$StatusListener;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidUrlRequestStatusListenerWrapper implements UrlRequest$StatusListener {
    public final UrlRequest.StatusListener mBackend;

    public AndroidUrlRequestStatusListenerWrapper(UrlRequest.StatusListener backend) {
        this.mBackend = backend;
    }

    public void onStatus(int i) {
        this.mBackend.onStatus(i);
    }
}
