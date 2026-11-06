###### Class io.bidmachine.ads.networks.gam.GAMUnitData (io.bidmachine.ads.networks.gam.GAMUnitData)
.class public Lio/bidmachine/ads/networks/gam/GAMUnitData;
.super Ljava/lang/Object;
.source "GAMUnitData.java"


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final customTargeting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final price:F

.field public final score:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "score",
            "price",
            "customTargeting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    .line 21
    iput p2, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    .line 22
    iput p3, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    .line 23
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->customTargeting:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 58
    :cond_12
    check-cast p1, Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 59
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p1, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    iget v3, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_33

    iget p1, p1, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    iget v2, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    .line 61
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_33

    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTargeting()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->customTargeting:Ljava/util/Map;

    return-object v0
.end method

.method public getPrice()F
    .registers 2

    .line 36
    iget v0, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    return v0
.end method

.method public getScore()F
    .registers 2

    .line 32
    iget v0, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget v1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget v1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", price - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/ads/networks/gam/GAMUnitData;->price:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
