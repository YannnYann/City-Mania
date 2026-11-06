package ads_mobile_sdk;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class st1 implements qt1, pc1, rj3 {
    public static final ra u = (ra) ra.v().h().b();
    public final Context a;
    public final ja3 b;
    public final ExecutorService c;
    public final n71 d;
    public final boolean e;
    public final String f;
    public final long g;
    public final long h;
    public final double i;
    public final String j;
    public final ma k;
    public final long l;
    public final AtomicBoolean m = new AtomicBoolean(false);
    public final Object n = new Object();
    public final Object o = new Object();
    public final Object p = new Object();
    public final wa q = xa.v();
    public final ArrayList r = new ArrayList();
    public boolean s = false;
    public final HashMap t = new HashMap();

    public st1(Context context, ja3 ja3Var, ExecutorService executorService, n71 n71Var, Random random, String str, long j, long j2, double d, String str2, ma maVar, long j3) {
        this.a = context;
        this.b = ja3Var;
        this.c = executorService;
        this.d = n71Var;
        this.f = str;
        this.g = j;
        this.h = j2;
        this.i = d;
        this.j = str2;
        this.k = maVar;
        this.l = j3;
        this.e = random.nextDouble() < d;
    }

    public final void b() {
        in0 in0Var;
        if (!this.e || this.m.getAndSet(true)) {
            return;
        }
        Context context = this.a;
        String str = this.j;
        ma maVar = this.k;
        double d = this.i;
        long j = this.l;
        Locale locale = Locale.getDefault();
        j61 j61VarA = j61.a(maVar.getNumber());
        if (j61VarA == null) {
            j61VarA = j61.UNKNOWN_HOST_TYPE;
        }
        wa waVarC = xa.v().a(Build.VERSION.SDK_INT).f(Build.MODEL).e(locale.getLanguage()).c(locale.getCountry()).d(str).a(j61VarA).i().b(context.getPackageName()).c(j);
        if (d > 0.0d) {
            waVarC.d(Math.round(1.0d / d));
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            waVarC.b(packageManager.getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception unused) {
        }
        try {
            if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                in0Var = in0.DEVICE_TYPE_AUTO;
            } else if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                in0Var = in0.DEVICE_TYPE_WATCH;
            } else if (packageManager.hasSystemFeature("android.hardware.type.pc")) {
                in0Var = in0.DEVICE_TYPE_PC;
            } else {
                UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
                if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
                    in0Var = in0.DEVICE_TYPE_TV;
                } else {
                    in0Var = in0.DEVICE_TYPE_PHONE;
                }
            }
            waVarC.a(in0Var);
        } catch (RuntimeException unused2) {
        }
        xa xaVar = (xa) waVarC.b();
        synchronized (this.n) {
            this.q.a(xaVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        wa waVar;
        ImmutableList immutableListCopyOf;
        String string;
        StringWriter stringWriter;
        PrintWriter printWriter;
        synchronized (this.n) {
            waVar = (wa) this.q.m588clone();
        }
        synchronized (this.o) {
            immutableListCopyOf = ImmutableList.copyOf((Collection) this.r);
            this.r.clear();
            this.s = false;
        }
        UnmodifiableIterator it = immutableListCopyOf.iterator();
        int i = 0;
        while (it.hasNext()) {
            rt1 rt1Var = (rt1) it.next();
            if (i >= this.g) {
                a((xa) waVar.b());
                waVar.h();
                i = 0;
            }
            ft1 ft1VarA = gt1.v().b(rt1Var.a).c(rt1Var.b).a(rt1Var.e);
            String str = rt1Var.d;
            if (str != null) {
                ft1VarA.a(str);
            }
            Throwable th = rt1Var.c;
            ft1VarA.a(th == null ? vl3.STATUS_SUCCESS : vl3.STATUS_FAIL);
            if (th != null) {
                ft1 ft1VarB = ft1VarA.b(th.getClass().getName());
                try {
                    stringWriter = new StringWriter();
                    try {
                        printWriter = new PrintWriter(stringWriter);
                    } catch (Throwable th2) {
                        try {
                            stringWriter.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (IOException unused) {
                    string = "";
                }
                try {
                    th.printStackTrace(printWriter);
                    string = stringWriter.toString();
                    printWriter.close();
                    stringWriter.close();
                    ft1VarB.c(string);
                } catch (Throwable th4) {
                    try {
                        printWriter.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
            }
            waVar.a((gt1) ft1VarA.b());
            i++;
        }
        if (i > 0) {
            a((xa) waVar.b());
            waVar.h();
        }
    }

    public final long a(int i) {
        long jLongValue;
        synchronized (this.p) {
            try {
                Long l = (Long) this.t.get(Integer.valueOf(i));
                if (l == null) {
                    l = 0L;
                }
                jLongValue = l.longValue() + 1;
                this.t.put(Integer.valueOf(i), Long.valueOf(jLongValue));
            } catch (Throwable th) {
                throw th;
            }
        }
        return jLongValue;
    }

    @Override // ads_mobile_sdk.pc1
    public final ListenableFuture a() {
        return Futures.submit(new Runnable() { // from class: ads_mobile_sdk.st1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b();
            }
        }, this.c);
    }

    public final void a(int i, long j, Throwable th, String str) {
        if (this.e) {
            synchronized (this.o) {
                try {
                    this.r.add(new rt1(i, j, th, str, a(i)));
                    if (!this.s) {
                        this.s = true;
                        this.b.a(new Runnable() { // from class: ads_mobile_sdk.st1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.c();
                            }
                        }, this.h);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(xa xaVar) {
        try {
            ib ibVar = (ib) ib.v().a(u).a((gb) gb.v().a(xaVar).b()).b();
            ((q71) this.d).a(this.f, true, ibVar.c(), CommonGatewayClient.HEADER_PROTOBUF);
        } catch (RuntimeException unused) {
        }
    }
}
