package gatewayprotocol.v1;

import gatewayprotocol.v1.RewardedOffersRequestKt;
import gatewayprotocol.v1.RewardedOffersRequestOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RewardedOffersRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RewardedOffersRequestKtKt {
    /* JADX INFO: renamed from: -initializerewardedOffersRequest, reason: not valid java name */
    public static final RewardedOffersRequestOuterClass.RewardedOffersRequest m2089initializerewardedOffersRequest(Function1<? super RewardedOffersRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersRequestKt.Dsl.Companion companion = RewardedOffersRequestKt.Dsl.Companion;
        RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builderNewBuilder = RewardedOffersRequestOuterClass.RewardedOffersRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RewardedOffersRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final RewardedOffersRequestOuterClass.RewardedOffersRequest copy(RewardedOffersRequestOuterClass.RewardedOffersRequest rewardedOffersRequest, Function1<? super RewardedOffersRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(rewardedOffersRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersRequestKt.Dsl.Companion companion = RewardedOffersRequestKt.Dsl.Companion;
        RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builder = rewardedOffersRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RewardedOffersRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
