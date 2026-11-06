package com.unity3d.ads.core.domain.privacy;

import com.ironsource.C3522b4;
import com.unity3d.services.core.misc.JsonFlattenerRules;
import io.bidmachine.Framework;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: LegacyUserConsentFlattenerRulesUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LegacyUserConsentFlattenerRulesUseCase implements FlattenerRulesUseCase {
    @Override // com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase
    public JsonFlattenerRules invoke() {
        return new JsonFlattenerRules(CollectionsKt__CollectionsKt.mutableListOf("privacy", Framework.UNITY, "pipl"), CollectionsKt__CollectionsJVMKt.listOf(C3522b4.i.X), CollectionsKt__CollectionsKt.mutableListOf("ts", "exclude", "pii", "nonBehavioral", "nonbehavioral"));
    }
}
