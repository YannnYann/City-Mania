package io.bidmachine;

import io.bidmachine.core.NetworkRequest;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class z {
    public static volatile z c;
    public final Object a = new Object();
    public final Map b = new HashMap();

    public static z a() {
        z zVar;
        z zVar2 = c;
        if (zVar2 != null) {
            return zVar2;
        }
        synchronized (z.class) {
            try {
                zVar = c;
                if (zVar == null) {
                    zVar = new z();
                    c = zVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zVar;
    }

    public void a(String str, NetworkRequest networkRequest) {
        synchronized (this.a) {
            this.b.put(str, networkRequest);
        }
    }

    public NetworkRequest a(String str) {
        NetworkRequest networkRequest;
        synchronized (this.a) {
            networkRequest = (NetworkRequest) this.b.remove(str);
        }
        return networkRequest;
    }
}
