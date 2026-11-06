###### Class io.blueflower.stapel2d.drawing.FrameBuffer (io.blueflower.stapel2d.drawing.FrameBuffer)
.class public Lio/blueflower/stapel2d/drawing/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field public static defaultFBO:I


# instance fields
.field public clearColor:Lio/blueflower/stapel2d/drawing/Color;

.field public currentContext:I

.field public id:I

.field public screenHeight:I

.field public screenWidth:I

.field public texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public unit:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Texture;III)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    .line 33
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 34
    iput p2, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unit:I

    .line 35
    iput p3, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenWidth:I

    .line 36
    iput p4, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenHeight:I

    return-void
.end method

.method public static createForScreen(II)Lio/blueflower/stapel2d/drawing/FrameBuffer;
    .registers 5

    .line 106
    new-instance v0, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v1, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;

    invoke-direct {v1, p0, p1}, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;-><init>(II)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 107
    new-instance v1, Lio/blueflower/stapel2d/drawing/FrameBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0, p1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;-><init>(Lio/blueflower/stapel2d/drawing/Texture;III)V

    return-object v1
.end method


# virtual methods
.method public bind()V
    .registers 10

    .line 61
    const-string v0, "framebuffer.bind:before"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->id:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "framebuffer.bind:bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v0, v0, Lio/blueflower/stapel2d/drawing/Texture;->ids:[I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unit:I

    aget v7, v0, v1

    const/4 v8, 0x0

    const v4, 0x8d40

    const v5, 0x8ce0

    const/16 v6, 0xde1

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 65
    const-string v0, "framebuffer.bind:tex2d"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-ne v0, v1, :cond_7c

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_7b

    .line 73
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 74
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 75
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 76
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->clearColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 77
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 73
    invoke-interface {v1, v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 78
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    :cond_7b
    return-void

    .line 70
    :cond_7c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer not complete: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for buf "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImage(II)Lio/blueflower/stapel2d/drawing/Image;
    .registers 8

    .line 98
    new-instance v0, Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;I)V

    .line 99
    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenHeight:I

    int-to-float v2, v1

    iget v3, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenWidth:I

    int-to-float v3, v3

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1, p1, p2}, Lio/blueflower/stapel2d/drawing/Image;->resize(IFF)V

    return-object v0
.end method

.method public getTexture()Lio/blueflower/stapel2d/drawing/Texture;
    .registers 2

    .line 94
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    return-object v0
.end method

.method public load(I)V
    .registers 5

    .line 44
    iput p1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    const/4 p1, 0x4

    .line 46
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->id:I

    .line 50
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v1, :cond_46

    sget p1, Lio/blueflower/stapel2d/drawing/FrameBuffer;->defaultFBO:I

    if-nez p1, :cond_46

    const/16 p1, 0x40

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 52
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8ca6

    invoke-interface {v1, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 53
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    sput p1, Lio/blueflower/stapel2d/drawing/FrameBuffer;->defaultFBO:I

    .line 57
    :cond_46
    const-string p1, "framebuffer.load"

    invoke-static {p1, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .registers 4

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    const/4 v0, 0x4

    .line 88
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    iget v2, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->id:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 90
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Framebuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), unit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .registers 4

    .line 83
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8d40

    sget v2, Lio/blueflower/stapel2d/drawing/FrameBuffer;->defaultFBO:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method
