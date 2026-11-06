package com.unity3d.ads.core.domain;

import com.unity3d.services.UnityAdsConstants;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: AndroidGetSafeguardedInitializationPolicy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetSafeguardedInitializationPolicy implements GetSafeguardedInitializationPolicy {
    @Override // com.unity3d.ads.core.domain.GetSafeguardedInitializationPolicy
    public NativeConfigurationOuterClass.RequestPolicy invoke(NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
        Intrinsics.checkNotNullParameter(requestPolicy, "requestPolicy");
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestPolicy.Builder builder = requestPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RequestPolicyKt.Dsl dsl_create = companion._create(builder);
        NativeConfigurationOuterClass.RequestRetryPolicy retryPolicy = dsl_create.getRetryPolicy();
        RequestRetryPolicyKt.Dsl.Companion companion2 = RequestRetryPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder builder2 = retryPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder2, "toBuilder(...)");
        RequestRetryPolicyKt.Dsl dsl_create2 = companion2._create(builder2);
        dsl_create2.setMaxDuration(RangesKt___RangesKt.coerceAtLeast(dsl_create2.getMaxDuration(), 5000));
        dsl_create2.setRetryWaitBase(RangesKt___RangesKt.coerceAtLeast(dsl_create2.getRetryWaitBase(), 0));
        dsl_create2.setRetryMaxInterval(RangesKt___RangesKt.coerceAtLeast(dsl_create2.getRetryMaxInterval(), 0));
        dsl_create2.setRetryScalingFactor(RangesKt___RangesKt.coerceAtLeast(dsl_create2.getRetryScalingFactor(), 0.1f));
        dsl_create2.setRetryJitterPct(RangesKt___RangesKt.coerceIn(dsl_create2.getRetryJitterPct(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 100.0f));
        dsl_create.setRetryPolicy(dsl_create2._build());
        NativeConfigurationOuterClass.RequestTimeoutPolicy timeoutPolicy = dsl_create.getTimeoutPolicy();
        RequestTimeoutPolicyKt.Dsl.Companion companion3 = RequestTimeoutPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder builder3 = timeoutPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder3, "toBuilder(...)");
        RequestTimeoutPolicyKt.Dsl dsl_create3 = companion3._create(builder3);
        dsl_create3.setConnectTimeoutMs(RangesKt___RangesKt.coerceAtLeast(dsl_create3.getConnectTimeoutMs(), 1000));
        dsl_create3.setReadTimeoutMs(RangesKt___RangesKt.coerceAtLeast(dsl_create3.getReadTimeoutMs(), 1000));
        dsl_create3.setWriteTimeoutMs(RangesKt___RangesKt.coerceAtLeast(dsl_create3.getWriteTimeoutMs(), 1000));
        dsl_create3.setOverallTimeoutMs(RangesKt___RangesKt.coerceAtLeast(dsl_create3.getOverallTimeoutMs(), 1000));
        dsl_create.setTimeoutPolicy(dsl_create3._build());
        return dsl_create._build();
    }
}
