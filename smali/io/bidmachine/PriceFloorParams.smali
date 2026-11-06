###### Class io.bidmachine.PriceFloorParams (io.bidmachine.PriceFloorParams)
.class public final Lio/bidmachine/PriceFloorParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final priceFloorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addPriceFloor(D)Lio/bidmachine/PriceFloorParams;
    .registers 4

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    return-object p0
.end method

.method public addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;
    .registers 5

    .line 4
    iget-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic addPriceFloor(D)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(D)Lio/bidmachine/PriceFloorParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPriceFloor(Ljava/lang/String;D)Ljava/lang/Object;
    .registers 4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    move-result-object p1

    return-object p1
.end method

.method public getPriceFloors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    return-object v0
.end method
