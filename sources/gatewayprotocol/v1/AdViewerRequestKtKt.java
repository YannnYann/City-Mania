package gatewayprotocol.v1;

import gatewayprotocol.v1.AdViewerRequestKt;
import gatewayprotocol.v1.AdViewerRequestOuterClass;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdViewerRequestKtKt {
    /* JADX INFO: renamed from: -initializeadViewerRequest, reason: not valid java name */
    public static final AdViewerRequestOuterClass.AdViewerRequest m2035initializeadViewerRequest(Function1<? super AdViewerRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerRequestKt.Dsl.Companion companion = AdViewerRequestKt.Dsl.Companion;
        AdViewerRequestOuterClass.AdViewerRequest.Builder builderNewBuilder = AdViewerRequestOuterClass.AdViewerRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdViewerRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final AdViewerRequestOuterClass.AdViewerRequest copy(AdViewerRequestOuterClass.AdViewerRequest adViewerRequest, Function1<? super AdViewerRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adViewerRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerRequestKt.Dsl.Companion companion = AdViewerRequestKt.Dsl.Companion;
        AdViewerRequestOuterClass.AdViewerRequest.Builder builder = adViewerRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AdViewerRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasSessionCounters()) {
            return adViewerRequestOrBuilder.getSessionCounters();
        }
        return null;
    }

    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasStaticDeviceInfo()) {
            return adViewerRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }

    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasDynamicDeviceInfo()) {
            return adViewerRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    public static final CampaignStateOuterClass.CampaignState getCampaignStateOrNull(AdViewerRequestOuterClass.AdViewerRequestOrBuilder adViewerRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerRequestOrBuilder, "<this>");
        if (adViewerRequestOrBuilder.hasCampaignState()) {
            return adViewerRequestOrBuilder.getCampaignState();
        }
        return null;
    }
}
