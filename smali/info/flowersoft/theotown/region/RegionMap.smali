###### Class info.flowersoft.theotown.region.RegionMap (info.flowersoft.theotown.region.RegionMap)
.class public Linfo/flowersoft/theotown/region/RegionMap;
.super Ljava/lang/Object;
.source "RegionMap.java"


# instance fields
.field public final height:I

.field public final keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final level:I

.field public renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;IIIII)V
    .registers 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/region/RegionMap;->keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 18
    iput p2, p0, Linfo/flowersoft/theotown/region/RegionMap;->x:I

    .line 19
    iput p3, p0, Linfo/flowersoft/theotown/region/RegionMap;->y:I

    .line 20
    iput p4, p0, Linfo/flowersoft/theotown/region/RegionMap;->level:I

    .line 21
    iput p5, p0, Linfo/flowersoft/theotown/region/RegionMap;->width:I

    .line 22
    iput p6, p0, Linfo/flowersoft/theotown/region/RegionMap;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 46
    iget v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$Map("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/region/RegionMap;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/region/RegionMap;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/region/RegionMap;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/region/RegionMap;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 2

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .line 38
    iget v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->level:I

    return v0
.end method

.method public getRenderer()Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 42
    iget v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 34
    iget v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->y:I

    return v0
.end method

.method public setRenderer(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)V
    .registers 3

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/region/RegionMap;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->release()V

    .line 57
    :cond_7
    iput-object p1, p0, Linfo/flowersoft/theotown/region/RegionMap;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    return-void
.end method
