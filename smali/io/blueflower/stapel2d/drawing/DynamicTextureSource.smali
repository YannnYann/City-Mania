###### Class io.blueflower.stapel2d.drawing.DynamicTextureSource (io.blueflower.stapel2d.drawing.DynamicTextureSource)
.class public Lio/blueflower/stapel2d/drawing/DynamicTextureSource;
.super Lio/blueflower/stapel2d/drawing/TextureSource;
.source "DynamicTextureSource.java"


# instance fields
.field public buffer:Ljava/nio/IntBuffer;

.field public h:I

.field public w:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/TextureSource;-><init>()V

    .line 17
    iput p1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->w:I

    .line 18
    iput p2, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->h:I

    mul-int/lit8 p1, p1, 0x4

    mul-int/2addr p1, p2

    .line 19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 20
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 53
    iget v0, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->h:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 48
    iget v0, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->w:I

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 9

    .line 58
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_13

    .line 59
    iget v4, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->w:I

    iget v5, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->h:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Ljava/nio/Buffer;IIIII)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, v0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    return-void

    :cond_13
    move-object v0, p0

    return-void
.end method

.method public release(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setData(Ljava/nio/IntBuffer;II)V
    .registers 4

    .line 41
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    .line 42
    iput p2, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->w:I

    .line 43
    iput p3, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->h:I

    return-void
.end method

.method public setData([I)V
    .registers 5

    .line 25
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 26
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public setData([III)V
    .registers 7

    .line 30
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 31
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 32
    iput p2, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->w:I

    .line 33
    iput p3, p0, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->h:I

    return-void
.end method
