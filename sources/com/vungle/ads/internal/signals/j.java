package com.vungle.ads.internal.signals;

import android.content.Context;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.s3;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class j {
    public final Context a;
    public final Json b;
    public long c;
    public long d;
    public long e;
    public int f;
    public long g;
    public c h;
    public ConcurrentHashMap i;
    public final Lazy j;
    public com.vungle.ads.internal.session.b k;

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public j(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = JsonKt.Json$default(null, e.a, 1, null);
        this.d = System.currentTimeMillis();
        this.f = -1;
        this.i = new ConcurrentHashMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.j = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new g(context));
        e();
        this.g = c().a("vungle_signal_session_creation_time", -1L);
        f();
        this.h = new c(this.f);
        com.vungle.ads.internal.session.b bVar = new com.vungle.ads.internal.session.b(context, this.h.a(), a(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new h(context))), b(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new i(context))));
        this.k = bVar;
        this.h.a(bVar.b());
        boolean z = v.a;
        u.a("SignalManager", new d(this));
        try {
            this.h.a(1 ^ (com.vungle.ads.internal.platform.e.a() ? 1 : 0));
            this.h.e(com.vungle.ads.internal.platform.e.f(context) ? 1 : 0);
            this.h.c(com.vungle.ads.internal.platform.e.d(context) ? 1 : 0);
            this.h.d(com.vungle.ads.internal.platform.e.c(context));
            this.h.b(com.vungle.ads.internal.platform.e.e(context) ? 1 : 0);
        } catch (Exception e) {
            boolean z2 = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to collect device signals: ");
            sbA.append(e.getLocalizedMessage());
            u.b("SignalManager", sbA.toString());
        }
    }

    public final c b() {
        return this.h;
    }

    public final FilePreferences c() {
        return (FilePreferences) this.j.getValue();
    }

    public final String d() {
        return this.h.b;
    }

    public final void e() {
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        com.vungle.ads.internal.util.a.a(new f(this));
    }

    public final void f() {
        if (this.f == -1) {
            this.f = c().a("vungle_signal_session_count", 0);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.g;
        long j2 = jCurrentTimeMillis - j;
        if (j < 0 || j2 >= 86400000) {
            this.f = 1;
            c().b("vungle_signal_session_creation_time", jCurrentTimeMillis);
            this.g = jCurrentTimeMillis;
        } else {
            this.f++;
        }
        c().b("vungle_signal_session_count", this.f);
        c().b();
    }

    public static final com.vungle.ads.internal.executor.a a(Lazy lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    public static final PathProvider b(Lazy lazy) {
        return (PathProvider) lazy.getValue();
    }

    public final synchronized m a(String placementId) {
        long jCurrentTimeMillis;
        Long l;
        try {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            jCurrentTimeMillis = System.currentTimeMillis();
            l = this.i.containsKey(placementId) ? (Long) this.i.get(placementId) : null;
            this.i.put(placementId, Long.valueOf(jCurrentTimeMillis));
        } catch (Throwable th) {
            throw th;
        }
        return new m(l, jCurrentTimeMillis);
    }

    public final void b(s3 unclosedAd) {
        Intrinsics.checkNotNullParameter(unclosedAd, "unclosedAd");
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.t()) {
            return;
        }
        this.k.b(unclosedAd);
    }

    public final void b(String str) {
        if (str == null || str.length() == 0 || this.h.d.isEmpty()) {
            return;
        }
        ((m) this.h.d.get(0)).c = str;
    }

    public final void a(s3 unclosedAd) {
        Intrinsics.checkNotNullParameter(unclosedAd, "unclosedAd");
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.t()) {
            return;
        }
        this.k.a(unclosedAd);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046 A[PHI: r2
      0x0046: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:19:0x0050, B:14:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(android.content.Context r4, com.vungle.ads.internal.signals.m r5) {
        /*
            r3 = this;
            java.lang.String r0 = "signaledAd"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            com.vungle.ads.internal.signals.c r0 = r3.h
            java.util.List r0 = r0.b()
            r0.clear()
            com.vungle.ads.internal.signals.c r0 = r3.h
            java.util.List r0 = r0.b()
            r0.add(r5)
            com.vungle.ads.internal.signals.c r5 = r3.h
            java.util.List r5 = r5.b()
            r0 = 0
            java.lang.Object r5 = r5.get(r0)
            com.vungle.ads.internal.signals.m r5 = (com.vungle.ads.internal.signals.m) r5
            if (r4 != 0) goto L28
            android.content.Context r4 = r3.a
        L28:
            android.content.res.Resources r4 = r4.getResources()
            if (r4 == 0) goto L3b
            android.content.res.Configuration r4 = r4.getConfiguration()
            if (r4 == 0) goto L3b
            int r4 = r4.orientation
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            goto L3c
        L3b:
            r4 = 0
        L3c:
            if (r4 != 0) goto L3f
            goto L48
        L3f:
            int r1 = r4.intValue()
            r2 = 2
            if (r1 != r2) goto L48
        L46:
            r0 = r2
            goto L5e
        L48:
            if (r4 != 0) goto L4b
            goto L53
        L4b:
            int r1 = r4.intValue()
            r2 = 1
            if (r1 != r2) goto L53
            goto L46
        L53:
            if (r4 != 0) goto L56
            goto L5d
        L56:
            int r4 = r4.intValue()
            if (r4 != 0) goto L5d
            goto L5e
        L5d:
            r0 = -1
        L5e:
            r5.a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.signals.j.a(android.content.Context, com.vungle.ads.internal.signals.m):void");
    }

    public final String a() {
        this.h.e = (System.currentTimeMillis() + this.e) - this.d;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("2:");
            Json json = this.b;
            c cVar = this.h;
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(c.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            sb.append(json.encodeToString(kSerializerSerializer, cVar));
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
