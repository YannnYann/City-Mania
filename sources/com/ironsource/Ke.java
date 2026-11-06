package com.ironsource;

import android.content.Context;
import com.ironsource.Ue;
import com.ironsource.environment.NetworkStateReceiver;

/* JADX INFO: loaded from: classes3.dex */
public interface Ke {
    static /* synthetic */ void a(Ke ke, Runnable runnable, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postOnUIThread");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        ke.a(runnable, j);
    }

    B7 a();

    Ue a(Context context, String str);

    NetworkStateReceiver a(Context context, Jc jc);

    String a(Context context);

    void a(long j, Ue.a aVar);

    void a(Context context, NetworkStateReceiver networkStateReceiver);

    void a(He he);

    void a(N1 n1);

    void a(Runnable runnable);

    void a(Runnable runnable, long j);

    void a(String str, String str2);

    void b();

    void b(Runnable runnable);

    boolean b(Context context);

    C3655ia c();

    String c(Context context);

    void c(@InterfaceC3930xb Runnable runnable);

    void d(Runnable runnable);

    boolean d();

    void e();

    void f();

    void g();

    void h();

    C3528ba i();
}
