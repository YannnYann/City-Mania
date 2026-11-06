###### Class io.blueflower.stapel2d.drawing.Texture (io.blueflower.stapel2d.drawing.Texture)
.class public final Lio/blueflower/stapel2d/drawing/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field public clearColor:Lio/blueflower/stapel2d/drawing/Color;

.field public colorDepth:I

.field public currentContext:I

.field public dirty:Z

.field public format:I

.field public formatType:I

.field public height:I

.field public final ids:[I

.field public internalFormat:I

.field public magFilter:I

.field public minFilter:I

.field public source:Lio/blueflower/stapel2d/drawing/TextureSource;

.field public units:I

.field public width:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    const/16 v0, 0x2600

    .line 37
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->minFilter:I

    .line 38
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->magFilter:I

    const/16 v0, 0x20

    .line 41
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->colorDepth:I

    const/16 v0, 0x1401

    .line 42
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->formatType:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 49
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    .line 50
    invoke-virtual {p1, p0}, Lio/blueflower/stapel2d/drawing/TextureSource;->init(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 51
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/TextureSource;->getWidth()I

    move-result v0

    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    .line 52
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/TextureSource;->getHeight()I

    move-result v0

    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    .line 53
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/TextureSource;->getUnits()I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    .line 54
    new-array p1, p1, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    const/16 p1, 0x1908

    .line 55
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->format:I

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Texture;->setAlphaMode(Z)V

    return-void
.end method

.method public static findSize(I)I
    .registers 2

    .line 0
    const/16 v0, 0x10

    :goto_2
    if-ge v0, p0, :cond_7

    mul-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_7
    return v0
.end method

.method public static probeSize(II)Z
    .registers 15

    .line 239
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    .line 240
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xde1

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 241
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p0

    move v8, p1

    invoke-interface/range {v3 .. v12}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 242
    sget-object p0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result p0

    .line 243
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bind()V
    .registers 5

    const/4 v0, 0x0

    .line 195
    :goto_1
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    const v2, 0x84c0

    if-ge v0, v1, :cond_1c

    .line 196
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    add-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 198
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    aget v2, v2, v0

    const/16 v3, 0xde1

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1c
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    return-void
.end method

.method public bindUnit(I)V
    .registers 4

    .line 206
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    aget p1, v1, p1

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method

.method public clear(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 14

    .line 143
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 145
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    .line 146
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    move v7, v0

    :goto_c
    const/16 v0, 0x100

    if-le v7, v0, :cond_13

    .line 147
    div-int/lit8 v7, v7, 0x2

    goto :goto_c

    :cond_13
    move v8, v1

    :goto_14
    if-le v8, v0, :cond_19

    .line 148
    div-int/lit8 v8, v8, 0x2

    goto :goto_14

    :cond_19
    mul-int v0, v7, v8

    .line 149
    new-array v0, v0, [I

    .line 151
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->toABGR()I

    move-result p1

    .line 152
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v11

    const/4 p1, 0x0

    move v0, p1

    .line 155
    :goto_2a
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    if-ge v0, v1, :cond_4e

    .line 156
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Texture;->bindUnit(I)V

    move v6, p1

    .line 157
    :goto_32
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    if-ge v6, v1, :cond_4b

    move v5, p1

    .line 158
    :goto_37
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    if-ge v5, v1, :cond_49

    .line 159
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v9, p0, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    const/16 v10, 0x1401

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/2addr v5, v7

    goto :goto_37

    :cond_49
    add-int/2addr v6, v8

    goto :goto_32

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4e
    return-void
.end method

.method public getCurrentContext()I
    .registers 2

    .line 215
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 128
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    return v0
.end method

.method public getSource()Lio/blueflower/stapel2d/drawing/TextureSource;
    .registers 2

    .line 191
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 124
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    return v0
.end method

.method public release()V
    .registers 6

    .line 175
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 176
    :cond_6
    iput v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    .line 178
    const-string v0, "release:before"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/drawing/TextureSource;->release(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 180
    const-string v0, "release:source"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_27

    aget v3, v0, v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 182
    :cond_27
    const-string v0, "release:ids"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlphaMode(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0x1908

    goto :goto_7

    :cond_5
    const/16 p1, 0x1907

    .line 78
    :goto_7
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    .line 79
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->format:I

    return-void
.end method

.method public setColorDepth(I)V
    .registers 5

    const/16 v0, 0x10

    const/16 v1, 0x20

    if-eq p1, v0, :cond_20

    if-ne p1, v1, :cond_9

    goto :goto_20

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Depth must be 16 or 32, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_20
    :goto_20
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->colorDepth:I

    if-ne p1, v1, :cond_27

    const/16 p1, 0x1401

    goto :goto_2a

    :cond_27
    const p1, 0x8033

    .line 66
    :goto_2a
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->formatType:I

    return-void
.end method

.method public setDirty()V
    .registers 2

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->dirty:Z

    return-void
.end method

.method public setFiltering(II)V
    .registers 3

    .line 88
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->minFilter:I

    .line 89
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Texture;->magFilter:I

    return-void
.end method

.method public setSource(Lio/blueflower/stapel2d/drawing/TextureSource;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    .line 187
    invoke-virtual {p1, p0}, Lio/blueflower/stapel2d/drawing/TextureSource;->init(Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

.method public setUp(I)Z
    .registers 14

    .line 93
    const-string v0, "texture.setup:before"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->postponeSetup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return v1

    .line 96
    :cond_f
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    .line 98
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 103
    const-string p1, "texture.setup:gen"

    invoke-static {p1, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 105
    :goto_39
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    if-ge v1, p1, :cond_82

    .line 106
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-interface {p1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 108
    const-string p1, "texture.setup:bind"

    invoke-static {p1, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 110
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->minFilter:I

    int-to-float v0, v0

    const/16 v3, 0x2801

    invoke-interface {p1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 111
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->magFilter:I

    int-to-float v0, v0

    const/16 v3, 0x2800

    invoke-interface {p1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 113
    const-string p1, "texture.setup:parameters"

    invoke-static {p1, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 115
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Texture;->format:I

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    iget v7, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    iget v9, p0, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    iget v10, p0, Lio/blueflower/stapel2d/drawing/Texture;->formatType:I

    const/4 v11, 0x0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 117
    const-string p1, "texture.setup:teximg2d"

    invoke-static {p1, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_82
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", depth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->colorDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", units:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intformat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formattype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Texture;->formatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upload()V
    .registers 2

    .line 132
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Texture;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 135
    :cond_7
    const-string v0, "texture.upload:cls"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->source:Lio/blueflower/stapel2d/drawing/TextureSource;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->start()V

    .line 137
    const-string v0, "texture.upload:source.start"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Texture;->dirty:Z

    return-void
.end method
