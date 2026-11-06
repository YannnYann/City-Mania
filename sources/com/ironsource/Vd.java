package com.ironsource;

import com.ironsource.S7;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Vd implements S7, S7.a {
    private final Map<String, LevelPlayReward> a = new LinkedHashMap();
    private final Map<String, LevelPlayReward> b = new LinkedHashMap();

    @Override // com.ironsource.S7.a
    public void a(String placement, String rewardName, int i) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(rewardName, "rewardName");
        this.a.put(placement, new LevelPlayReward(rewardName, i));
    }

    @Override // com.ironsource.S7.a
    public void b(String adUnitId, String rewardName, int i) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(rewardName, "rewardName");
        this.b.put(adUnitId, new LevelPlayReward(rewardName, i));
    }

    @Override // com.ironsource.S7
    public LevelPlayReward a(String str, String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        LevelPlayReward levelPlayRewardA = a(str);
        if (levelPlayRewardA != null) {
            return levelPlayRewardA;
        }
        LevelPlayReward levelPlayRewardB = b(adUnitId);
        return levelPlayRewardB == null ? a() : levelPlayRewardB;
    }

    @Override // com.ironsource.S7
    public LevelPlayReward b(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        return this.b.get(adUnitId);
    }

    @Override // com.ironsource.S7
    public LevelPlayReward a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return this.a.get(str);
    }

    private final LevelPlayReward a() {
        return new LevelPlayReward("", 0);
    }
}
