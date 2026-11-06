###### Class io.blueflower.stapel2d.drawing.TextureSource (io.blueflower.stapel2d.drawing.TextureSource)
.class public abstract Lio/blueflower/stapel2d/drawing/TextureSource;
.super Ljava/lang/Object;
.source "TextureSource.java"


# instance fields
.field public texture:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Lio/blueflower/stapel2d/drawing/Engine;Lcom/badlogic/gdx/graphics/Pixmap;III)V
    .registers 16

    .line 63
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 65
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getFramebuffer()Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    .line 68
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v1, p5}, Lio/blueflower/stapel2d/drawing/Texture;->bindUnit(I)V

    .line 69
    new-instance v1, Lio/blueflower/stapel2d/drawing/FrameBuffer;

    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, p5, v3, v4}, Lio/blueflower/stapel2d/drawing/FrameBuffer;-><init>(Lio/blueflower/stapel2d/drawing/Texture;III)V

    const/4 p5, 0x0

    .line 70
    invoke-virtual {v1, p5}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->load(I)V

    .line 71
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->bind()V

    .line 72
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v7

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v3, p3

    move v4, p4

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 73
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unbind()V

    .line 74
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->release()V

    .line 76
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    return-void
.end method

.method public abstract getHeight()I
.end method

.method public getUnits()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getWidth()I
.end method

.method public init(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    return-void
.end method

.method public abstract load(Lio/blueflower/stapel2d/drawing/Texture;)V
.end method

.method public postponeSetup()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract release(Lio/blueflower/stapel2d/drawing/Texture;)V
.end method

.method public start()V
    .registers 2

    .line 26
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->load(Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

.method public upload(Lcom/badlogic/gdx/graphics/Pixmap;I)V
    .registers 14

    .line 53
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Texture;->bindUnit(I)V

    .line 54
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object p2, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v4, p2, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v8

    const/16 v9, 0x1401

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V
    .registers 16

    .line 58
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, p4}, Lio/blueflower/stapel2d/drawing/Texture;->bindUnit(I)V

    .line 59
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public upload(Ljava/nio/Buffer;IIIII)V
    .registers 18

    .line 48
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Texture;->bindUnit(I)V

    .line 49
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v8, v0, Lio/blueflower/stapel2d/drawing/Texture;->internalFormat:I

    const/16 v9, 0x1401

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object v10, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method
