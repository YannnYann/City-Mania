package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.pb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3781pb {
    public static final a d = new a(null);
    private static C3781pb e;
    private final C3948yb a;
    private final com.ironsource.mediationsdk.c b;
    private final Tb c;

    /* JADX INFO: renamed from: com.ironsource.pb$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3781pb a() {
            return C3781pb.e;
        }

        private a() {
        }

        public final void a(C3781pb testInstance) {
            Intrinsics.checkNotNullParameter(testInstance, "testInstance");
            C3781pb.e = testInstance;
        }
    }

    static {
        C3948yb c3948yb = new C3948yb();
        com.ironsource.mediationsdk.c cVarC = com.ironsource.mediationsdk.c.c();
        Intrinsics.checkNotNullExpressionValue(cVarC, "getInstance(...)");
        e = new C3781pb(c3948yb, cVarC, new Tb(null, null, null, null, null, 31, null));
    }

    public C3781pb(C3948yb tools, com.ironsource.mediationsdk.c adapterRepository, Tb metaDataManager) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adapterRepository, "adapterRepository");
        Intrinsics.checkNotNullParameter(metaDataManager, "metaDataManager");
        this.a = tools;
        this.b = adapterRepository;
        this.c = metaDataManager;
    }

    public final void b(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3781pb.b(this.f$0, z);
            }
        });
    }

    public final void c(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3781pb.c(this.f$0, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3781pb c3781pb, boolean z) throws JSONException {
        c3781pb.a.b(z);
        if (!c3781pb.a.a()) {
            c3781pb.c.b(z);
        } else {
            c3781pb.a.b();
            IronLog.API.error("LevelPlayPrivacySettings.setCOPPA() must be called before LevelPlay.init()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3781pb c3781pb, boolean z) throws JSONException {
        c3781pb.a.c(z);
        c3781pb.b.c(z);
    }

    public final void a(final Map<String, Boolean> networkConsents) {
        Intrinsics.checkNotNullParameter(networkConsents, "networkConsents");
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3781pb.a(this.f$0, networkConsents);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3781pb c3781pb, Map map) throws JSONException {
        c3781pb.a.a((Map<String, Boolean>) map);
        c3781pb.b.a((Map<String, Boolean>) map);
    }

    public final void a(final boolean z) {
        this.a.a(new Runnable() { // from class: com.ironsource.pb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3781pb.a(this.f$0, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3781pb c3781pb, boolean z) throws JSONException {
        c3781pb.a.a(z);
        c3781pb.c.a(z);
    }
}
