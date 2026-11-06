package gatewayprotocol.v1;

import gatewayprotocol.v1.AdViewerResponseKt;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdViewerResponseKtKt {
    /* JADX INFO: renamed from: -initializeadViewerResponse, reason: not valid java name */
    public static final AdViewerResponseOuterClass.AdViewerResponse m2036initializeadViewerResponse(Function1<? super AdViewerResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerResponseKt.Dsl.Companion companion = AdViewerResponseKt.Dsl.Companion;
        AdViewerResponseOuterClass.AdViewerResponse.Builder builderNewBuilder = AdViewerResponseOuterClass.AdViewerResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdViewerResponseKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final AdViewerResponseOuterClass.AdViewerResponse copy(AdViewerResponseOuterClass.AdViewerResponse adViewerResponse, Function1<? super AdViewerResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adViewerResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdViewerResponseKt.Dsl.Companion companion = AdViewerResponseKt.Dsl.Companion;
        AdViewerResponseOuterClass.AdViewerResponse.Builder builder = adViewerResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AdViewerResponseKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final ErrorOuterClass.Error getErrorOrNull(AdViewerResponseOuterClass.AdViewerResponseOrBuilder adViewerResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adViewerResponseOrBuilder, "<this>");
        if (adViewerResponseOrBuilder.hasError()) {
            return adViewerResponseOrBuilder.getError();
        }
        return null;
    }
}
