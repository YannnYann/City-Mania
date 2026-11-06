###### Class info.flowersoft.theotown.store.ManagedPluginFile (info.flowersoft.theotown.store.ManagedPluginFile)
.class public Linfo/flowersoft/theotown/store/ManagedPluginFile;
.super Ljava/lang/Object;
.source "ManagedPluginFile.java"


# instance fields
.field public active:Z

.field public final author:Ljava/lang/String;

.field public final authorColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final authorId:I

.field public error:Ljava/lang/String;

.field public final file:Ljava/io/File;

.field public final fileSize:J

.field public firstDownloaded:J

.field public final hash:Ljava/lang/String;

.field public final headerSize:I

.field public final imgSize:I

.field public final key:[B

.field public final keyLength:I

.field public lastActive:Z

.field public final lastUpdate:J

.field public lastVersion:I

.field public mpfVersion:I

.field public order:I

.field public permanent:Z

.field public pluginFileTranslation:Linfo/flowersoft/theotown/store/PluginFileTranslation;

.field public final pluginId:I

.field public final pluginSize:I

.field public final rb:[B

.field public final rbLength:I

.field public final revisionId:I

.field public final text:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->active:Z

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->error:Ljava/lang/String;

    const/16 v1, 0x10

    .line 49
    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->keyLength:I

    .line 50
    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->rbLength:I

    .line 55
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->file:Ljava/io/File;

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->fileSize:J

    .line 58
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    :try_start_26
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 60
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 61
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->headerSize:I

    .line 64
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->imgSize:I

    .line 65
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginSize:I

    const-wide v8, 0x7474706c7567696eL    # 9.365679915249444E252

    cmp-long v8, v3, v8

    if-nez v8, :cond_19b

    const-wide v8, 0x646f6e746861636bL    # 6.2191652367767556E175

    cmp-long v8, v5, v8

    if-nez v8, :cond_19b

    const/16 v3, 0x56

    if-lt v7, v3, :cond_184

    .line 75
    const-string v3, "9b91ca1afdd49c375eb972e119e5eeed"

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->key:[B

    .line 76
    array-length v3, v3

    if-ne v3, v1, :cond_17e

    .line 80
    new-array v3, v1, [B

    iput-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->rb:[B

    const/4 v3, 0x0

    move v4, v3

    :goto_67
    if-ge v4, v1, :cond_7d

    .line 82
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->rb:[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iget-object v8, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->key:[B

    aget-byte v8, v8, v4

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :catchall_7a
    move-exception p1

    goto/16 :goto_1b5

    .line 86
    :cond_7d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginId:I

    .line 87
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->revisionId:I

    .line 88
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->version:I

    .line 89
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->authorId:I

    .line 90
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastUpdate:J

    add-int/lit8 v7, v7, -0x44

    .line 93
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v4, v1, [B

    .line 94
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 95
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->author:Ljava/lang/String;

    const/4 v4, 0x4

    add-int/2addr v1, v4

    sub-int/2addr v7, v1

    const/4 v1, 0x3

    .line 98
    new-array v1, v1, [B

    .line 99
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 100
    new-instance v5, Lio/blueflower/stapel2d/drawing/Color;

    aget-byte v8, v1, v3

    add-int/lit16 v8, v8, 0x100

    rem-int/lit16 v8, v8, 0x100

    aget-byte v0, v1, v0

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    const/4 v9, 0x2

    aget-byte v1, v1, v9

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    invoke-direct {v5, v8, v0, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    add-int/lit8 v7, v7, -0x7

    .line 103
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    .line 104
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 105
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->title:Ljava/lang/String;

    add-int/2addr v0, v4

    sub-int/2addr v7, v0

    .line 108
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    .line 109
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 110
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->text:Ljava/lang/String;

    add-int/2addr v0, v4

    sub-int/2addr v7, v0

    const/16 v0, 0x8

    if-lt v7, v0, :cond_104

    .line 114
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->order:I

    add-int/lit8 v7, v7, -0x4

    :cond_104
    if-lt v7, v0, :cond_10e

    .line 119
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->mpfVersion:I

    add-int/lit8 v7, v7, -0x4

    :cond_10e
    if-lt v7, v0, :cond_117

    .line 125
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v7, v7, -0x4

    goto :goto_118

    :cond_117
    move v1, v3

    :goto_118
    if-lt v7, v0, :cond_120

    .line 131
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v7, v7, -0x4

    :cond_120
    :goto_120
    if-le v7, v4, :cond_12a

    add-int/lit8 v0, v7, -0x4

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    sub-int/2addr v7, v0

    goto :goto_120

    :cond_12a
    if-ltz v7, :cond_176

    .line 138
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_176

    .line 141
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->fileSize:J

    iget v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->headerSize:I

    iget v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->imgSize:I

    add-int/2addr v4, v5

    iget v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginSize:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_16e

    if-lez v3, :cond_149

    .line 146
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->readTranslations()Linfo/flowersoft/theotown/store/PluginFileTranslation;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginFileTranslation:Linfo/flowersoft/theotown/store/PluginFileTranslation;
    :try_end_149
    .catchall {:try_start_26 .. :try_end_149} :catchall_7a

    .line 148
    :cond_149
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 150
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    :try_start_156
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->hash:Ljava/lang/String;
    :try_end_160
    .catchall {:try_start_156 .. :try_end_160} :catchall_164

    .line 152
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_164
    move-exception p1

    .line 150
    :try_start_165
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_168
    .catchall {:try_start_165 .. :try_end_168} :catchall_169

    goto :goto_16d

    :catchall_169
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16d
    throw p1

    .line 142
    :cond_16e
    :try_start_16e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupted data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_176
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupted header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_17e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 72
    :cond_184
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported header size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_19b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid magic number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b5
    .catchall {:try_start_16e .. :try_end_1b5} :catchall_7a

    .line 58
    :goto_1b5
    :try_start_1b5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_1b9

    goto :goto_1bd

    :catchall_1b9
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1bd
    throw p1
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/store/ManagedPluginFile;)I
    .registers 1

    .line 22
    iget p0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginSize:I

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/store/ManagedPluginFile;)[B
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->key:[B

    return-object p0
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getAuthorId()I
    .registers 2

    .line 271
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->authorId:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 240
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->fileSize:J

    return-wide v0
.end method

.method public getFirstDownloaded()J
    .registers 3

    .line 160
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->firstDownloaded:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()[B
    .registers 3

    .line 342
    :try_start_0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->openImage()Ljava/io/BufferedInputStream;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    invoke-static {v0, v1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 345
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 346
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    .line 348
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUpdate()J
    .registers 3

    .line 275
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastUpdate:J

    return-wide v0
.end method

.method public getLastVersion()I
    .registers 2

    .line 279
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastVersion:I

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 156
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->order:I

    return v0
.end method

.method public getPluginId()I
    .registers 2

    .line 256
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginId:I

    return v0
.end method

.method public getRevisionId()I
    .registers 2

    .line 260
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->revisionId:I

    return v0
.end method

.method public final getStreamAt(I)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_7
    if-lez p1, :cond_11

    int-to-long v1, p1

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTitle()Ljava/lang/String;
    .registers 2

    .line 188
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->translatePlugins:Z

    if-eqz v0, :cond_b

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslations()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginFileTranslation:Linfo/flowersoft/theotown/store/PluginFileTranslation;

    if-eqz v0, :cond_9

    .line 308
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/PluginFileTranslation;->getApplyTranslations()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 264
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->version:I

    return v0
.end method

.method public hasTranslations()Z
    .registers 2

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginFileTranslation:Linfo/flowersoft/theotown/store/PluginFileTranslation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->active:Z

    return v0
.end method

.method public isLastActive()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastActive:Z

    return v0
.end method

.method public isPermanent()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->permanent:Z

    return v0
.end method

.method public isValid()Z
    .registers 5

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->fileSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public openImage()Ljava/io/BufferedInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/io/BufferedInputStream;

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->headerSize:I

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getStreamAt(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openPlugin()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->headerSize:I

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->imgSize:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getStreamAt(I)Ljava/io/InputStream;

    move-result-object v0

    .line 361
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->rb:[B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 362
    new-instance v2, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;

    invoke-direct {v2, p0, v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;Ljava/io/InputStream;[B)V

    return-object v2
.end method

.method public final readTranslations()Linfo/flowersoft/theotown/store/PluginFileTranslation;
    .registers 6

    .line 324
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->headerSize:I

    iget v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->imgSize:I

    add-int/2addr v3, v4

    iget v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginSize:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1b

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getStreamAt(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 326
    invoke-static {v1, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 327
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 328
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 329
    new-instance v0, Linfo/flowersoft/theotown/store/PluginFileTranslation;

    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/store/PluginFileTranslation;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setActive(Z)V
    .registers 2

    .line 212
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->active:Z

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->error:Ljava/lang/String;

    return-void
.end method

.method public setFirstDownloaded(J)V
    .registers 3

    .line 164
    iput-wide p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->firstDownloaded:J

    return-void
.end method

.method public setLastActive(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastActive:Z

    return-void
.end method

.method public setLastVersion(I)V
    .registers 2

    .line 283
    iput p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->lastVersion:I

    return-void
.end method

.method public setPermanent(Z)V
    .registers 2

    .line 220
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->permanent:Z

    return-void
.end method

.method public translateInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;->pluginFileTranslation:Linfo/flowersoft/theotown/store/PluginFileTranslation;

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/PluginFileTranslation;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginFile.AnonymousClass1 (info.flowersoft.theotown.store.ManagedPluginFile$1)
.class public Linfo/flowersoft/theotown/store/ManagedPluginFile$1;
.super Ljava/io/BufferedInputStream;
.source "ManagedPluginFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginFile;->openPlugin()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public pos:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

.field public final synthetic val$rb:[B


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;Ljava/io/InputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->val$rb:[B

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 363
    iput p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    return-void
.end method


# virtual methods
.method public markSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->access$000(Linfo/flowersoft/theotown/store/ManagedPluginFile;)I

    move-result v1

    if-ge v0, v1, :cond_12

    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    goto :goto_13

    :catchall_10
    move-exception v0

    goto :goto_34

    :cond_12
    const/4 v0, -0x1

    :goto_13
    if-ltz v0, :cond_32

    .line 368
    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    and-int/lit8 v1, v1, 0xf

    .line 369
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->val$rb:[B

    aget-byte v3, v2, v1

    xor-int/2addr v0, v3

    .line 370
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->access$100(Linfo/flowersoft/theotown/store/ManagedPluginFile;)[B

    move-result-object v4

    iget v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    and-int/lit8 v6, v5, 0xf

    aget-byte v4, v4, v6

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v5, v5, 0x1

    .line 371
    iput v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_10

    .line 373
    :cond_32
    monitor-exit p0

    return v0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_10

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->access$000(Linfo/flowersoft/theotown/store/ManagedPluginFile;)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 379
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p3

    add-int v0, p2, p3

    :goto_14
    if-ge p2, v0, :cond_3f

    .line 382
    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    and-int/lit8 v1, v1, 0xf

    .line 383
    aget-byte v2, p1, p2

    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->val$rb:[B

    aget-byte v4, v3, v1

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 384
    aget-byte v2, v3, v1

    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->access$100(Linfo/flowersoft/theotown/store/ManagedPluginFile;)[B

    move-result-object v4

    iget v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I

    and-int/lit8 v6, v5, 0xf

    aget-byte v4, v4, v6

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v5, v5, 0x1

    .line 385
    iput v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginFile$1;->pos:I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3d

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :catchall_3d
    move-exception p1

    goto :goto_41

    .line 387
    :cond_3f
    monitor-exit p0

    return p3

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3d

    throw p1
.end method
