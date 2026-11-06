###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toBMError(Lio/bidmachine/util/Error;)Lio/bidmachine/utils/BMError;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0}, Lio/bidmachine/util/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x6c

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static final toBMError(Lio/bidmachine/util/Error;Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseBMError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0}, Lio/bidmachine/util/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V

    return-object v0
.end method

.method public static final toEventParams(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/BrokenCreativeEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->getAlgorithmResults()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;->a:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;

    invoke-static {v0, v1}, Lio/bidmachine/utils/ProtoUtilsKt;->mapNotNullToProtoListValue(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v2, "result"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->isBroken()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 17
    const-string v2, "phase"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->getAdPhaseSequence()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 18
    const-string v2, "component"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->getAdElementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 19
    const-string v2, "duration"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->getDurationMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p0

    .line 20
    const-string v1, "algorithms"

    invoke-static {p0, v1, v0}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "adaptive_rendering_context"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_61

    return-object v0

    :catchall_61
    const/4 p0, 0x0

    return-object p0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt.a (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt$a)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toEventParams(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;->a:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)Lcom/explorestack/protobuf/Value;
    .registers 7

    const-string v0, "brokenCreativeAlgorithmResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->getAlgorithmParams()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getType()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v1, v4, v3}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getWeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "weight"

    invoke-static {v1, v4, v3}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "threshold"

    invoke-static {v1, v3, v0}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    .line 7
    const-string v1, "brokenCreativeAlgorithmR\u2026build()\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v2, "algorithm"

    invoke-static {v1, v2, v0}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->isBroken()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/core/UtilsKt;->convertToInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result"

    invoke-static {v0, v2, v1}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$a;->a(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    return-object p1
.end method
