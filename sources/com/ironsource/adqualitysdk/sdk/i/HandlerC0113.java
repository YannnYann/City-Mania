package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class HandlerC0113 extends Handler {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0092 f1049;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0113(C0092 c0092, Looper looper) {
        super(looper);
        this.f1049 = c0092;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        AbstractC0096[] abstractC0096Arr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        C0092 c0092 = this.f1049;
        do {
            synchronized (c0092.f901) {
                try {
                    size = c0092.f899.size();
                    if (size <= 0) {
                        return;
                    }
                    abstractC0096Arr = new AbstractC0096[size];
                    c0092.f899.toArray(abstractC0096Arr);
                    c0092.f899.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (size <= 0);
        AbstractC0096 abstractC0096 = abstractC0096Arr[0];
        throw null;
    }
}
