###### Class info.flowersoft.theotown.drawing.BlurScreen (info.flowersoft.theotown.drawing.BlurScreen)
.class public Linfo/flowersoft/theotown/drawing/BlurScreen;
.super Ljava/lang/Object;
.source "BlurScreen.java"


# instance fields
.field public count:I

.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public final filtering:Z

.field public framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

.field public framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

.field public image:Lio/blueflower/stapel2d/drawing/Image;

.field public final instant:Z

.field public oImage:Lio/blueflower/stapel2d/drawing/Image;

.field public final radius:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 5

    .line 32
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useBlur:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Linfo/flowersoft/theotown/drawing/BlurScreen;-><init>(Lio/blueflower/stapel2d/drawing/Engine;IZZ)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;IZZ)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 37
    iput p2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    .line 38
    iput-boolean p3, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->instant:Z

    .line 39
    iput-boolean p4, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->filtering:Z

    return-void
.end method


# virtual methods
.method public beginFilling()V
    .registers 3

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    return-void
.end method

.method public endFilling()V
    .registers 3

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getFramebuffer()Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-ne v0, v1, :cond_f

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    :cond_f
    return-void
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public isFinished()Z
    .registers 3

    .line 90
    iget v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    iget v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->isFrameBufferValid(Lio/blueflower/stapel2d/drawing/FrameBuffer;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public iterate()V
    .registers 3

    .line 76
    iget-boolean v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->instant:Z

    if-eqz v0, :cond_e

    .line 77
    iget v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    iget v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    if-ge v0, v1, :cond_d

    .line 78
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->iterate(I)V

    :cond_d
    return-void

    .line 81
    :cond_e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->iterateSingleStep()V

    return-void
.end method

.method public iterate(I)V
    .registers 5

    const/4 v0, 0x0

    .line 70
    :goto_1
    iget v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    iget v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 71
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->iterateSingleStep()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public final iterateSingleStep()V
    .registers 11

    .line 94
    iget v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    iget v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    if-ge v0, v1, :cond_9e

    .line 95
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 97
    iget v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->radius:I

    iget v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    sub-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 102
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 103
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 104
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0x65

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v5, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0x4d

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 108
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v8, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    neg-int v9, v0

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 109
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v8, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v0, v0

    invoke-virtual {v1, v8, v0, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 111
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v8, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 112
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 113
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 114
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->oImage:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v3, v6, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 117
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->oImage:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v3, v6, v9, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 118
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->oImage:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v3, v6, v0, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->count:I

    .line 125
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    :cond_9e
    return-void
.end method

.method public prepare()V
    .registers 6

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    .line 44
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    .line 46
    invoke-static {v0, v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->createForScreen(II)Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    .line 47
    invoke-static {v0, v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->createForScreen(II)Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    .line 49
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getTexture()Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v2

    .line 50
    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getTexture()Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v3

    .line 52
    iget-boolean v4, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->filtering:Z

    if-eqz v4, :cond_31

    const/16 v4, 0x2601

    .line 53
    invoke-virtual {v2, v4, v4}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 54
    invoke-virtual {v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    goto :goto_39

    :cond_31
    const/16 v4, 0x2600

    .line 56
    invoke-virtual {v2, v4, v4}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 57
    invoke-virtual {v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 60
    :goto_39
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v2, v0, v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getImage(II)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->image:Lio/blueflower/stapel2d/drawing/Image;

    .line 61
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v2, v0, v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getImage(II)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->oImage:Lio/blueflower/stapel2d/drawing/Image;

    return-void
.end method

.method public release()V
    .registers 3

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer0:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/BlurScreen;->framebuffer1:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    return-void
.end method
