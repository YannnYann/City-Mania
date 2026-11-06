###### Class io.bidmachine.rendering.model.UrlMediaSource (io.bidmachine.rendering.model.UrlMediaSource)
.class public final Lio/bidmachine/rendering/model/UrlMediaSource;
.super Lio/bidmachine/rendering/model/MediaSource;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliveryType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/model/UrlMediaSource;-><init>(Ljava/util/List;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/rendering/model/MediaSource$DeliveryType;",
            ")V"
        }
    .end annotation

    const-string v0, "urls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliveryType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lio/bidmachine/rendering/model/MediaSource;-><init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->c:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v1, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/UrlMediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/UrlMediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object p1

    if-eq v1, p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->c:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-object v0
.end method

.method public final getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/UrlMediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrlMediaSource(urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/UrlMediaSource;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/UrlMediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
