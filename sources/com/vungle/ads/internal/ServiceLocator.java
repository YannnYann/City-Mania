package com.vungle.ads.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.PathProvider;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ServiceLocator {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ServiceLocator INSTANCE;
    public static final r1 d = new r1();
    public final Context a;
    public final HashMap b;
    public final HashMap c;

    public ServiceLocator(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.a = applicationContext;
        this.b = new HashMap();
        this.c = new HashMap();
        b();
    }

    public /* synthetic */ ServiceLocator(Context context, int i) {
        this(context);
    }

    public final void b() {
        this.b.put(com.vungle.ads.internal.task.d.class, new a2(this));
        this.b.put(com.vungle.ads.internal.task.g.class, new b2(this));
        this.b.put(VungleApiClient.class, new c2(this));
        this.b.put(com.vungle.ads.internal.platform.f.class, new d2(this));
        this.b.put(com.vungle.ads.internal.executor.a.class, new e2());
        this.b.put(com.vungle.ads.internal.omsdk.c.class, new f2(this));
        this.b.put(com.vungle.ads.internal.omsdk.d.class, new g2());
        this.b.put(FilePreferences.class, new h2(this));
        this.b.put(com.vungle.ads.internal.locale.a.class, new i2());
        this.b.put(com.vungle.ads.internal.bidding.e.class, new t1(this));
        this.b.put(PathProvider.class, new u1(this));
        this.b.put(com.vungle.ads.internal.downloader.n.class, new v1(this));
        this.b.put(com.vungle.ads.internal.downloader.u.class, new w1(this));
        this.b.put(com.vungle.ads.internal.util.l.class, new x1());
        this.b.put(com.vungle.ads.internal.signals.j.class, new y1(this));
        this.b.put(com.vungle.ads.internal.network.r.class, new z1(this));
    }

    public final synchronized boolean c() {
        HashMap map;
        Intrinsics.checkNotNullParameter(com.vungle.ads.internal.downloader.u.class, "serviceClass");
        map = this.c;
        for (Class cls : this.b.keySet()) {
            if (cls.isAssignableFrom(com.vungle.ads.internal.downloader.u.class)) {
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + com.vungle.ads.internal.downloader.u.class);
        return map.containsKey(cls);
    }

    public final synchronized <T> T getService(Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        return (T) a(serviceClass);
    }

    public final Object a(Class cls) {
        for (Class cls2 : this.b.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                Object obj = this.c.get(cls2);
                if (obj != null) {
                    return obj;
                }
                s1 s1Var = (s1) this.b.get(cls2);
                if (s1Var != null) {
                    Object objA = s1Var.a();
                    if (s1Var.a) {
                        this.c.put(cls2, objA);
                    }
                    return objA;
                }
                throw new IllegalArgumentException("Unknown class");
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }
}
