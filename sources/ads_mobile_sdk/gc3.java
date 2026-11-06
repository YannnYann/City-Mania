package ads_mobile_sdk;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class gc3 extends x93 {
    public final /* synthetic */ lc3 b;

    public gc3(lc3 lc3Var) {
        this.b = lc3Var;
    }

    @Override // ads_mobile_sdk.x93
    public final void a() {
        synchronized (this.b.f) {
            try {
                if (this.b.l.get() > 0 && this.b.l.decrementAndGet() > 0) {
                    this.b.b.a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                lc3 lc3Var = this.b;
                if (lc3Var.n != null) {
                    lc3Var.b.a("Unbind from service.", new Object[0]);
                    lc3 lc3Var2 = this.b;
                    lc3Var2.a.unbindService(lc3Var2.m);
                    lc3 lc3Var3 = this.b;
                    lc3Var3.g = false;
                    lc3Var3.n = null;
                    lc3Var3.m = null;
                }
                lc3 lc3Var4 = this.b;
                Iterator it = lc3Var4.e.iterator();
                while (it.hasNext()) {
                    ((TaskCompletionSource) it.next()).trySetException(new RemoteException(lc3Var4.c + " : Binder has died."));
                }
                lc3Var4.e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
