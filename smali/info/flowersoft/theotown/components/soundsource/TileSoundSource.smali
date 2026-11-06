###### Class info.flowersoft.theotown.components.soundsource.TileSoundSource (info.flowersoft.theotown.components.soundsource.TileSoundSource)
.class public Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "TileSoundSource.java"


# instance fields
.field public h:I

.field public valid:Z

.field public volume:F

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;II)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IIII)V
    .registers 6

    .line 23
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->volume:F

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->valid:Z

    .line 24
    iput p2, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->x:I

    .line 25
    iput p3, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->y:I

    .line 26
    iput p4, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->w:I

    .line 27
    iput p5, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->h:I

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 47
    iget v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->h:I

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 42
    iget v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->w:I

    return v0
.end method

.method public getTileX()F
    .registers 2

    .line 32
    iget v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 37
    iget v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->y:I

    int-to-float v0, v0

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->volume:F

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->valid:Z

    return v0
.end method

.method public setH(I)V
    .registers 2

    .line 73
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->h:I

    return-void
.end method

.method public setValid(Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->valid:Z

    return-void
.end method

.method public setVolume(F)V
    .registers 2

    .line 77
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->volume:F

    return-void
.end method

.method public setW(I)V
    .registers 2

    .line 69
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->w:I

    return-void
.end method

.method public setX(I)V
    .registers 2

    .line 61
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->x:I

    return-void
.end method

.method public setY(I)V
    .registers 2

    .line 65
    iput p1, p0, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->y:I

    return-void
.end method
