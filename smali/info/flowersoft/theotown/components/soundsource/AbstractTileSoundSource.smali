###### Class info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource (info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource)
.class public abstract Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.super Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;
.source "AbstractTileSoundSource.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;-><init>()V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    .line 60
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getTileX()F
.end method

.method public abstract getTileY()F
.end method

.method public getWidth()I
    .registers 3

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    .line 54
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getX()I
    .registers 9

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileX()F

    move-result v0

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileY()F

    move-result v1

    .line 33
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    .line 35
    iget-object v4, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v6, v0, v2

    add-float v7, v1, v2

    invoke-virtual {v4, v6, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    sub-float/2addr v4, v2

    .line 36
    iget-object v2, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v0

    sub-float/2addr v0, v3

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getY()I
    .registers 9

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileX()F

    move-result v0

    .line 43
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileY()F

    move-result v1

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    .line 45
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    .line 46
    iget-object v4, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v6, v0, v2

    add-float v7, v1, v2

    invoke-virtual {v4, v6, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    sub-float/2addr v4, v2

    .line 47
    iget-object v2, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v0

    sub-float/2addr v0, v3

    .line 48
    iget-object v1, p0, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
