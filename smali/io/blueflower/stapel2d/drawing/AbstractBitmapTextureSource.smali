###### Class io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource (io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource)
.class public abstract Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.super Lio/blueflower/stapel2d/drawing/TextureSource;
.source "AbstractBitmapTextureSource.java"


# instance fields
.field public h:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/TextureSource;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->w:I

    .line 11
    iput v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->h:I

    return-void
.end method


# virtual methods
.method public final extractBitmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 21
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TextureSource;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    iput v1, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->w:I

    .line 23
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    iput v1, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->h:I

    return-object v0
.end method

.method public abstract getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
.end method

.method public getHeight()I
    .registers 2

    .line 35
    iget v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->h:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->querySize()V

    .line 36
    :cond_7
    iget v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->h:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 29
    iget v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->w:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->querySize()V

    .line 30
    :cond_7
    iget v0, p0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->w:I

    return v0
.end method

.method public abstract isAsync()Z
.end method

.method public load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 3

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 42
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->extractBitmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;I)V

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public querySize()V
    .registers 1

    .line 0
    return-void
.end method

.method public release(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method
