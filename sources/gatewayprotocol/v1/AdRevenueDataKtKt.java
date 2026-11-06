package gatewayprotocol.v1;

import gatewayprotocol.v1.AdRevenueDataKt;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueDataKtKt {
    /* JADX INFO: renamed from: -initializeadRevenueData, reason: not valid java name */
    public static final AdRevenueEventRequestOuterClass.AdRevenueData m2033initializeadRevenueData(Function1<? super AdRevenueDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdRevenueDataKt.Dsl.Companion companion = AdRevenueDataKt.Dsl.Companion;
        AdRevenueEventRequestOuterClass.AdRevenueData.Builder builderNewBuilder = AdRevenueEventRequestOuterClass.AdRevenueData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdRevenueDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final AdRevenueEventRequestOuterClass.AdRevenueData copy(AdRevenueEventRequestOuterClass.AdRevenueData adRevenueData, Function1<? super AdRevenueDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adRevenueData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdRevenueDataKt.Dsl.Companion companion = AdRevenueDataKt.Dsl.Companion;
        AdRevenueEventRequestOuterClass.AdRevenueData.Builder builder = adRevenueData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AdRevenueDataKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
