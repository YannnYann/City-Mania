package ads_mobile_sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class ch1 implements ServiceConnection {
    public final mh1 a;
    public final /* synthetic */ dh1 b;

    public ch1(dh1 dh1Var, rh1 rh1Var) {
        this.b = dh1Var;
        this.a = rh1Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        u81 s81Var;
        gh1.a("Install Referrer service connected.");
        dh1 dh1Var = this.b;
        int i = t81.$r8$clinit;
        if (iBinder == null) {
            s81Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (iInterfaceQueryLocalInterface instanceof u81) {
                s81Var = (u81) iInterfaceQueryLocalInterface;
            } else {
                s81Var = new s81(iBinder);
            }
        }
        dh1Var.d = s81Var;
        this.b.a = 2;
        ((rh1) this.a).a(0);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        gh1.b("Install Referrer service disconnected.");
        dh1 dh1Var = this.b;
        dh1Var.d = null;
        dh1Var.a = 0;
        this.a.getClass();
    }
}
