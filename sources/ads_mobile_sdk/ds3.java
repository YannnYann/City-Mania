package ads_mobile_sdk;

import android.os.SystemClock;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ds3 extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        WeakHashMap weakHashMap = hs3.a;
        gs3 gs3Var = new gs3(null, SystemClock.currentThreadTimeMillis(), null);
        Thread threadCurrentThread = Thread.currentThread();
        WeakHashMap weakHashMap2 = hs3.a;
        synchronized (weakHashMap2) {
        }
        return gs3Var;
    }
}
