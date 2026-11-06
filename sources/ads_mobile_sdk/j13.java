package ads_mobile_sdk;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j13 extends jj3 {
    public final Context f;
    public final Map g;

    public j13(xf xfVar, yw1 yw1Var, Map map, Context context, ts3 ts3Var) {
        super("MK5HB0RzJr0QfmWzjZukeoRT6jTHxeECoyJyQ7EtPglrcuX6klE2FaowKKUZ16Uv", "iUEJvxPqNpsH5KEgFbTXuwnVvg/2CWGGR6SvekIk2ms=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_RECENT_FOREGROUND_TIME_SIGNALS_TASK));
        this.f = context;
        this.g = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ads_mobile_sdk.jj3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.reflect.Method r4, ads_mobile_sdk.xf r5) {
        /*
            r3 = this;
            r0 = -1
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            r2 = 30
            if (r1 < r2) goto L22
            java.lang.String r1 = ""
            android.content.Context r2 = r3.f     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Object[] r2 = new java.lang.Object[]{r2}     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Object r4 = r4.invoke(r1, r2)     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Long r4 = (java.lang.Long) r4     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Object r4 = com.google.common.base.Preconditions.checkNotNull(r4)     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Long r4 = (java.lang.Long) r4     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
        L20:
            r0 = r4
            goto L4c
        L22:
            java.util.Map r4 = r3.g     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.String r1 = "gs"
            java.lang.Object r4 = r4.get(r1)     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            com.google.common.util.concurrent.ListenableFuture r4 = (com.google.common.util.concurrent.ListenableFuture) r4     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            if (r4 == 0) goto L4c
            boolean r1 = r4.isDone()     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            if (r1 == 0) goto L4c
            java.lang.Object r4 = r4.get()     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            ads_mobile_sdk.fh r4 = (ads_mobile_sdk.fh) r4     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            if (r4 == 0) goto L4c
            long r1 = r4.z()     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            java.lang.Long r4 = java.lang.Long.valueOf(r1)     // Catch: java.lang.InterruptedException -> L45 java.util.concurrent.ExecutionException -> L4c
            goto L20
        L45:
            java.lang.Thread r4 = java.lang.Thread.currentThread()
            r4.interrupt()
        L4c:
            monitor-enter(r5)
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L56
            r5.u(r0)     // Catch: java.lang.Throwable -> L56
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L56
            return
        L56:
            r4 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L56
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j13.a(java.lang.reflect.Method, ads_mobile_sdk.xf):void");
    }
}
