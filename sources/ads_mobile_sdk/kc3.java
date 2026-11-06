package ads_mobile_sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class kc3 implements ServiceConnection {
    public final /* synthetic */ lc3 a;

    public kc3(lc3 lc3Var) {
        this.a = lc3Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.a.b.a("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.a.b(new ic3(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.a.b.a("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.a.b(new jc3(this));
    }
}
