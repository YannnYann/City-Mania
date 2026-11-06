package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class Y8 implements K7 {
    private final D7 a;
    private final C3948yb b;
    private final X8 c;
    private boolean d;
    private final List<Pair<String, LevelPlayImpressionDataListener>> e;
    private Set<String> f;

    public Y8() {
        this(null, null, null, 7, null);
    }

    private final void b(String str, LevelPlayImpressionDataListener levelPlayImpressionDataListener) throws JSONException {
        if (!b(str)) {
            IronLog.INTERNAL.verbose("subscription denied for: " + levelPlayImpressionDataListener.getClass().getSimpleName());
            this.c.a(str, levelPlayImpressionDataListener.getClass(), a(str));
            return;
        }
        IronLog.INTERNAL.verbose("subscription approved for: " + levelPlayImpressionDataListener.getClass().getSimpleName());
        com.ironsource.mediationsdk.p.g().b(new C3584eb(levelPlayImpressionDataListener));
    }

    @Override // com.ironsource.K7
    public void a(final String subscriberId, final LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b.a(new Runnable() { // from class: com.ironsource.Y8$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                Y8.a(this.f$0, subscriberId, listener);
            }
        });
    }

    public Y8(D7 epService, C3948yb tools, X8 reporter) {
        Intrinsics.checkNotNullParameter(epService, "epService");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(reporter, "reporter");
        this.a = epService;
        this.b = tools;
        this.c = reporter;
        this.e = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Y8 y8, String str, LevelPlayImpressionDataListener levelPlayImpressionDataListener) throws JSONException {
        y8.c.a(str, levelPlayImpressionDataListener.getClass());
        if (y8.d) {
            y8.b(str, levelPlayImpressionDataListener);
            return;
        }
        IronLog.INTERNAL.verbose("queuing listener pre-init: " + levelPlayImpressionDataListener.getClass().getSimpleName());
        y8.e.add(TuplesKt.to(str, levelPlayImpressionDataListener));
    }

    private final boolean b(String str) {
        Set<String> set;
        if (this.a.D() && (set = this.f) != null) {
            return set.contains(str);
        }
        return true;
    }

    @Override // com.ironsource.K7
    public void a(final LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b.a(new Runnable() { // from class: com.ironsource.Y8$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                Y8.a(this.f$0, listener);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Y8(D7 d7, C3948yb c3948yb, X8 x8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Pb.w.d().h() : d7, (i & 2) != 0 ? new C3948yb() : c3948yb, (i & 4) != 0 ? new X8(null, 1, 0 == true ? 1 : 0) : x8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Y8 y8, final LevelPlayImpressionDataListener levelPlayImpressionDataListener) throws JSONException {
        y8.c.a(levelPlayImpressionDataListener.getClass());
        if (!y8.d) {
            IronLog.INTERNAL.verbose("removing listener pre-init: " + levelPlayImpressionDataListener.getClass().getSimpleName());
            CollectionsKt__MutableCollectionsKt.removeAll((List) y8.e, new Function1() { // from class: com.ironsource.Y8$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(Y8.a(levelPlayImpressionDataListener, (Pair) obj));
                }
            });
            return;
        }
        com.ironsource.mediationsdk.p.g().a(new C3584eb(levelPlayImpressionDataListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(LevelPlayImpressionDataListener levelPlayImpressionDataListener, Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.getSecond(), levelPlayImpressionDataListener);
    }

    @Override // com.ironsource.K7
    public void a(final Set<String> set) {
        this.b.a(new Runnable() { // from class: com.ironsource.Y8$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                Y8.a(this.f$0, set);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Y8 y8, Set set) throws JSONException {
        y8.f = set;
        y8.d = true;
        List<Pair> list = CollectionsKt___CollectionsKt.toList(y8.e);
        y8.e.clear();
        for (Pair pair : list) {
            y8.b((String) pair.component1(), (LevelPlayImpressionDataListener) pair.component2());
        }
    }

    private final boolean a(String str) {
        Set<String> set = this.f;
        return (set == null || set.isEmpty() || set.contains(str)) ? false : true;
    }
}
