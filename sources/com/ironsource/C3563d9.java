package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3563d9 {
    private static final a c = new a(null);

    @Deprecated
    public static final String d = "pub";

    @Deprecated
    public static final String e = "sdk";
    private final C3770p0 a;
    private LevelPlayImpressionDataListener b;

    /* JADX INFO: renamed from: com.ironsource.d9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C3563d9(C3770p0 adTools) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        this.a = adTools;
    }

    public final LevelPlayImpressionDataListener a() {
        return this.b;
    }

    @InterfaceC3930xb
    public final void b() {
        a((LevelPlayImpressionDataListener) null, "sdk");
    }

    @InterfaceC3930xb
    public final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        a(levelPlayImpressionDataListener, d);
    }

    @InterfaceC3930xb
    private final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener, String str) {
        boolean z = this.b != null;
        this.b = levelPlayImpressionDataListener;
        C3790pg c3790pgH = this.a.f().h();
        if (levelPlayImpressionDataListener == null) {
            c3790pgH.a(str, z);
        } else {
            c3790pgH.a(z);
        }
    }

    @InterfaceC3930xb
    public final void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (this.b == null || adInfo.getAuctionId().length() == 0) {
            return;
        }
        final LevelPlayImpressionData levelPlayImpressionData = new LevelPlayImpressionData(adInfo.impressionData$mediationsdk_release());
        IronLog ironLog = IronLog.CALLBACK;
        C3770p0 c3770p0 = this.a;
        LevelPlayImpressionDataListener levelPlayImpressionDataListener = this.b;
        ironLog.verbose(C3770p0.a(c3770p0, "onImpressionSuccess " + (levelPlayImpressionDataListener != null ? levelPlayImpressionDataListener.getClass().getSimpleName() : null), (String) null, 2, (Object) null));
        this.a.b(new Runnable() { // from class: com.ironsource.d9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3563d9.a(this.f$0, levelPlayImpressionData);
            }
        });
        this.a.f().h().a(levelPlayImpressionData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3563d9 c3563d9, LevelPlayImpressionData levelPlayImpressionData) {
        LevelPlayImpressionDataListener levelPlayImpressionDataListener = c3563d9.b;
        if (levelPlayImpressionDataListener != null) {
            levelPlayImpressionDataListener.onImpressionSuccess(levelPlayImpressionData);
        }
    }
}
