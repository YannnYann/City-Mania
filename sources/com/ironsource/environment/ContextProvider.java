package com.ironsource.environment;

import android.app.Activity;
import android.content.Context;
import com.ironsource.Cf;
import com.ironsource.InterfaceC3595f4;
import com.ironsource.Pb;
import com.ironsource.ah;

/* JADX INFO: loaded from: classes3.dex */
public class ContextProvider {
    private static volatile ContextProvider b;
    private InterfaceC3595f4 a = new Cf();

    private ContextProvider() {
    }

    public static ContextProvider getInstance() {
        if (b == null) {
            synchronized (ContextProvider.class) {
                try {
                    if (b == null) {
                        b = new ContextProvider();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public Context getActiveContext() {
        Activity activityA = this.a.a();
        return activityA != null ? activityA : this.a.b();
    }

    public Context getApplicationContext() {
        Context contextB = this.a.b();
        Activity activityA = this.a.a();
        return (contextB != null || activityA == null) ? contextB : activityA.getApplicationContext();
    }

    public Activity getCurrentActiveActivity() {
        return this.a.a();
    }

    public void updateActivity(Activity activity) {
        if (activity != null) {
            this.a.a(activity);
        }
    }

    public void updateAppContext(Context context) {
        if (context != null) {
            this.a.a(context);
        }
    }

    public void updateStrategyIfNeeded() {
        if (Pb.k0().h().w()) {
            this.a = new ah(this.a.a(), this.a.b());
        }
    }
}
