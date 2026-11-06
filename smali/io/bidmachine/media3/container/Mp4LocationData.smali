###### Class io.bidmachine.media3.container.Mp4LocationData (io.bidmachine.media3.container.Mp4LocationData)
.class public final Lio/bidmachine/media3/container/Mp4LocationData;
.super Ljava/lang/Object;
.source "Mp4LocationData.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final latitude:F

.field public final longitude:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1d

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1d

    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1d

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 50
    :goto_1e
    const-string v1, "Invalid latitude or longitude"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    iput p1, p0, Lio/bidmachine/media3/container/Mp4LocationData;->latitude:F

    .line 54
    iput p2, p0, Lio/bidmachine/media3/container/Mp4LocationData;->longitude:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/container/Mp4LocationData;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 65
    :cond_10
    check-cast p1, Lio/bidmachine/media3/container/Mp4LocationData;

    .line 66
    iget v2, p0, Lio/bidmachine/media3/container/Mp4LocationData;->latitude:F

    iget v3, p1, Lio/bidmachine/media3/container/Mp4LocationData;->latitude:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_23

    iget v2, p0, Lio/bidmachine/media3/container/Mp4LocationData;->longitude:F

    iget p1, p1, Lio/bidmachine/media3/container/Mp4LocationData;->longitude:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 72
    iget v0, p0, Lio/bidmachine/media3/container/Mp4LocationData;->latitude:F

    invoke-static {v0}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 73
    iget v0, p0, Lio/bidmachine/media3/container/Mp4LocationData;->longitude:F

    invoke-static {v0}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xyz: latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/container/Mp4LocationData;->latitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/container/Mp4LocationData;->longitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
