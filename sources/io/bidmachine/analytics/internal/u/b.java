package io.bidmachine.analytics.internal.u;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.analytics.internal.u.d;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static final i l = new i(null);
    private static final Lazy m = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy n = LazyKt__LazyJVMKt.lazy(e.a);
    private static final Lazy o = LazyKt__LazyJVMKt.lazy(f.a);
    private static final Lazy p = LazyKt__LazyJVMKt.lazy(C1150b.a);
    private static final Lazy q = LazyKt__LazyJVMKt.lazy(h.a);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(c.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(g.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(a.a);
    private final Context a;
    private volatile io.bidmachine.analytics.internal.u.c b;
    private volatile boolean c;
    private volatile boolean d;
    private final Lazy e = LazyKt__LazyJVMKt.lazy(o.a);
    private final Lazy f = LazyKt__LazyJVMKt.lazy(new l());
    private final Lazy g = LazyKt__LazyJVMKt.lazy(new m());
    private final Lazy h = LazyKt__LazyJVMKt.lazy(new n());
    private final Lazy i = LazyKt__LazyJVMKt.lazy(new p());
    private final Lazy j = LazyKt__LazyJVMKt.lazy(new j());
    private final ServiceConnection k = new q();

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("cGxheUJpbGxpbmdMaWJyYXJ5VmVyc2lvbg==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.u.b$b, reason: collision with other inner class name */
    public static final class C1150b extends Lambda implements Function0 {
        public static final C1150b a = new C1150b();

        public C1150b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("VkVSU0lPTl9OQU1F");
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQudmVuZGluZy5iaWxsaW5nLkluQXBwQmlsbGluZ1NlcnZpY2UuQklORA==");
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5CdWlsZENvbmZpZw==");
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5rdHguQnVpbGRDb25maWc=");
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmdvb2dsZS5hbmRyb2lkLnBsYXkuYmlsbGluZ2NsaWVudC52ZXJzaW9u");
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQudmVuZGluZw==");
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmFuZHJvaWQudmVuZGluZy5CSUxMSU5H");
        }
    }

    public static final class i {
        public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) b.t.getValue();
        }

        public final String b() {
            return (String) b.p.getValue();
        }

        public final String c() {
            return (String) b.r.getValue();
        }

        public final String d() {
            return (String) b.m.getValue();
        }

        public final String e() {
            return (String) b.n.getValue();
        }

        public final String f() {
            return (String) b.o.getValue();
        }

        public final String g() {
            return (String) b.s.getValue();
        }

        public final String h() {
            return (String) b.q.getValue();
        }

        private i() {
        }
    }

    public static final class j extends Lambda implements Function0 {
        public j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.a.f invoke() {
            io.bidmachine.analytics.internal.a.f fVarA;
            b bVar = b.this;
            try {
                String strP = bVar.p();
                if (strP != null && (fVarA = io.bidmachine.analytics.internal.a.f.d.a(strP)) != null) {
                    return fVarA;
                }
                String strN = bVar.n();
                if (strN != null) {
                    return io.bidmachine.analytics.internal.a.f.d.a(strN);
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static final class k extends SuspendLambda implements Function2 {
        int a;

        public k(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new k(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            while (b.this.b == null) {
                this.a = 1;
                if (DelayKt.delay(100L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            io.bidmachine.analytics.internal.u.c cVar = b.this.b;
            if (cVar != null) {
                return cVar.M();
            }
            return null;
        }
    }

    public static final class l extends Lambda implements Function0 {
        public l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return b.this.a(b.l.d());
        }
    }

    public static final class m extends Lambda implements Function0 {
        public m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return b.this.a(b.l.e());
        }
    }

    public static final class n extends Lambda implements Function0 {
        public n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return b.this.m();
        }
    }

    public static final class o extends Lambda implements Function0 {
        public static final o a = new o();

        public o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Random invoke() {
            return RandomKt.Random(System.nanoTime());
        }
    }

    public static final class p extends Lambda implements Function0 {
        public p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            String strO = b.this.o();
            if (strO != null) {
                return strO;
            }
            String strN = b.this.n();
            return strN == null ? b.this.p() : strN;
        }
    }

    public static final class q implements ServiceConnection {
        public q() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            io.bidmachine.analytics.internal.a.f fVarL = b.this.l();
            if (fVarL == null) {
                return;
            }
            b bVar = b.this;
            String strR = bVar.r();
            io.bidmachine.analytics.internal.u.c cVar = null;
            if (strR != null) {
                b bVar2 = b.this;
                cVar = new io.bidmachine.analytics.internal.u.c(new d.a(iBinder, null, 2, null), bVar2.a.getPackageName(), fVarL, strR, bVar2.q().nextLong());
            }
            bVar.b = cVar;
            b bVar3 = b.this;
            bVar3.c = bVar3.b != null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.c = false;
            b.this.b = null;
        }
    }

    public b(Context context) {
        this.a = context;
    }

    private final Intent k() {
        i iVar = l;
        Intent intent = new Intent(iVar.c());
        intent.setPackage(iVar.g());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String m() {
        try {
            Bundle bundle = this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE).metaData;
            if (bundle != null) {
                return bundle.getString(l.f());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String n() {
        return (String) this.f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o() {
        return (String) this.g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String p() {
        return (String) this.h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Random q() {
        return (Random) this.e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String r() {
        return (String) this.i.getValue();
    }

    private final ComponentName s() {
        ServiceInfo serviceInfo;
        List<ResolveInfo> listQueryIntentServices = this.a.getPackageManager().queryIntentServices(k(), 0);
        if (!listQueryIntentServices.isEmpty() && (serviceInfo = listQueryIntentServices.get(0).serviceInfo) != null) {
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (Intrinsics.areEqual(l.g(), str) && str2 != null) {
                return new ComponentName(str, str2);
            }
        }
        return null;
    }

    public final void i() {
        ComponentName componentNameS = s();
        if (componentNameS == null) {
            throw new IllegalArgumentException("Component name not found");
        }
        String strR = r();
        if (strR == null) {
            throw new IllegalArgumentException("Library version not found");
        }
        Context context = this.a;
        Intent intentK = k();
        intentK.setComponent(componentNameS);
        intentK.putExtra(l.a(), strR);
        if (!context.bindService(intentK, this.k, 1)) {
            throw new IllegalStateException("Can't connect");
        }
        this.d = true;
    }

    public final void j() {
        if (this.d) {
            this.a.unbindService(this.k);
        }
        this.d = false;
    }

    public final io.bidmachine.analytics.internal.a.f l() {
        return (io.bidmachine.analytics.internal.a.f) this.j.getValue();
    }

    public final boolean t() {
        return this.a.getPackageManager().checkPermission(l.h(), this.a.getPackageName()) == 0;
    }

    public final boolean u() {
        return s() != null;
    }

    public final Object a(long j2, Continuation continuation) {
        return TimeoutKt.withTimeoutOrNull(j2, new k(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a(String str) {
        try {
            Object obj = Class.forName(str).getField(l.b()).get(null);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            return (String) obj;
        } catch (Throwable unused) {
            return null;
        }
    }
}
