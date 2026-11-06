package ads_mobile_sdk;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class od2 implements ld2 {
    public final ArrayDeque b = new ArrayDeque();
    public nd2 c = null;
    public final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public final void a() {
        nd2 nd2Var = (nd2) this.b.poll();
        this.c = nd2Var;
        if (nd2Var != null) {
            nd2Var.a(this.a);
        }
    }

    public final void a(nd2 nd2Var) {
        nd2Var.a = this;
        this.b.add(nd2Var);
        if (this.c == null) {
            a();
        }
    }
}
