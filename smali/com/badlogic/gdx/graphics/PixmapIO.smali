###### Class com.badlogic.gdx.graphics.PixmapIO (com.badlogic.gdx.graphics.PixmapIO)
.class public Lcom/badlogic/gdx/graphics/PixmapIO;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    }
.end annotation


# direct methods
.method public static writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;IZ)V

    return-void
.end method

.method public static writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;IZ)V
    .registers 7

    .line 64
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_20

    .line 66
    :try_start_13
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    .line 67
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 68
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_22

    .line 70
    :try_start_1c
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    return-void

    :catch_20
    move-exception p1

    goto :goto_27

    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    .line 71
    throw p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_20

    .line 73
    :goto_27
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error writing PNG: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

###### Class com.badlogic.gdx.graphics.PixmapIO.PNG (com.badlogic.gdx.graphics.PixmapIO$PNG)
.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;
.source "PixmapIO.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
    }
.end annotation


# static fields
.field public static final SIGNATURE:[B


# instance fields
.field public final buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

.field public curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field public final deflater:Ljava/util/zip/Deflater;

.field public flipY:Z

.field public lastLineLen:I

.field public lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field public prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 185
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    return-void

    :array_a
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x4000

    .line 200
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    .line 204
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    .line 205
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method

.method public setCompression(I)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

.method public setFlipY(Z)V
    .registers 2

    .line 210
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    return-void
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object p1

    .line 221
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 223
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_c
    move-exception p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    throw p2
.end method

.method public write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 229
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 230
    new-instance v2, Ljava/io/DataOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    sget-object v4, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 233
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v5, 0x49484452

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 234
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 235
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 236
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 237
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 239
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 240
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 241
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 243
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v6, 0x49444154    # 803861.25f

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 244
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->reset()V

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    const/4 v6, 0x4

    mul-int/2addr v4, v6

    .line 248
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v7, :cond_86

    .line 249
    new-instance v7, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 250
    new-instance v8, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 251
    new-instance v9, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    goto :goto_a0

    .line 253
    :cond_86
    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v7

    .line 254
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v8

    .line 255
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v9

    .line 256
    iget v10, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    move v11, v5

    :goto_99
    if-ge v11, v10, :cond_a0

    .line 257
    aput-byte v5, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_99

    .line 259
    :cond_a0
    :goto_a0
    iput v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 262
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v11

    .line 263
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne v12, v13, :cond_b4

    const/4 v12, 0x1

    goto :goto_b5

    :cond_b4
    move v12, v5

    .line 264
    :goto_b5
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    move v15, v5

    :goto_ba
    if-ge v15, v13, :cond_18f

    const/16 v16, 0x1

    .line 265
    iget-boolean v14, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    if-eqz v14, :cond_c7

    sub-int v14, v13, v15

    add-int/lit8 v14, v14, -0x1

    goto :goto_c8

    :cond_c7
    move v14, v15

    :goto_c8
    if-eqz v12, :cond_d8

    mul-int/2addr v14, v4

    .line 267
    invoke-virtual {v10, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {v10, v8, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v17, v5

    move/from16 v19, v6

    :cond_d5
    move-object/from16 v6, p2

    goto :goto_117

    :cond_d8
    move/from16 v17, v5

    move/from16 v18, v17

    move/from16 v19, v6

    .line 270
    :goto_de
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_d5

    move-object/from16 v6, p2

    .line 271
    invoke-virtual {v6, v5, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v20, v18, 0x1

    move/from16 v21, v5

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 272
    aput-byte v5, v8, v18

    add-int/lit8 v5, v18, 0x2

    move/from16 v22, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 273
    aput-byte v5, v8, v20

    add-int/lit8 v5, v18, 0x3

    move/from16 v20, v5

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 274
    aput-byte v5, v8, v22

    add-int/lit8 v18, v18, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 275
    aput-byte v3, v8, v20

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v3, p1

    goto :goto_de

    .line 279
    :goto_117
    aget-byte v3, v8, v17

    aget-byte v5, v9, v17

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v7, v17

    .line 280
    aget-byte v3, v8, v16

    aget-byte v5, v9, v16

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v7, v16

    const/4 v3, 0x2

    .line 281
    aget-byte v5, v8, v3

    aget-byte v14, v9, v3

    sub-int/2addr v5, v14

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    const/4 v3, 0x3

    .line 282
    aget-byte v5, v8, v3

    aget-byte v14, v9, v3

    sub-int/2addr v5, v14

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move/from16 v3, v19

    :goto_13b
    if-ge v3, v4, :cond_17b

    add-int/lit8 v5, v3, -0x4

    .line 285
    aget-byte v14, v8, v5

    and-int/lit16 v14, v14, 0xff

    move/from16 v18, v3

    .line 286
    aget-byte v3, v9, v18

    and-int/lit16 v3, v3, 0xff

    .line 287
    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    add-int v20, v14, v3

    sub-int v20, v20, v5

    move/from16 v21, v3

    sub-int v3, v20, v14

    if-gez v3, :cond_158

    neg-int v3, v3

    :cond_158
    move/from16 v22, v5

    sub-int v5, v20, v21

    if-gez v5, :cond_15f

    neg-int v5, v5

    :cond_15f
    sub-int v6, v20, v22

    if-gez v6, :cond_164

    neg-int v6, v6

    :cond_164
    if-gt v3, v5, :cond_169

    if-gt v3, v6, :cond_169

    goto :goto_170

    :cond_169
    if-gt v5, v6, :cond_16e

    move/from16 v14, v21

    goto :goto_170

    :cond_16e
    move/from16 v14, v22

    .line 299
    :goto_170
    aget-byte v3, v8, v18

    sub-int/2addr v3, v14

    int-to-byte v3, v3

    aput-byte v3, v7, v18

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v6, p2

    goto :goto_13b

    :cond_17b
    move/from16 v3, v19

    .line 302
    invoke-virtual {v1, v3}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    move/from16 v5, v17

    .line 303
    invoke-virtual {v1, v7, v5, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    add-int/lit8 v15, v15, 0x1

    move-object v6, v9

    move-object v9, v8

    move-object v8, v6

    move v6, v3

    move-object/from16 v3, p1

    goto/16 :goto_ba

    .line 309
    :cond_18f
    invoke-virtual {v10, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 310
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 311
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 313
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v3, 0x49454e44    # 808164.25f

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

###### Class com.badlogic.gdx.graphics.PixmapIO.PNG.ChunkBuffer (com.badlogic.gdx.graphics.PixmapIO$PNG$ChunkBuffer)
.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
.super Ljava/io/DataOutputStream;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkBuffer"
.end annotation


# instance fields
.field public final buffer:Ljava/io/ByteArrayOutputStream;

.field public final crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 330
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/zip/CRC32;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/zip/CRC32;)V
    .registers 4

    .line 334
    new-instance v0, Ljava/util/zip/CheckedOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 335
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 336
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public endChunk(Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 344
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 345
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method
