###### Class info.flowersoft.theotown.components.soundsource.AreaSoundSource (info.flowersoft.theotown.components.soundsource.AreaSoundSource)
.class public abstract Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;
.super Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
.source "AreaSoundSource.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;-><init>(F)V

    return-void
.end method


# virtual methods
.method public abstract getHeight()I
.end method

.method public getScreenHeight()I
    .registers 2

    .line 24
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .line 21
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    return v0
.end method

.method public getStartRate()F
    .registers 3

    .line 60
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract getX()I
.end method

.method public abstract getY()I
.end method

.method public update()V
    .registers 14

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v0, :cond_93

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getX()I

    move-result v2

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getY()I

    move-result v3

    .line 38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getWidth()I

    move-result v4

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getHeight()I

    move-result v5

    add-int v6, v2, v4

    neg-int v7, v6

    .line 41
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    int-to-float v2, v2

    sub-float v8, v2, v0

    int-to-float v6, v6

    sub-float v9, v0, v6

    .line 42
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v8, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v0, v10

    sub-float/2addr v2, v11

    sub-float/2addr v11, v6

    .line 43
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v10

    div-float/2addr v2, v0

    int-to-float v6, v3

    div-float v11, v1, v10

    sub-float/2addr v6, v11

    add-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v11, v3

    .line 44
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v10

    div-float/2addr v3, v1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    int-to-double v11, v4

    mul-double/2addr v11, v9

    int-to-double v4, v5

    mul-double/2addr v11, v4

    float-to-double v4, v0

    div-double/2addr v11, v4

    float-to-double v0, v1

    div-double/2addr v11, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 45
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 47
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;->getVolume()F

    move-result v4

    mul-float v5, v2, v2

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    div-float v2, v1, v5

    mul-float/2addr v4, v2

    mul-float v2, v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    div-float v2, v1, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    mul-float/2addr v7, v7

    add-float/2addr v7, v1

    div-float v0, v4, v7

    mul-float/2addr v8, v8

    add-float/2addr v8, v1

    div-float/2addr v4, v8

    .line 54
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v1, v0, v4}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVolume(FF)V

    :cond_93
    return-void
.end method
