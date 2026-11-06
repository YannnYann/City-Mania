package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CacheAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface CacheAssets {
    Object invoke(AdObject adObject, List<CampaignMetadataOuterClass.CampaignAsset> list, Continuation<? super CacheAssetsEvent> continuation);
}
