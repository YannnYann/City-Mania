###### Class info.flowersoft.theotown.util.ScreenRecorder (info.flowersoft.theotown.util.ScreenRecorder)
.class public Linfo/flowersoft/theotown/util/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/util/ScreenRecorder;


# instance fields
.field public JPEG_COMPRESSION:I

.field public MAX_RESOLUTION:I

.field public MINIMUM_FRAME_TIME:I

.field public buf:[I

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public hasFrameToProcess:Z

.field public height:I

.field public lastMS:J

.field public localBuf:[I

.field public localHeight:I

.field public pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field public processingFrame:Z

.field public step:I

.field public stepCount:I

.field public texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public width:I

.field public worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 57
    iput v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->stepCount:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/ScreenRecorder;)[I
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->buf:[I

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/util/ScreenRecorder;[I)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->processFrameRaw([I)V

    return-void
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/util/ScreenRecorder;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z

    return p1
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/util/ScreenRecorder;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->processingFrame:Z

    return p1
.end method

.method public static getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;
    .registers 1

    .line 312
    sget-object v0, Linfo/flowersoft/theotown/util/ScreenRecorder;->instance:Linfo/flowersoft/theotown/util/ScreenRecorder;

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Linfo/flowersoft/theotown/util/ScreenRecorder;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/ScreenRecorder;->instance:Linfo/flowersoft/theotown/util/ScreenRecorder;

    .line 315
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/util/ScreenRecorder;->instance:Linfo/flowersoft/theotown/util/ScreenRecorder;

    return-object v0
.end method


# virtual methods
.method public final getMeta()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 196
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 69
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->screenRecording:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->isSuitable()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->screenRecordingMobile:Z

    if-nez v0, :cond_16

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isSuitable()Z
    .registers 3

    .line 65
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public processFrame()V
    .registers 18

    move-object/from16 v1, p0

    .line 128
    iget-boolean v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z

    if-eqz v0, :cond_cd

    iget-boolean v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->processingFrame:Z

    if-nez v0, :cond_cd

    .line 129
    iget-object v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 130
    iget-object v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 131
    iget-object v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 132
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v2, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 134
    iget-object v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    .line 135
    iget-object v2, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    .line 136
    iget-object v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 138
    iget-object v6, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v7, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    int-to-float v10, v3

    iget v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->height:I

    int-to-float v11, v3

    .line 139
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    iget-object v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 140
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v14, v3, v4

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 138
    invoke-virtual/range {v6 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    .line 143
    :try_start_76
    iget v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->step:I

    iget v4, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->localHeight:I

    mul-int/2addr v3, v4

    add-int/2addr v4, v3

    .line 144
    iget v5, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v4, v3, :cond_a3

    .line 146
    iget-object v5, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->localBuf:[I

    iget v7, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->height:I

    sub-int v8, v7, v4

    iget v9, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    sub-int v10, v4, v3

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->getPixels([IIIII)[I

    .line 147
    iget-object v4, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->localBuf:[I

    iget-object v5, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->buf:[I

    iget v6, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    mul-int/2addr v3, v6

    mul-int/2addr v10, v6

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a3

    :catch_a1
    move-exception v0

    goto :goto_ca

    .line 150
    :cond_a3
    :goto_a3
    sget-object v3, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v4, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 151
    iget-object v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 153
    iget v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->step:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->step:I

    .line 154
    iget v3, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->stepCount:I

    if-lt v0, v3, :cond_cd

    .line 155
    iput-boolean v2, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->processingFrame:Z

    .line 157
    new-instance v0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/ScreenRecorder$1;-><init>(Linfo/flowersoft/theotown/util/ScreenRecorder;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/util/ScreenRecorder;->worker:Ljava/lang/Thread;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c9} :catch_a1

    return-void

    .line 175
    :goto_ca
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_cd
    return-void
.end method

.method public final processFrameRaw([I)V
    .registers 8

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->getNumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_55

    .line 185
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    .line 187
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->saveBufToBmpStream([ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_55

    .line 188
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getMeta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/ScreenRecorder;->uploadData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public final saveBufToBmpStream([ILjava/io/OutputStream;)Z
    .registers 5

    if-eqz p1, :cond_24

    .line 273
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>()V

    const/16 v1, 0x9

    .line 274
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 275
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 277
    :try_start_19
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_20

    const/4 p1, 0x1

    return p1

    :catch_20
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized setDown()V
    .registers 4

    monitor-enter p0

    .line 287
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0x64

    .line 289
    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_17
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1

    :catchall_15
    move-exception v0

    goto :goto_3c

    :catch_17
    move-exception v0

    .line 291
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 294
    :cond_1c
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 295
    iget-object v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v2, :cond_2a

    .line 296
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 297
    iput-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 299
    :cond_2a
    iput-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 301
    :cond_2c
    iput-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->buf:[I

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_37

    .line 303
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 304
    iput-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    :cond_37
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_15

    .line 307
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_15

    throw v0
.end method

.method public declared-synchronized setUp(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 7

    monitor-enter p0

    .line 73
    :try_start_1
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->screenRecording:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 75
    :cond_7
    :try_start_7
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->screenRecordingQuality:I

    const/16 v1, 0x1e

    const/16 v2, 0x320

    if-eqz v0, :cond_29

    const/4 v3, 0x2

    const/16 v4, 0x258

    if-eq v0, v3, :cond_1e

    .line 87
    iput v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MINIMUM_FRAME_TIME:I

    .line 88
    iput v4, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MAX_RESOLUTION:I

    .line 89
    iput v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->JPEG_COMPRESSION:I

    goto :goto_31

    :catchall_1b
    move-exception p1

    goto/16 :goto_b0

    :cond_1e
    const/16 v0, 0x190

    .line 82
    iput v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MINIMUM_FRAME_TIME:I

    .line 83
    iput v4, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MAX_RESOLUTION:I

    const/16 v0, 0x50

    .line 84
    iput v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->JPEG_COMPRESSION:I

    goto :goto_31

    .line 77
    :cond_29
    iput v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MINIMUM_FRAME_TIME:I

    const/16 v0, 0x12c

    .line 78
    iput v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MAX_RESOLUTION:I

    .line 79
    iput v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->JPEG_COMPRESSION:I

    .line 93
    :goto_31
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 95
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result v0

    .line 96
    new-instance v1, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v2, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;

    invoke-direct {v2, v0, v0}, Lio/blueflower/stapel2d/drawing/EmptyTextureSource;-><init>(II)V

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/16 v0, 0x2600

    .line 97
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Texture;->setAlphaMode(Z)V

    const/4 v0, 0x1

    move v2, v0

    .line 102
    :goto_5c
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v3, v2

    iget v4, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MAX_RESOLUTION:I

    if-le v3, v4, :cond_70

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 103
    :cond_70
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v3

    div-int/2addr v3, v2

    iput v3, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    .line 104
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->height:I

    .line 105
    iget v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    mul-int v3, v2, p1

    new-array v3, v3, [I

    iput-object v3, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->buf:[I

    .line 106
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v3, v2, p1, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 107
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 108
    iget p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->height:I

    iget v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->stepCount:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    iput p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->localHeight:I

    .line 109
    iget v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->width:I

    mul-int/2addr v0, p1

    new-array p1, v0, [I

    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->localBuf:[I

    .line 111
    iput v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->step:I

    .line 112
    iput-boolean v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z
    :try_end_ae
    .catchall {:try_start_7 .. :try_end_ae} :catchall_1b

    .line 113
    monitor-exit p0

    return-void

    :goto_b0
    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_1b

    throw p1
.end method

.method public takeFrame()V
    .registers 10

    .line 116
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MINIMUM_FRAME_TIME:I

    if-lez v0, :cond_3b

    .line 117
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->MINIMUM_FRAME_TIME:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 118
    iget-wide v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->lastMS:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3b

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z

    if-nez v2, :cond_3b

    .line 119
    iget-object v3, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v7

    iget-object v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->copyPixelsIntoTexture(Lio/blueflower/stapel2d/drawing/Texture;IIII)V

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->hasFrameToProcess:Z

    .line 121
    iput-wide v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->lastMS:J

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder;->step:I

    :cond_3b
    return-void
.end method

.method public final uploadData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    .line 205
    :try_start_1
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://util.theotown.com/upload.php?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&meta="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    .line 207
    invoke-static {p3}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    const/4 p4, 0x1

    .line 208
    invoke-virtual {p3, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 210
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"\r\nContent-Type: image/jpeg\r\n\r\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 214
    const-string p4, "\r\n-----------------------------4664151417711--\r\n"

    .line 216
    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=---------------------------4664151417711"

    invoke-virtual {p3, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "Content-Length"

    .line 220
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    array-length v3, p1

    add-int/2addr v2, v3

    .line 219
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_d1
    .catchall {:try_start_1 .. :try_end_5e} :catchall_ce

    .line 224
    :try_start_5e
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 p2, 0x0

    const/high16 v2, 0x100000

    move v3, p2

    :cond_69
    add-int v4, v3, v2

    .line 230
    array-length v5, p1

    if-le v4, v5, :cond_79

    .line 231
    array-length v2, p1

    sub-int/2addr v2, v3

    goto :goto_79

    :catchall_71
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_de

    :catch_75
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_d3

    .line 233
    :cond_79
    :goto_79
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v2

    .line 235
    array-length v4, p1

    if-lt v3, v4, :cond_69

    .line 237
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 238
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 239
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WROTE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes of data"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 244
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object p1

    .line 245
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "READ"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_b5
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_c5

    .line 250
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_c5} :catch_75
    .catchall {:try_start_5e .. :try_end_c5} :catchall_71

    :cond_c5
    if-gtz p3, :cond_b5

    .line 257
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_ca

    .line 261
    :catch_ca
    :try_start_ca
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_dc

    goto :goto_dc

    :catchall_ce
    move-exception p1

    move-object p2, v0

    goto :goto_de

    :catch_d1
    move-exception p1

    move-object p2, v0

    .line 254
    :goto_d3
    :try_start_d3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_dd

    .line 257
    :try_start_d6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_d9

    .line 261
    :catch_d9
    :try_start_d9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_dc

    :catch_dc
    :goto_dc
    return-void

    :catchall_dd
    move-exception p1

    .line 257
    :goto_de
    :try_start_de
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e1

    .line 261
    :catch_e1
    :try_start_e1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e4

    .line 268
    :catch_e4
    throw p1
.end method

###### Class info.flowersoft.theotown.util.ScreenRecorder.AnonymousClass1 (info.flowersoft.theotown.util.ScreenRecorder$1)
.class Linfo/flowersoft/theotown/util/ScreenRecorder$1;
.super Ljava/lang/Thread;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/ScreenRecorder;->processFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ScreenRecorder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;->this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 161
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;->this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->access$000(Linfo/flowersoft/theotown/util/ScreenRecorder;)[I

    move-result-object v0

    if-eqz v0, :cond_10

    .line 163
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;->this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->access$100(Linfo/flowersoft/theotown/util/ScreenRecorder;[I)V

    goto :goto_10

    :catch_e
    move-exception v0

    goto :goto_1c

    .line 165
    :cond_10
    :goto_10
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;->this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->access$202(Linfo/flowersoft/theotown/util/ScreenRecorder;Z)Z

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ScreenRecorder$1;->this$0:Linfo/flowersoft/theotown/util/ScreenRecorder;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->access$302(Linfo/flowersoft/theotown/util/ScreenRecorder;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_e

    return-void

    .line 168
    :goto_1c
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Process"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
