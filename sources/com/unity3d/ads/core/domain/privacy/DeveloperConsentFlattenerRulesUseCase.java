package com.unity3d.ads.core.domain.privacy;

import com.ironsource.C3522b4;
import com.unity3d.services.core.misc.JsonFlattenerRules;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: DeveloperConsentFlattenerRulesUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DeveloperConsentFlattenerRulesUseCase implements FlattenerRulesUseCase {
    @Override // com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase
    public JsonFlattenerRules invoke() {
        return new JsonFlattenerRules(CollectionsKt__CollectionsKt.mutableListOf("privacy", "gdpr", "pipl", "user"), CollectionsKt__CollectionsJVMKt.listOf(C3522b4.i.X), CollectionsKt__CollectionsKt.mutableListOf("ts"));
    }
}
