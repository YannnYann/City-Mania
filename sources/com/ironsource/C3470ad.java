package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ad, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3470ad {
    private final E0 a;

    public C3470ad(E0 eventsWrapper) {
        Intrinsics.checkNotNullParameter(eventsWrapper, "eventsWrapper");
        this.a = eventsWrapper;
    }

    public final void a() {
        this.a.a(B0.OPERATIONAL_LOAD_AD, new HashMap());
    }

    public final void b() {
        this.a.a(B0.PAUSE_AD, null);
    }

    public final void c() {
        this.a.a(B0.RESUME_AD, null);
    }

    public final void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.OPERATIONAL_LOAD_SUCCESS, map);
    }

    public final void a(long j, int i, String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", reason);
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.OPERATIONAL_LOAD_FAILED, map);
    }

    public final void a(double d) {
        this.a.a(B0.OPERATIONAL_SET_CONFIGURATIONS, MapsKt__MapsJVMKt.mapOf(TuplesKt.to(IronSourceConstants.EVENTS_EXT1, "flooring=" + d)));
    }

    public static /* synthetic */ void a(C3470ad c3470ad, LevelPlayReward levelPlayReward, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        c3470ad.a(levelPlayReward, str, str2);
    }

    public final void a(LevelPlayReward reward, String str, String str2) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_REWARD_NAME, reward.getName());
        map.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(reward.getAmount()));
        if (str != null) {
            map.put("placement", str);
        }
        if (str2 != null) {
            map.put("reason", str2);
        }
        this.a.a(B0.OPERATIONAL_GET_REWARD, map);
    }
}
