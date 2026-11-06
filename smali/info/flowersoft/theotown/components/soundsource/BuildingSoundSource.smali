###### Class info.flowersoft.theotown.components.soundsource.BuildingSoundSource (info.flowersoft.theotown.components.soundsource.BuildingSoundSource)
.class public Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "BuildingSoundSource.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 15
    iput-object p2, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTileX()F
    .registers 2

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
