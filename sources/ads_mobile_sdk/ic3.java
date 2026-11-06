package ads_mobile_sdk;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class ic3 extends x93 {
    public final /* synthetic */ IBinder b;
    public final /* synthetic */ kc3 c;

    public ic3(kc3 kc3Var, IBinder iBinder) {
        this.c = kc3Var;
        this.b = iBinder;
    }

    @Override // ads_mobile_sdk.x93
    public final void a() {
        lc3 lc3Var = this.c.a;
        lc3Var.n = (IInterface) lc3Var.i.a(this.b);
        lc3 lc3Var2 = this.c.a;
        lc3Var2.b.a("linkToDeath", new Object[0]);
        try {
            lc3Var2.n.asBinder().linkToDeath(lc3Var2.k, 0);
        } catch (RemoteException e) {
            pt1 pt1Var = lc3Var2.b;
            Object[] objArr = new Object[0];
            pt1Var.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", pt1.a(pt1Var.a, "linkToDeath failed", objArr), e);
            }
        }
        lc3 lc3Var3 = this.c.a;
        lc3Var3.g = false;
        Iterator it = lc3Var3.d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.c.a.d.clear();
    }
}
