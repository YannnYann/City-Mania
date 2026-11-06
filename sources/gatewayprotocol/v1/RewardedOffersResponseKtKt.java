package gatewayprotocol.v1;

import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.RewardedOffersResponseKt;
import gatewayprotocol.v1.RewardedOffersResponseOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RewardedOffersResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RewardedOffersResponseKtKt {
    /* JADX INFO: renamed from: -initializerewardedOffersResponse, reason: not valid java name */
    public static final RewardedOffersResponseOuterClass.RewardedOffersResponse m2090initializerewardedOffersResponse(Function1<? super RewardedOffersResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersResponseKt.Dsl.Companion companion = RewardedOffersResponseKt.Dsl.Companion;
        RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder builderNewBuilder = RewardedOffersResponseOuterClass.RewardedOffersResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RewardedOffersResponseKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final RewardedOffersResponseOuterClass.RewardedOffersResponse copy(RewardedOffersResponseOuterClass.RewardedOffersResponse rewardedOffersResponse, Function1<? super RewardedOffersResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(rewardedOffersResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RewardedOffersResponseKt.Dsl.Companion companion = RewardedOffersResponseKt.Dsl.Companion;
        RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder builder = rewardedOffersResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RewardedOffersResponseKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final ErrorOuterClass.Error getErrorOrNull(RewardedOffersResponseOuterClass.RewardedOffersResponseOrBuilder rewardedOffersResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(rewardedOffersResponseOrBuilder, "<this>");
        if (rewardedOffersResponseOrBuilder.hasError()) {
            return rewardedOffersResponseOrBuilder.getError();
        }
        return null;
    }
}
