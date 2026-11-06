package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.Logger;

/* JADX INFO: renamed from: com.ironsource.i5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class HandlerC3650i5 extends Handler {
    private static final String b = "DownloadHandler";
    Vc a;

    public HandlerC3650i5(Looper looper) {
        super(looper);
    }

    public void a(Vc vc) {
        if (vc == null) {
            throw new IllegalArgumentException();
        }
        this.a = vc;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Vc vc = this.a;
        if (vc == null) {
            Logger.i(b, "OnPreCacheCompletion listener is null, msg: " + message.toString());
            return;
        }
        try {
            int i = message.what;
            if (i == 1016) {
                vc.a((D8) message.obj);
            } else {
                this.a.a((D8) message.obj, new C3873u8(i, C3917wg.a(i)));
            }
        } catch (Throwable th) {
            C3813r4.d().a(th);
            Logger.i(b, "handleMessage | Got exception: " + th.getMessage());
            IronLog.INTERNAL.error(th.toString());
        }
    }

    public void a() {
        this.a = null;
    }
}
