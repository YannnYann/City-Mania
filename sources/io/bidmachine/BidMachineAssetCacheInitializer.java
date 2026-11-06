package io.bidmachine;

import android.content.Context;
import io.bidmachine.internal.C4223g;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.sdk.AssetCache;
import io.bidmachine.util.cache.MediaFileCacheManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineAssetCacheInitializer {
    private final MediaFileCacheManager.Configuration getMediaFileCacheManagerConfiguration(InitResponse initResponse) {
        MediaFileCacheManager.Configuration configuration;
        MediaFileCacheManager.Configuration configuration2 = null;
        try {
            if (!initResponse.hasAssetCacheConfiguration()) {
                return null;
            }
            AssetCache.Configuration assetCacheConfiguration = initResponse.getAssetCacheConfiguration();
            AssetCache.CleanConfiguration cleanConfiguration = assetCacheConfiguration.getCleanConfiguration();
            MediaFileCacheManager.CleanConfiguration cleanConfiguration2 = new MediaFileCacheManager.CleanConfiguration(cleanConfiguration.getTriggerOnStartup(), cleanConfiguration.getTriggerOnCaching(), cleanConfiguration.getTriggerOnDiskIssue());
            AssetCache.ConnectionConfiguration connectionConfiguration = assetCacheConfiguration.getConnectionConfiguration();
            Duration.Companion companion = Duration.Companion;
            long headRequestTimeoutMs = connectionConfiguration.getHeadRequestTimeoutMs();
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            MediaFileCacheManager.ConnectionConfiguration connectionConfiguration2 = new MediaFileCacheManager.ConnectionConfiguration(DurationKt.toDuration(headRequestTimeoutMs, durationUnit), DurationKt.toDuration(connectionConfiguration.getDownloadRequestTimeoutMs(), durationUnit), null);
            AssetCache.PolicyConfiguration policyConfiguration = assetCacheConfiguration.getPolicyConfiguration();
            AssetCache.PolicyLimit maxPingTimeMs = policyConfiguration.getDownloadPolicy().getMaxPingTimeMs();
            Intrinsics.checkNotNullExpressionValue(maxPingTimeMs, "protobufPolicyConfig.downloadPolicy.maxPingTimeMs");
            MediaFileCacheManager.PolicyLimit policyLimit = toPolicyLimit(maxPingTimeMs);
            AssetCache.PolicyLimit maxFileSizeBytes = policyConfiguration.getDownloadPolicy().getMaxFileSizeBytes();
            Intrinsics.checkNotNullExpressionValue(maxFileSizeBytes, "protobufPolicyConfig.dow…adPolicy.maxFileSizeBytes");
            MediaFileCacheManager.DownloadPolicy downloadPolicy = new MediaFileCacheManager.DownloadPolicy(policyLimit, toPolicyLimit(maxFileSizeBytes));
            List<AssetCache.EvictionPolicy> evictionPoliciesList = policyConfiguration.getEvictionPoliciesList();
            Intrinsics.checkNotNullExpressionValue(evictionPoliciesList, "protobufPolicyConfig.evictionPoliciesList");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(evictionPoliciesList, 10));
            Iterator it = evictionPoliciesList.iterator();
            while (it.hasNext()) {
                AssetCache.EvictionPolicy evictionPolicy = (AssetCache.EvictionPolicy) it.next();
                double score = evictionPolicy.getScore();
                double minDiskAppliedPercent = evictionPolicy.getMinDiskAppliedPercent();
                double maxDiskAppliedPercent = evictionPolicy.getMaxDiskAppliedPercent();
                Duration.Companion companion2 = Duration.Companion;
                configuration = configuration2;
                Iterator it2 = it;
                try {
                    MediaFileCacheManager.PolicyLimit policyLimit2 = new MediaFileCacheManager.PolicyLimit(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(evictionPolicy.getMaxTtlSeconds().getThreshold(), DurationUnit.SECONDS)), evictionPolicy.getMaxTtlSeconds().getWeight());
                    AssetCache.PolicyLimit minFrequency = evictionPolicy.getMinFrequency();
                    Intrinsics.checkNotNullExpressionValue(minFrequency, "it.minFrequency");
                    MediaFileCacheManager.PolicyLimit policyLimit3 = toPolicyLimit(minFrequency);
                    AssetCache.PolicyLimit maxImageSizeBytes = evictionPolicy.getMaxImageSizeBytes();
                    Intrinsics.checkNotNullExpressionValue(maxImageSizeBytes, "it.maxImageSizeBytes");
                    MediaFileCacheManager.PolicyLimit policyLimit4 = toPolicyLimit(maxImageSizeBytes);
                    AssetCache.PolicyLimit maxVideoSizeBytes = evictionPolicy.getMaxVideoSizeBytes();
                    Intrinsics.checkNotNullExpressionValue(maxVideoSizeBytes, "it.maxVideoSizeBytes");
                    arrayList.add(new MediaFileCacheManager.EvictionPolicy(score, minDiskAppliedPercent, maxDiskAppliedPercent, policyLimit2, policyLimit3, policyLimit4, toPolicyLimit(maxVideoSizeBytes)));
                    it = it2;
                    configuration2 = configuration;
                } catch (Throwable unused) {
                    return configuration;
                }
            }
            configuration = configuration2;
            return new MediaFileCacheManager.Configuration(cleanConfiguration2, connectionConfiguration2, new MediaFileCacheManager.PolicyConfiguration(downloadPolicy, arrayList));
        } catch (Throwable unused2) {
            return configuration2;
        }
    }

    private final MediaFileCacheManager.PolicyLimit toPolicyLimit(AssetCache.PolicyLimit policyLimit) {
        return new MediaFileCacheManager.PolicyLimit(policyLimit.getThreshold(), policyLimit.getWeight());
    }

    public final void configure(Context context, InitResponse initResponse) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        C4223g c4223g = C4223g.a;
        c4223g.b(context);
        MediaFileCacheManager.Configuration mediaFileCacheManagerConfiguration = getMediaFileCacheManagerConfiguration(initResponse);
        if (mediaFileCacheManagerConfiguration != null) {
            c4223g.a(context, mediaFileCacheManagerConfiguration);
        }
        c4223g.c(context);
    }
}
