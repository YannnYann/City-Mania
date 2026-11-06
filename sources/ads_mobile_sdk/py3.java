package ads_mobile_sdk;

import android.app.AppOpsManager$OnOpActiveChangedListener;

/* JADX INFO: loaded from: classes.dex */
public final class py3 implements AppOpsManager$OnOpActiveChangedListener {
    public final /* synthetic */ qy3 a;

    public py3(qy3 qy3Var) {
        this.a = qy3Var;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        synchronized (this.a) {
            try {
                if (z) {
                    qy3 qy3Var = this.a;
                    qy3Var.a.getClass();
                    qy3Var.d = System.currentTimeMillis();
                    this.a.g = true;
                } else {
                    this.a.a.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    qy3 qy3Var2 = this.a;
                    long j = qy3Var2.e;
                    if (j > 0 && jCurrentTimeMillis >= j) {
                        qy3Var2.f = jCurrentTimeMillis - j;
                    }
                    qy3Var2.g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
