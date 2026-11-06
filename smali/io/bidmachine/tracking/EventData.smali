###### Class io.bidmachine.tracking.EventData (io.bidmachine.tracking.EventData)
.class public final Lio/bidmachine/tracking/EventData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public customParamsBuilder:Lcom/explorestack/protobuf/Struct$Builder;

.field public isBillable:Z

.field public networkName:Ljava/lang/String;

.field public price:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCustomParam(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/EventData;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/tracking/EventData;->obtainCustomParamsBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toValueOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    :cond_12
    return-object p0
.end method

.method public final addCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/tracking/EventData;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/tracking/EventData;->obtainCustomParamsBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    if-eqz p1, :cond_2e

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/utils/ProtoUtilsKt;->toValueOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    goto :goto_e

    :cond_2e
    return-object p0
.end method

.method public final getCustomParams()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/EventData;->customParamsBuilder:Lcom/explorestack/protobuf/Struct$Builder;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/EventData;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/EventData;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public final isBillable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/tracking/EventData;->isBillable:Z

    return v0
.end method

.method public final obtainCustomParamsBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/EventData;->customParamsBuilder:Lcom/explorestack/protobuf/Struct$Builder;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lio/bidmachine/tracking/EventData;->customParamsBuilder:Lcom/explorestack/protobuf/Struct$Builder;

    .line 3
    const-string v1, "newBuilder().also {\n    \u2026amsBuilder = it\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    return-object v0
.end method

.method public final setCustomParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/tracking/EventData;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/tracking/EventData;->obtainCustomParamsBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public final setCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/tracking/EventData;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toStructBuilderOrNull(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/tracking/EventData;->customParamsBuilder:Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public final setIsBillable(Z)Lio/bidmachine/tracking/EventData;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/tracking/EventData;->isBillable:Z

    return-object p0
.end method

.method public final setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/tracking/EventData;->networkName:Ljava/lang/String;

    return-object p0
.end method

.method public final setPrice(Ljava/lang/Double;)Lio/bidmachine/tracking/EventData;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/tracking/EventData;->price:Ljava/lang/Double;

    return-object p0
.end method
