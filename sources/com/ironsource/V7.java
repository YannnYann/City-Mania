package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class V7 implements InterfaceC3643hg {
    private static boolean c = false;
    public static final String d = "deviceStatus";
    public static final String e = "iabTokenAPI";
    public static final String f = "dsSharedSignalsAPI";
    public static final String g = "deleteFolder";
    public static final String h = "deleteFile";
    public static final String i = "getCachedFilesMap";
    public static final String j = "permissionsAPI";
    public static final String k = "deviceDataAPI";
    public static final String l = "adViewAPI";
    private static final Z9 o;
    private static final Z9 p;
    private static final Z9 q;
    public static final V7 a = new V7();
    private static final Handler b = new Handler(Looper.getMainLooper());
    private static final Lazy m = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.V7$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return V7.a();
        }
    });
    private static final Lazy n = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.V7$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return V7.g();
        }
    });

    public /* synthetic */ class a extends FunctionReferenceImpl implements Function0<Boolean> {
        public a(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadDeviceStatus", "shouldRunOnBackgroundThreadDeviceStatus()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).r());
        }
    }

    public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Boolean> {
        public b(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadIabToken", "shouldRunOnBackgroundThreadIabToken()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).u());
        }
    }

    public /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Boolean> {
        public c(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadSharedSignals", "shouldRunOnBackgroundThreadSharedSignals()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).t());
        }
    }

    public /* synthetic */ class d extends FunctionReferenceImpl implements Function0<Boolean> {
        public d(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadDeleteFolder", "shouldRunOnBackgroundThreadDeleteFolder()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).l());
        }
    }

    public /* synthetic */ class e extends FunctionReferenceImpl implements Function0<Boolean> {
        public e(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadDeleteFile", "shouldRunOnBackgroundThreadDeleteFile()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).s());
        }
    }

    public /* synthetic */ class f extends FunctionReferenceImpl implements Function0<Boolean> {
        public f(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadCachedFiles", "shouldRunOnBackgroundThreadCachedFiles()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).b());
        }
    }

    public /* synthetic */ class g extends FunctionReferenceImpl implements Function0<Boolean> {
        public g(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadPermissions", "shouldRunOnBackgroundThreadPermissions()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).J());
        }
    }

    public /* synthetic */ class h extends FunctionReferenceImpl implements Function0<Boolean> {
        public h(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadDeviceData", "shouldRunOnBackgroundThreadDeviceData()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).I());
        }
    }

    public /* synthetic */ class i extends FunctionReferenceImpl implements Function0<Boolean> {
        public i(Object obj) {
            super(0, obj, D7.class, "shouldRunOnBackgroundThreadAdView", "shouldRunOnBackgroundThreadAdView()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(((D7) this.receiver).L());
        }
    }

    static {
        Z9 z9 = new Z9("isadplayer-background");
        z9.start();
        z9.a();
        o = z9;
        Z9 z92 = new Z9("isadplayer-publisher-callbacks");
        z92.start();
        z92.a();
        p = z92;
        Z9 z93 = new Z9("isadplayer-release");
        z93.start();
        z93.a();
        q = z93;
    }

    private V7() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map g() {
        D7 d7H = Pb.w.d().h();
        return MapsKt__MapsKt.mapOf(TuplesKt.to(d, new a(d7H)), TuplesKt.to(e, new b(d7H)), TuplesKt.to(f, new c(d7H)), TuplesKt.to("deleteFolder", new d(d7H)), TuplesKt.to("deleteFile", new e(d7H)), TuplesKt.to(i, new f(d7H)), TuplesKt.to(j, new g(d7H)), TuplesKt.to(k, new h(d7H)), TuplesKt.to(l, new i(d7H)));
    }

    public final void a(boolean z) {
        c = z;
    }

    public final void b(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        a(this, action, 0L, 2, (Object) null);
    }

    public final void c(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        b(this, action, 0L, 2, null);
    }

    public final void d(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        c(this, action, 0L, 2, null);
    }

    public final ThreadPoolExecutor e() {
        return c();
    }

    public final boolean f() {
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final C3766oe a() {
        return new C3766oe(0, null, 3, 0 == true ? 1 : 0);
    }

    private final C3766oe c() {
        return (C3766oe) m.getValue();
    }

    private final Map<String, Function0<Boolean>> d() {
        return (Map) n.getValue();
    }

    private final boolean f(Runnable runnable) {
        return c && c().getQueue().contains(runnable);
    }

    public final void b(Runnable action, long j2) {
        Intrinsics.checkNotNullParameter(action, "action");
        o.a(action, j2);
    }

    public final void e(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (f(action)) {
            c().remove(action);
        } else {
            q.b(action);
        }
    }

    public static /* synthetic */ void b(V7 v7, Runnable runnable, long j2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        v7.c(runnable, j2);
    }

    public static /* synthetic */ void c(V7 v7, Runnable runnable, long j2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        v7.d(runnable, j2);
    }

    @Override // com.ironsource.InterfaceC3643hg
    public void a(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        c(this, action, 0L, 2, null);
    }

    public final void d(Runnable action, long j2) {
        Intrinsics.checkNotNullParameter(action, "action");
        b.postDelayed(action, j2);
    }

    public static /* synthetic */ void a(V7 v7, Runnable runnable, long j2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        v7.b(runnable, j2);
    }

    public final Looper b() {
        return o.getLooper();
    }

    public final void c(Runnable action, long j2) {
        Intrinsics.checkNotNullParameter(action, "action");
        p.a(action, j2);
    }

    @Override // com.ironsource.InterfaceC3643hg
    public void a(Runnable action, long j2) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (c) {
            c().schedule(action, j2, TimeUnit.MILLISECONDS);
        } else {
            q.a(action, j2);
        }
    }

    public final void a(Runnable action, String name) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(name, "name");
        Function0<Boolean> function0 = d().get(name);
        if (function0 != null ? function0.invoke().booleanValue() : false) {
            a(this, action, 0L, 2, (Object) null);
        } else {
            action.run();
        }
    }
}
