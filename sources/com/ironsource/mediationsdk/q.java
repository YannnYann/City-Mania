package com.ironsource.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import com.ironsource.C3528ba;
import com.ironsource.C3813r4;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.He;
import com.ironsource.Ie;
import com.ironsource.InterfaceC3759o7;
import com.ironsource.Jc;
import com.ironsource.K1;
import com.ironsource.Pb;
import com.ironsource.Sc;
import com.ironsource.U1;
import com.ironsource.Ue;
import com.ironsource.Ye;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.p;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
class q implements Jc {
    private static q z;
    private Ye a;
    private NetworkStateReceiver p;
    private CountDownTimer q;
    private String t;
    private Ue u;
    private long w;
    private int b = e.f;
    private InterfaceC3759o7 c = Pb.k0().k();
    private final String d = "appKey";
    private final String e = getClass().getSimpleName();
    private boolean l = false;
    private boolean n = false;
    private List<Sc> r = new ArrayList();
    private String s = "";
    private f y = new a();
    private Handler m = IronSourceThreadManager.INSTANCE.getInitHandler();
    private int f = 1;
    private int g = 0;
    private int h = 62;
    private int i = 12;
    private int j = 5;
    private AtomicBoolean o = new AtomicBoolean(true);
    private boolean k = false;
    private boolean v = false;
    private C3528ba x = new C3528ba();

    public class a extends f {
        public a() {
            super();
        }

        /* JADX WARN: Removed duplicated region for block: B:61:0x02bc A[Catch: Exception -> 0x0020, TryCatch #0 {Exception -> 0x0020, blocks: (B:2:0x0000, B:4:0x0010, B:7:0x0023, B:9:0x002f, B:10:0x003e, B:12:0x0082, B:14:0x0095, B:16:0x00d2, B:17:0x00fb, B:19:0x012b, B:21:0x0131, B:22:0x0158, B:24:0x0183, B:26:0x018d, B:27:0x019a, B:28:0x01ae, B:30:0x01b4, B:31:0x01ce, B:33:0x01eb, B:34:0x020e, B:36:0x021c, B:38:0x0228, B:40:0x0230, B:41:0x0242, B:43:0x0248, B:44:0x0254, B:46:0x025b, B:47:0x0266, B:49:0x026c, B:50:0x0276, B:52:0x027a, B:54:0x0286, B:56:0x02a3, B:57:0x02ac, B:59:0x02b0, B:71:0x0301, B:61:0x02bc, B:63:0x02c4, B:65:0x02cf, B:66:0x02d3, B:67:0x02dd, B:69:0x02e3, B:70:0x02ef), top: B:75:0x0000 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 797
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.q.a.run():void");
        }
    }

    public class b implements Runnable {

        public class a extends CountDownTimer {
            public a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                q qVar = q.this;
                if (qVar.l) {
                    return;
                }
                qVar.l = true;
                Iterator it = qVar.r.iterator();
                while (it.hasNext()) {
                    ((Sc) it.next()).g("noInternetConnection");
                }
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (j <= 45000) {
                    q qVar = q.this;
                    qVar.v = true;
                    Iterator it = qVar.r.iterator();
                    while (it.hasNext()) {
                        ((Sc) it.next()).a();
                    }
                }
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.q = new a(60000L, 15000L).start();
        }
    }

    public static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.values().length];
            a = iArr;
            try {
                iArr[d.INIT_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.INIT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.INITIATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum d {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    public static class e {
        public static int a = 0;
        public static int b = 1;
        public static int c = 2;
        public static int d = 3;
        public static int e = 4;
        public static int f = 5;
    }

    public abstract class f implements Runnable {
        String b;
        boolean a = true;
        protected p.c c = new a();

        public class a implements p.c {
            public a() {
            }

            @Override // com.ironsource.mediationsdk.p.c
            public void a(String str) {
                f fVar = f.this;
                fVar.a = false;
                fVar.b = str;
            }
        }

        public f() {
        }
    }

    private q() {
    }

    public static synchronized q c() {
        try {
            if (z == null) {
                z = new q();
            }
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return this.k;
    }

    public void a(Context context, Ue ue) {
        this.x.i(ue.g().h());
        this.x.c(ue.g().d());
        K1 k1B = ue.c().b();
        this.x.a(k1B.a());
        this.x.d(k1B.c().b());
        this.x.b(k1B.k().b());
        this.x.a(Boolean.valueOf(IronSourceUtils.c(context)));
        U1 u1F = ue.c().b().f();
        this.x.b(u1F.b());
        Pb.b0().o().a(u1F.c());
    }

    public int b() {
        return this.b;
    }

    public synchronized boolean d() {
        return this.v;
    }

    public void e() {
        b(d.INIT_FAILED);
    }

    public synchronized void f() {
        int iA = a(a());
        this.b = iA;
        this.x.c(iA);
    }

    public synchronized void b(d dVar) {
        IronLog.INTERNAL.verbose("old status: " + a() + ", new status: " + dVar + ")");
        Ie.a.a(He.values()[dVar.ordinal()]);
    }

    private static int a(d dVar) {
        int i = c.a[dVar.ordinal()];
        if (i == 1) {
            return e.d;
        }
        if (i == 2) {
            return e.e;
        }
        if (i != 3) {
            return e.a;
        }
        return e.b;
    }

    public synchronized void a(Context context, String str, String str2, IronSource.a... aVarArr) {
        try {
            try {
                AtomicBoolean atomicBoolean = this.o;
                if (atomicBoolean != null && atomicBoolean.compareAndSet(true, false)) {
                    b(d.INIT_IN_PROGRESS);
                    this.s = str2;
                    this.t = str;
                    if (IronSourceUtils.f(context)) {
                        this.m.post(this.y);
                    } else {
                        this.n = true;
                        if (this.p == null) {
                            this.p = new NetworkStateReceiver(context, this);
                        }
                        context.registerReceiver(this.p, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b());
                    }
                } else {
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.e + ": Multiple calls to init are not allowed", 2);
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.ironsource.Jc
    public void a(boolean z2) {
        if (this.n && z2) {
            CountDownTimer countDownTimer = this.q;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.n = false;
            this.k = true;
            Pb.k0().q().a(new C5(D5.M, IronSourceUtils.b(false)));
            this.m.post(this.y);
        }
    }

    public synchronized d a() {
        return d.values()[Ie.a.a().ordinal()];
    }
}
