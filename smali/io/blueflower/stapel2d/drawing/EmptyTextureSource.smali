###### Class io.blueflower.stapel2d.drawing.EmptyTextureSource (io.blueflower.stapel2d.drawing.EmptyTextureSource)
.class public final Lio/blueflower/stapel2d/drawing/EmptyTextureSource;
.super Lio/blueflower/stapel2d/drawing/TextureSource;
.source "EmptyTextureSource.java"


# instance fields
.field public height:I

.field public units:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 17
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/TextureSource;-><init>()V

    .line 18
    iput p1, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->width:I

    .line 19
    iput p2, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->height:I

    .line 20
    iput p3, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->units:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 30
    iget v0, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->height:I

    return v0
.end method

.method public getUnits()I
    .registers 2

    .line 35
    iget v0, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->units:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 25
    iget v0, p0, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;->width:I

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method

.method public release(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method
