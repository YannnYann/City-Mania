package com.vungle.ads.internal;

import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public abstract class h {
    public static final e a;
    public static final d b;
    public static final g c;
    public static final f d;
    public static final c e;
    public static final b f;
    public static final a g;
    public static final /* synthetic */ h[] h;

    static {
        e eVar = new e();
        a = eVar;
        d dVar = new d();
        b = dVar;
        g gVar = new g();
        c = gVar;
        f fVar = new f();
        d = fVar;
        c cVar = new c();
        e = cVar;
        b bVar = new b();
        f = bVar;
        a aVar = new a();
        g = aVar;
        h = new h[]{eVar, dVar, gVar, fVar, cVar, bVar, aVar};
    }

    public h(String str, int i) {
    }

    public /* synthetic */ h(String str, int i, int i2) {
        this(str, i);
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) h.clone();
    }

    public final boolean a() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new h[]{f, g}).contains(this);
    }

    public abstract boolean a(h hVar);

    public final h b(h adState) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        if (this != adState && !a(adState)) {
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Cannot transition from ");
            sbA.append(name());
            sbA.append(" to ");
            sbA.append(adState.name());
            String string = sbA.toString();
            Json json = r.o;
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("AdInternal", "Illegal state transition", new IllegalStateException(string));
        }
        return adState;
    }
}
