package gatewayprotocol.v1;

import gatewayprotocol.v1.CampaignMetadataKt;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignMetadataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CampaignMetadataKtKt {
    /* JADX INFO: renamed from: -initializecampaignMetadata, reason: not valid java name */
    public static final CampaignMetadataOuterClass.CampaignMetadata m2044initializecampaignMetadata(Function1<? super CampaignMetadataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignMetadataKt.Dsl.Companion companion = CampaignMetadataKt.Dsl.Companion;
        CampaignMetadataOuterClass.CampaignMetadata.Builder builderNewBuilder = CampaignMetadataOuterClass.CampaignMetadata.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        CampaignMetadataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final CampaignMetadataOuterClass.CampaignMetadata copy(CampaignMetadataOuterClass.CampaignMetadata campaignMetadata, Function1<? super CampaignMetadataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(campaignMetadata, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignMetadataKt.Dsl.Companion companion = CampaignMetadataKt.Dsl.Companion;
        CampaignMetadataOuterClass.CampaignMetadata.Builder builder = campaignMetadata.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        CampaignMetadataKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
