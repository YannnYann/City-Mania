package com.unity3d.ads.core.domain;

import android.os.SystemClock;
import com.unity3d.ads.core.data.datasource.ForegroundDurationReader;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.services.core.properties.SdkProperties;
import gatewayprotocol.v1.TimestampsKt;
import gatewayprotocol.v1.TimestampsOuterClass;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetSharedDataTimestamps.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetSharedDataTimestamps implements GetSharedDataTimestamps {
    private final ForegroundDurationReader foregroundDurationReader;

    public AndroidGetSharedDataTimestamps(ForegroundDurationReader foregroundDurationReader) {
        Intrinsics.checkNotNullParameter(foregroundDurationReader, "foregroundDurationReader");
        this.foregroundDurationReader = foregroundDurationReader;
    }

    @Override // com.unity3d.ads.core.domain.GetSharedDataTimestamps
    public TimestampsOuterClass.Timestamps invoke() {
        TimestampsKt.Dsl.Companion companion = TimestampsKt.Dsl.Companion;
        TimestampsOuterClass.Timestamps.Builder builderNewBuilder = TimestampsOuterClass.Timestamps.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        TimestampsKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setTimestamp(TimestampExtensionsKt.fromMillis(System.currentTimeMillis()));
        dsl_create.setSessionTimestamp(SystemClock.elapsedRealtime() - SdkProperties.getInitializationTime());
        dsl_create.setSessionDurationInForeground(this.foregroundDurationReader.getSessionDurationInForegroundMs());
        return dsl_create._build();
    }
}
