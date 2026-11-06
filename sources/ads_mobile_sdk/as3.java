package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: loaded from: classes.dex */
public final class as3 implements ur3 {
    public final Context a;
    public final ex0 b;
    public final tx c;
    public final ms3 d;
    public final rq0 e;
    public final ja1 f;
    public final String g;
    public final String h;
    public final ks1 i;
    public final cn0 j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public Map o;
    public boolean p;
    public int q;
    public final HashSet r;

    public as3(Context applicationContext, ex0 flags, tx clock, ms3 traceReporter, rq0 exceptionReporter, ja1 initializationConfigWrapper, String afmaVersionString, String gmaVersion, ks1 chromeVariationsProvider, cn0 deviceTierManager) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(traceReporter, "traceReporter");
        Intrinsics.checkNotNullParameter(exceptionReporter, "exceptionReporter");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(afmaVersionString, "afmaVersionString");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = applicationContext;
        this.b = flags;
        this.c = clock;
        this.d = traceReporter;
        this.e = exceptionReporter;
        this.f = initializationConfigWrapper;
        this.g = afmaVersionString;
        this.h = gmaVersion;
        this.i = chromeVariationsProvider;
        this.j = deviceTierManager;
        this.o = MapsKt__MapsKt.emptyMap();
        this.r = new HashSet();
    }

    public final void a(CoroutineScope backgroundScope) {
        String value;
        String value2;
        String value3;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.j.b();
        sr3.a = this;
        ex0 ex0Var = this.b;
        this.q = ((Number) ex0Var.a("gads:max_duplicate_crash:amount", by0.a(ex0Var, "gads:max_duplicate_crash:amount", C3522b4.i.W, 10), yr.f)).intValue();
        String value4 = this.a.getPackageName();
        PackageManager packageManager2 = this.a.getPackageManager();
        if (packageManager2 == null || (packageInfo = packageManager2.getPackageInfo(this.a.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null || (value = packageInfo.versionName) == null) {
            value = "";
        }
        try {
            packageManager = this.a.getPackageManager();
        } catch (PackageManager.NameNotFoundException unused) {
        }
        String value5 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.a.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null || (bundle = applicationInfo.metaData) == null) ? null : bundle.getString("com.google.unity.ads.UNITY_VERSION");
        p11 builder = a21.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(v11.OS_ANDROID, "value");
        builder.j();
        String value6 = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(value6, "RELEASE");
        Intrinsics.checkNotNullParameter(value6, "value");
        builder.p(value6);
        String value7 = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(value7, "MODEL");
        Intrinsics.checkNotNullParameter(value7, "value");
        builder.k(value7);
        int i = Build.VERSION.SDK_INT;
        builder.j(i);
        String value8 = this.g;
        Intrinsics.checkNotNullParameter(value8, "value");
        builder.y(value8);
        String value9 = this.h;
        Intrinsics.checkNotNullParameter(value9, "value");
        builder.g(value9);
        Intrinsics.checkNotNull(value4);
        Intrinsics.checkNotNullParameter(value4, "value");
        builder.d(value4);
        Intrinsics.checkNotNullParameter(value, "value");
        builder.e(value);
        String value10 = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(value10, "getCountry(...)");
        Intrinsics.checkNotNullParameter(value10, "value");
        builder.i(value10);
        InitializationConfig initializationConfigA = this.f.a();
        if (initializationConfigA != null && (value3 = initializationConfigA.a()) != null) {
            Intrinsics.checkNotNullParameter(value3, "value");
            builder.q(value3);
        }
        Object obj = this.j.b.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        mm0 value11 = (mm0) obj;
        Intrinsics.checkNotNullParameter(value11, "value");
        builder.a(value11);
        builder.c(this.j.d.get());
        Object obj2 = this.j.c.get();
        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
        om0 value12 = (om0) obj2;
        Intrinsics.checkNotNullParameter(value12, "value");
        builder.a(value12);
        nm0 value13 = this.j.a();
        Intrinsics.checkNotNullParameter(value13, "value");
        builder.a(value13);
        builder.c(((hr) this.b.a).r);
        builder.a(((hr) this.b.a).p);
        builder.g(((hr) this.b.a).q);
        if (value5 != null) {
            Intrinsics.checkNotNullParameter(value5, "value");
            builder.D(value5);
        }
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        a21 a21Var = (a21) vz0VarB;
        b11 builder2 = e11.w();
        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder2, "builder");
        Intrinsics.checkNotNullParameter(ot1.OS_ANDROID, "value");
        builder2.n();
        Intrinsics.checkNotNullExpressionValue(value6, "RELEASE");
        Intrinsics.checkNotNullParameter(value6, "value");
        builder2.o(value6);
        Intrinsics.checkNotNullExpressionValue(value7, "MODEL");
        Intrinsics.checkNotNullParameter(value7, "value");
        builder2.i(value7);
        builder2.e(i);
        String value14 = this.h;
        Intrinsics.checkNotNullParameter(value14, "value");
        builder2.s(value14);
        String value15 = this.g;
        Intrinsics.checkNotNullParameter(value15, "value");
        builder2.c(value15);
        Intrinsics.checkNotNullParameter(value4, "value");
        builder2.e(value4);
        Intrinsics.checkNotNullParameter(value, "value");
        builder2.f(value);
        String value16 = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(value16, "getCountry(...)");
        Intrinsics.checkNotNullParameter(value16, "value");
        builder2.h(value16);
        if (value5 != null) {
            Intrinsics.checkNotNullParameter(value5, "value");
            builder2.x(value5);
        }
        InitializationConfig initializationConfigA2 = this.f.a();
        if (initializationConfigA2 != null && (value2 = initializationConfigA2.a()) != null) {
            Intrinsics.checkNotNullParameter(value2, "value");
            builder2.p(value2);
        }
        vz0 vz0VarB2 = builder2.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        e11 baseMessage = (e11) vz0VarB2;
        Random.Default r2 = Random.Default;
        double dNextDouble = r2.nextDouble(1.0d);
        ex0 ex0Var2 = this.b;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:cui_monitoring_session_sample_rate", C3522b4.i.W);
        Double dValueOf = Double.valueOf(0.03d);
        kr krVar = yr.c;
        this.k = dNextDouble < ((Number) ex0Var2.a("gads:cui_monitoring_session_sample_rate", dValueOf, krVar)).doubleValue();
        double dNextDouble2 = r2.nextDouble(1.0d);
        ex0 ex0Var3 = this.b;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gads:trapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
        this.l = dNextDouble2 < ((Number) ex0Var3.a("gads:trapped_exception_monitoring_session_sample_rate", Double.valueOf(0.03d), krVar)).doubleValue();
        double dNextDouble3 = r2.nextDouble(1.0d);
        ex0 ex0Var4 = this.b;
        ex0Var4.getClass();
        Intrinsics.checkNotNullParameter("gads:untrapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
        this.m = dNextDouble3 < ((Number) ex0Var4.a("gads:untrapped_exception_monitoring_session_sample_rate", Double.valueOf(0.1d), krVar)).doubleValue();
        double dNextDouble4 = r2.nextDouble(1.0d);
        ex0 ex0Var5 = this.b;
        ex0Var5.getClass();
        Intrinsics.checkNotNullParameter("gads:cui_monitoring_trace_failure_stacktrace_rate", C3522b4.i.W);
        this.n = dNextDouble4 < ((Number) ex0Var5.a("gads:cui_monitoring_trace_failure_stacktrace_rate", Double.valueOf(0.01d), krVar)).doubleValue();
        Map mapN0 = this.b.n0();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(mapN0.size()));
        for (Map.Entry entry : mapN0.entrySet()) {
            linkedHashMap.put(entry.getKey(), Boolean.valueOf(Random.Default.nextDouble(1.0d) < ((Number) entry.getValue()).doubleValue()));
        }
        this.o = linkedHashMap;
        uv chromeVariationsProvider = (uv) this.i.get();
        ms3 ms3Var = this.d;
        ex0 ex0Var6 = this.b;
        ex0Var6.getClass();
        Intrinsics.checkNotNullParameter("gads:cui_monitoring_session_sample_rate", C3522b4.i.W);
        Double dValueOf2 = Double.valueOf(0.03d);
        kr krVar2 = yr.c;
        ms3Var.l = ((Number) ex0Var6.a("gads:cui_monitoring_session_sample_rate", dValueOf2, krVar2)).doubleValue();
        ms3 ms3Var2 = this.d;
        Map mapN02 = this.b.n0();
        ms3Var2.getClass();
        Intrinsics.checkNotNullParameter(mapN02, "<set-?>");
        ms3Var2.m = mapN02;
        ms3 ms3Var3 = this.d;
        Intrinsics.checkNotNull(chromeVariationsProvider);
        ms3Var3.a(backgroundScope, a21Var, chromeVariationsProvider);
        rq0 rq0Var = this.e;
        rq0Var.getClass();
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(baseMessage, "baseMessage");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        ex0 ex0Var7 = rq0Var.c;
        ex0Var7.getClass();
        Intrinsics.checkNotNullParameter("gads:trapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
        if (((Number) ex0Var7.a("gads:trapped_exception_monitoring_session_sample_rate", Double.valueOf(0.03d), krVar2)).doubleValue() > 0.0d) {
            ex0 ex0Var8 = rq0Var.c;
            ex0Var8.getClass();
            Intrinsics.checkNotNullParameter("gads:trapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
            rq0Var.l = (long) (((double) 1) / ((Number) ex0Var8.a("gads:trapped_exception_monitoring_session_sample_rate", Double.valueOf(0.03d), krVar2)).doubleValue());
        }
        ex0 ex0Var9 = rq0Var.c;
        ex0Var9.getClass();
        Intrinsics.checkNotNullParameter("gads:untrapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
        if (((Number) ex0Var9.a("gads:untrapped_exception_monitoring_session_sample_rate", Double.valueOf(0.1d), krVar2)).doubleValue() > 0.0d) {
            ex0 ex0Var10 = rq0Var.c;
            ex0Var10.getClass();
            Intrinsics.checkNotNullParameter("gads:untrapped_exception_monitoring_session_sample_rate", C3522b4.i.W);
            rq0Var.m = (long) (((double) 1) / ((Number) ex0Var10.a("gads:untrapped_exception_monitoring_session_sample_rate", Double.valueOf(0.1d), krVar2)).doubleValue());
        }
        rq0Var.a(backgroundScope, baseMessage, chromeVariationsProvider);
        InitializationConfig initializationConfigA3 = this.f.a();
        boolean sdkCrashReportingDisabled = initializationConfigA3 != null ? initializationConfigA3.getSdkCrashReportingDisabled() : false;
        ex0 ex0Var11 = this.b;
        ex0Var11.getClass();
        Intrinsics.checkNotNullParameter("gads:uncaught_exception_handler", C3522b4.i.W);
        boolean z = ((Boolean) ex0Var11.a("gads:uncaught_exception_handler", Boolean.TRUE, yr.b)).booleanValue() && !sdkCrashReportingDisabled;
        this.p = z;
        if (z) {
            a();
        }
    }

    public final void b(Throwable exception) throws InterruptedException {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Splitter splitter = f01.a;
        f01.a(new yr3(exception));
        if (this.m) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable cause = exception; cause != null; cause = cause.getCause()) {
                StackTraceElement[] stackTrace = cause.getStackTrace();
                Intrinsics.checkNotNull(stackTrace);
                for (StackTraceElement stackTraceElement : stackTrace) {
                    String className = stackTraceElement.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
                    if (StringsKt__StringsJVMKt.startsWith$default(className, AdError.GOOGLE_MOBILE_ADS_DOMAIN, false, 2, null)) {
                        z = true;
                    }
                    if (Intrinsics.areEqual(stackTraceElement.getClassName(), as3.class.getName()) || Intrinsics.areEqual(stackTraceElement.getClassName(), rq0.class.getName())) {
                        z2 = true;
                        break;
                    }
                }
            }
            if (z && !z2) {
                rq0 rq0Var = this.e;
                this.c.getClass();
                rq0Var.a(new tq0(exception, "UNTRAPPED_EXCEPTION", null, false, System.currentTimeMillis(), -1, false));
            }
        }
        BuildersKt.runBlocking(NonCancellable.INSTANCE, new zr3(this, null));
    }

    public final void a(Throwable exception) throws InterruptedException {
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (this.p) {
            Throwable thA = bs3.a(exception);
            boolean z = false;
            while (thA != null) {
                StackTraceElement[] stackTrace = thA.getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (Intrinsics.areEqual(as3.class.getName(), stackTraceElement.getClassName())) {
                        return;
                    }
                    String className = stackTraceElement.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
                    ex0 ex0Var = this.b;
                    ex0Var.getClass();
                    List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{AccountType.GOOGLE, "ads_mobile_sdk", "org.chromium", "android.webkit"});
                    Intrinsics.checkNotNullParameter("gads:uncaught_exception_handler_prefix", C3522b4.i.W);
                    Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                    List list = (List) ex0Var.a("gads:uncaught_exception_handler_prefix", defaultValue, yr.g);
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (StringsKt__StringsJVMKt.startsWith$default(className, (String) it.next(), false, 2, null)) {
                                    z = true;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                }
                Throwable cause = thA.getCause();
                thA = cause != null ? bs3.a(cause) : null;
            }
            if (z) {
                if (this.q > 0) {
                    if (this.r.size() >= this.q) {
                        return;
                    }
                    Throwable exception2 = bs3.a(exception);
                    Intrinsics.checkNotNullParameter(exception2, "exception");
                    StringWriter stringWriter = new StringWriter();
                    exception2.printStackTrace(new PrintWriter(stringWriter));
                    String string = stringWriter.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    String strA = bs3.a(string);
                    if (strA == null) {
                        strA = "";
                    }
                    if (this.r.contains(strA)) {
                        return;
                    } else {
                        this.r.add(strA);
                    }
                }
                b(exception);
            }
        }
    }

    public final void a() {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: ads_mobile_sdk.as3$$ExternalSyntheticLambda0
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                as3.a(this.f$0, defaultUncaughtExceptionHandler, thread, th);
            }
        });
        Thread thread = Looper.getMainLooper().getThread();
        Intrinsics.checkNotNullExpressionValue(thread, "getThread(...)");
        thread.setUncaughtExceptionHandler(new vr3(this, thread.getUncaughtExceptionHandler()));
    }

    public static final void a(as3 this$0, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Intrinsics.checkNotNull(th);
            this$0.a(th);
            if (uncaughtExceptionHandler == null) {
                return;
            }
        } catch (Throwable unused) {
            if (uncaughtExceptionHandler == null) {
                return;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }

    public final void a(String label, Throwable exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(label, "label");
        Splitter splitter = f01.a;
        f01.a(new wr3(label, exception));
        if (this.l) {
            rq0 rq0Var = this.e;
            rr3 rr3Var = hs3.b().a;
            ks3 ks3Var = rr3Var != null ? rr3Var.a : null;
            this.c.getClass();
            rq0Var.a(new tq0(exception, label, ks3Var, true, System.currentTimeMillis(), -1, false));
        }
    }

    public final void a(String label, Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(label, "label");
        Splitter splitter = f01.a;
        f01.a(new xr3(label, exception));
        rq0 rq0Var = this.e;
        rr3 rr3Var = hs3.b().a;
        ks3 ks3Var = rr3Var != null ? rr3Var.a : null;
        this.c.getClass();
        rq0Var.a(new tq0(exception, label, ks3Var, true, System.currentTimeMillis(), -1, true));
    }
}
