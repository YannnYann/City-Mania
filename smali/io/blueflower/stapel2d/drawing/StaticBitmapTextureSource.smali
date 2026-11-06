###### Class io.blueflower.stapel2d.drawing.StaticBitmapTextureSource (io.blueflower.stapel2d.drawing.StaticBitmapTextureSource)
.class public Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;
.super Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.source "StaticBitmapTextureSource.java"


# instance fields
.field public final async:Z

.field public final bmp:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;-><init>()V

    .line 11
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 12
    iput-boolean p2, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->async:Z

    return-void
.end method


# virtual methods
.method public getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2

    .line 41
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object p1
.end method

.method public getHeight()I
    .registers 2

    .line 27
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 22
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isAsync()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->async:Z

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 3

    .line 36
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    return-void
.end method

.method public querySize()V
    .registers 1

    .line 0
    return-void
.end method
