package com.ironsource;

import android.os.Handler;
import android.os.Message;
import com.ironsource.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: renamed from: com.ironsource.zf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
class RunnableC3970zf implements Runnable {
    private final Handler a;
    private final C3614g5 b;

    public RunnableC3970zf(C3614g5 c3614g5, Handler handler) {
        this.b = c3614g5;
        this.a = handler;
    }

    public CallableC3560d6 a(C3614g5 c3614g5, String str, long j) {
        return new CallableC3560d6(c3614g5, str, j);
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        D8 d8 = new D8(this.b.b().getParent(), this.b.b().getName());
        Message messageA = a();
        messageA.obj = d8;
        String strA = a(d8.getParent());
        if (strA == null) {
            messageA.what = 1020;
            this.a.sendMessage(messageA);
        } else {
            C3632h5 c3632h5Call = a(new C3614g5(d8, this.b.e(), this.b.a(), this.b.c(), this.b.f(), this.b.d()), strA, 3L).call();
            messageA.what = c3632h5Call.b() == 200 ? C3558d4.l : c3632h5Call.b();
            this.a.sendMessage(messageA);
        }
    }

    public Message a() {
        return new Message();
    }

    public String a(String str) {
        return IronSourceStorageUtils.makeDir(str);
    }
}
