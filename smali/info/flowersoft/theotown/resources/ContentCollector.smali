###### Class info.flowersoft.theotown.resources.ContentCollector (info.flowersoft.theotown.resources.ContentCollector)
.class public final Linfo/flowersoft/theotown/resources/ContentCollector;
.super Ljava/lang/Object;
.source "ContentCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;
    }
.end annotation


# static fields
.field public static final IMAGE_PATTERN:Ljava/util/regex/Pattern;

.field public static final fileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field public static tempPluginsDir:Ljava/io/File;

.field public static final uuid:Ljava/lang/String;


# instance fields
.field public externalPluginImporter:Linfo/flowersoft/theotown/util/ExternalPluginImporter;

.field public pluginCount:I


# direct methods
.method public static synthetic $r8$lambda$9sN4ovSRyFKZTVAExaLKOa7b5Io(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 12

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    .line 154
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 153
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/resources/ContentCollector;->addManagedPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    .line 155
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ManagedPluginCount"

    invoke-interface {p0, p3, p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BotQdpEZkdYky92pzptk7CITFFM(Linfo/flowersoft/theotown/store/ManagedPluginFile;)Ljava/util/zip/ZipInputStream;
    .registers 2

    .line 636
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->openPlugin()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$DO18w2vvF-ujKM7X5jV3BnWGvg4(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)[B
    .registers 1

    .line 401
    :try_start_0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->readBytes()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cifllGi66bGvTuBe9VB3_dTJeKY(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)I
    .registers 3

    .line 93
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e7pjHo0gxyExj0G-wOG3-nE2Mjo(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;[IILinfo/flowersoft/theotown/util/ProgressSetter;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    :goto_3
    monitor-enter p1

    const/4 v0, 0x0

    .line 587
    :try_start_5
    aget v1, p2, v0

    if-lt v1, p3, :cond_d

    .line 588
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p0

    goto :goto_39

    .line 589
    :cond_d
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 590
    invoke-interface {p4, v1, p3}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    .line 591
    aget v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v0

    .line 592
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_b

    .line 595
    :try_start_1d
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, p7}, Linfo/flowersoft/theotown/resources/ContentCollector;->loadManagedPluginFile(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/store/ManagedPluginFile;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_2d

    goto :goto_3

    :catch_2d
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setError(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 592
    :goto_39
    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_b

    throw p0
.end method

.method public static synthetic $r8$lambda$fYtHwwBvLafW2Eb9nQ1R-iP8VjQ(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 558
    :cond_4
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getOrder()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getOrder()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 559
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getOrder()I

    move-result p1

    :goto_16
    sub-int/2addr p0, p1

    return p0

    .line 561
    :cond_18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p1

    goto :goto_16
.end method

.method public static synthetic $r8$lambda$qNaFgItfiDbp6KulLA0NkI_MnKo(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/util/zip/ZipInputStream;
    .registers 2

    .line 874
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-static {p0}, Linfo/flowersoft/theotown/resources/ContentCollector;->acquireStream(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$zx_nXzCjVIP33rtNzZubh6KmsJ8(Linfo/flowersoft/theotown/store/ManagedPluginFile;)[B
    .registers 1

    .line 664
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getImageData()[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 87
    const-string v0, "\"bmp\"\\s*:\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->IMAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->fileComparator:Ljava/util/Comparator;

    .line 763
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->uuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/io/File;)V
    .registers 1

    .line 72
    invoke-static {p0}, Linfo/flowersoft/theotown/resources/ContentCollector;->deleteDir(Ljava/io/File;)V

    return-void
.end method

.method public static acquireStream(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".plugin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pcap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1e

    .line 813
    :cond_19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 801
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 802
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 803
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-nez v0, :cond_3c

    .line 806
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 808
    :cond_3c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p0

    .line 809
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_46
    if-lez v0, :cond_50

    int-to-long v0, v0

    .line 810
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_46

    .line 811
    :cond_50
    new-instance v0, Linfo/flowersoft/theotown/util/DecInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/util/DecInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static addCategory(Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 682
    :try_start_6
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    const-string v4, "ct"

    invoke-virtual {v0, v4, v1, v2}, Linfo/flowersoft/theotown/resources/ManagedCache;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_111

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_22

    .line 690
    :try_start_12
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v8, v0

    invoke-direct {v7, v0, v5, v8, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    move-exception v0

    .line 692
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_22
    const/4 v6, 0x0

    :goto_23
    const/16 v11, 0x80

    if-nez v6, :cond_9e

    .line 697
    invoke-interface/range {p0 .. p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 698
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v7, v0

    invoke-direct {v6, v0, v5, v7, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    invoke-direct {v13, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V

    .line 699
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    .line 700
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    .line 701
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v0, v11

    .line 702
    div-int/2addr v0, v6

    mul-int/2addr v4, v11

    .line 703
    div-int/2addr v4, v6

    .line 704
    new-instance v12, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-direct {v12, v0, v4, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 705
    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 706
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 707
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 709
    new-instance v4, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    mul-int v0, v20, v21

    int-to-float v0, v0

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_7a} :catch_111

    .line 711
    :try_start_7a
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    const/4 v0, -0x1

    .line 712
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 713
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 714
    invoke-virtual {v4, v0, v12}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 715
    sget-object v6, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    const-string v7, "ct"

    .line 716
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 715
    invoke-virtual {v6, v7, v1, v2, v0}, Linfo/flowersoft/theotown/resources/ManagedCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_99

    .line 718
    :try_start_94
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    move-object v8, v12

    goto :goto_9f

    :catchall_99
    move-exception v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    .line 719
    throw v0

    :cond_9e
    move-object v8, v6

    .line 722
    :goto_9f
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    invoke-direct {v7, v11, v11, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 723
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 725
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v9, v0, 0x2

    .line 726
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v10, v0, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v11

    move v15, v11

    move/from16 v16, v11

    .line 724
    invoke-virtual/range {v7 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 729
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 731
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    monitor-enter v1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ca} :catch_111

    .line 732
    :try_start_ca
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->getSelectedTexture()I

    move-result v0

    .line 733
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    new-instance v4, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v6, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    invoke-direct {v6, v7, v5}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {v4, v6}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Image;->addTexture(Lio/blueflower/stapel2d/drawing/Texture;)I

    move-result v2

    .line 734
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 735
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v11

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    .line 736
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 737
    new-instance v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/CategoryDraft;-><init>()V

    .line 738
    iput-object v3, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    move-object/from16 v4, p4

    .line 739
    iput-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    move-object/from16 v4, p5

    .line 740
    iput-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    .line 741
    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 742
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    monitor-exit v1

    goto :goto_117

    :catchall_10e
    move-exception v0

    monitor-exit v1
    :try_end_110
    .catchall {:try_start_ca .. :try_end_110} :catchall_10e

    :try_start_110
    throw v0
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_111} :catch_111

    :catch_111
    move-exception v0

    .line 745
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    :goto_117
    return-void
.end method

.method public static addContents(Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const-string v0, "content_scripts.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v0, "content_template.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v0, "content_achievements.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v0, "content_topics.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v0, "content_helpful_topics.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v0, "content_biome.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v0, "content_budget.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v0, "content_category.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v0, "content_tool.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v0, "content_feature.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v0, "content_pressure.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v0, "content_influence.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v0, "content_rank.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v0, "content_zone.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v0, "content_fence.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v0, "content_weather.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v0, "content_smoke.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v0, "content_animation.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v0, "content_icon.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v0, "content_buildingicon.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v0, "content_light.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v0, "content_construction.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v0, "content_ts_core.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v0, "content_car.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "content_buses.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v0, "content_ship.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v0, "content_train.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v0, "content_elevatedrailway.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v0, "content_metro.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v0, "content_monorail.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v0, "content_helicopter.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v0, "content_airplane.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v0, "content_pedestrian.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v0, "content_ground.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v0, "content_tree.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v0, "content_energy.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v0, "content_water.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "content_road_decoration.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v0, "content_road.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v0, "content_intersections.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v0, "content_residential.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v0, "content_commercial.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v0, "content_industrial.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v0, "content_farm.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v0, "content_harbor.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v0, "content_generic_pier.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v0, "content_park.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v0, "content_sport.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v0, "content_public.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v0, "content_religion.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v0, "content_award.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v0, "content_landmark.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v0, "content_firebrigade.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v0, "content_police.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v0, "content_medic.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v0, "content_education.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v0, "content_destruction.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v0, "content_busbuildings.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v0, "content_decoration.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v0, "content_wintertime.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v0, "content_firework.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v0, "content_terrain.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v0, "content_disaster.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const-string v0, "content_railway.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v0, "content_body_disposal.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v0, "content_waste_disposal.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v0, "content_terrain_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v0, "content_residential_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "content_commercial_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "content_industrial_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v0, "content_award_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v0, "content_park_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v0, "content_religion_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v0, "content_sport_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v0, "content_public_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v0, "content_decoration_premium.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v0, "content_military.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v0, "content_airport.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v0, "content_biome_impl.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v0, "content_notification.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v0, "content_task.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_1a3

    const-string v0, "content_test.lby"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a3
    const/4 v0, 0x0

    .line 297
    :goto_1a4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1bf

    .line 298
    new-instance v1, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/ContentCollector;->getResContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/resources/JsonContentData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    :cond_1bf
    return-void
.end method

.method public static addGenerated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;)V"
        }
    .end annotation

    .line 308
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v1, "generated_patches.lby"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/ContentCollector;->getResContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/Generator;->getInstance()Linfo/flowersoft/theotown/draftloader/Generator;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/draftloader/Generator;->addLightDefinitions(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    :try_end_12
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_12} :catch_33

    .line 313
    new-instance v0, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/Generator;->getInstance()Linfo/flowersoft/theotown/draftloader/Generator;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draftloader/Generator;->generateResidentialContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/JsonContentData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/Generator;->getInstance()Linfo/flowersoft/theotown/draftloader/Generator;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draftloader/Generator;->generateCommercialContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/JsonContentData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_33
    move-exception p0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deleteDir(Ljava/io/File;)V
    .registers 7

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 184
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_46

    aget-object v3, v0, v2

    .line 185
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 186
    invoke-static {v3}, Linfo/flowersoft/theotown/resources/ContentCollector;->deleteDir(Ljava/io/File;)V

    goto :goto_43

    .line 187
    :cond_3a
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 192
    :cond_46
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_49
    return-void
.end method

.method public static extractContentFiles(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;)V"
        }
    .end annotation

    .line 750
    const-string v0, "\"place "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "\"place x\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "\"place y\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3a

    .line 753
    :cond_19
    sget-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->IMAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 754
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    .line 755
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 758
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static extractZip(Ljava/util/zip/ZipInputStream;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_4e

    .line 926
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 927
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 928
    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "/.."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_4e

    .line 931
    :cond_39
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    .line 932
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_44

    goto :goto_0

    .line 936
    :cond_44
    invoke-virtual {p1, v0, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->setModificationTime(J)V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4c

    goto :goto_0

    :catchall_4c
    move-exception p1

    goto :goto_52

    .line 976
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :goto_52
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 977
    throw p1
.end method

.method public static extractZipDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 778
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 779
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    const-string v4, ""

    const-string v5, "Extract"

    if-ge v2, v3, :cond_56

    move v3, v1

    .line 780
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    if-ge v3, v6, :cond_53

    mul-int/lit8 v6, v2, 0xa

    .line 781
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    move v7, v1

    .line 783
    :goto_27
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v8

    if-ge v7, v8, :cond_39

    .line 784
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    rem-int v8, v6, v8

    if-nez v8, :cond_36

    goto :goto_50

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 790
    :cond_39
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 791
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 795
    :cond_56
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extracted"

    invoke-interface {p0, v5, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static filterZipFiles(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 508
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 509
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 510
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 511
    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 512
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 514
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->countChildren()I

    move-result v3

    if-lez v3, :cond_58

    .line 515
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" because folder of same name was found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ContentCollector"

    invoke-interface {v3, v4, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5b
    return-void
.end method

.method public static getPatchStrings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const-string v1, "patches.lby"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/ContentCollector;->getResContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getResContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 303
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTempPluginsDir()Ljava/io/File;
    .registers 3

    .line 766
    sget-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->tempPluginsDir:Ljava/io/File;

    if-nez v0, :cond_2f

    .line 767
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_22

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v0, :cond_22

    .line 768
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    new-instance v1, Ljava/io/File;

    sget-object v2, Linfo/flowersoft/theotown/resources/ContentCollector;->uuid:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/resources/ContentCollector;->tempPluginsDir:Ljava/io/File;

    goto :goto_2f

    .line 771
    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPrivateTheoTownDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->tempPluginsDir:Ljava/io/File;

    .line 774
    :cond_2f
    :goto_2f
    sget-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->tempPluginsDir:Ljava/io/File;

    return-object v0
.end method

.method public static prepareInternalPluginDir()V
    .registers 3

    .line 168
    invoke-static {}, Linfo/flowersoft/theotown/resources/ContentCollector;->getTempPluginsDir()Ljava/io/File;

    move-result-object v0

    .line 169
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->deleteDir(Ljava/io/File;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/resources/ContentCollector$1;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/resources/ContentCollector$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static readPluginLines(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/lang/String;
    .registers 5

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->length()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 984
    :try_start_f
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 987
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    const/16 v2, 0xa0

    const/16 v3, 0x20

    .line 988
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Linfo/flowersoft/theotown/resources/ContentCollector;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3f

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_3d
    move-exception p0

    goto :goto_47

    .line 990
    :cond_3f
    :goto_3f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 992
    :cond_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_46} :catch_3d

    goto :goto_4a

    .line 994
    :goto_47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 997
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeComments(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1002
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 1003
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x22

    if-ne v3, v4, :cond_16

    goto :goto_2b

    :cond_16
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_32

    if-lez v1, :cond_32

    add-int/lit8 v3, v1, -0x1

    .line 1010
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_32

    if-nez v2, :cond_32

    .line 1011
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    if-nez v2, :cond_2f

    move v2, v3

    goto :goto_32

    :cond_2f
    if-ne v2, v3, :cond_32

    move v2, v0

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_35
    return-object p0
.end method


# virtual methods
.method public final addManagedPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Linfo/flowersoft/theotown/util/ProgressSetter;",
            ")V"
        }
    .end annotation

    .line 538
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_ee

    .line 540
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 542
    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;->getActive()Z

    move-result v0

    const/4 v10, 0x0

    move v1, v10

    .line 543
    :goto_15
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    move-object/from16 v2, p3

    .line 544
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 545
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 546
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v5

    if-nez v5, :cond_3c

    if-nez v0, :cond_38

    goto :goto_3c

    .line 550
    :cond_38
    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastActive(Z)V

    goto :goto_3f

    .line 547
    :cond_3c
    :goto_3c
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 555
    :cond_42
    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 565
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v6, p5

    .line 566
    invoke-interface {v6, v10, v5}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    .line 568
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v11

    .line 569
    new-array v12, v11, [Ljava/lang/Thread;

    .line 570
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    filled-new-array {v10}, [I

    move-result-object v4

    move v0, v10

    :goto_6c
    if-ge v0, v5, :cond_81

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_81
    move v0, v10

    :goto_82
    if-ge v0, v11, :cond_9b

    .line 581
    new-instance v13, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;[IILinfo/flowersoft/theotown/util/ProgressSetter;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct {v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v13, v12, v0

    .line 602
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p5

    goto :goto_82

    :cond_9b
    move v1, v10

    :goto_9c
    if-ge v1, v11, :cond_ab

    .line 607
    :try_start_9e
    aget-object v0, v12, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_9e .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_ab
    move v0, v10

    :goto_ac
    if-ge v0, v5, :cond_c5

    .line 614
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 618
    :cond_c5
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->LOADED_PLUGINS:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 619
    :goto_ca
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v10, p1, :cond_ee

    .line 620
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 621
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOADED_PLUGINS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOADED_PLUGINS_BY_ID:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastVersion(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_ca

    :cond_ee
    :goto_ee
    return-void
.end method

.method public final addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            "ZZI)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    .line 342
    const-string v3, ""

    if-eqz v9, :cond_310

    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->countChildren()I

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_310

    .line 344
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->listFiles()[Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v5

    .line 349
    array-length v6, v5

    const/4 v11, 0x0

    move v7, v11

    :goto_25
    if-ge v7, v6, :cond_59

    aget-object v8, v5, v7

    .line 350
    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v12

    .line 351
    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/resources/ContentCollector;->ignoreName(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_56

    .line 352
    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4d

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4d

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    .line 353
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 354
    :cond_4d
    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v12

    if-eqz v12, :cond_56

    .line 355
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 360
    :cond_59
    invoke-static {v9, v4}, Linfo/flowersoft/theotown/resources/ContentCollector;->filterZipFiles(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/util/List;)V

    .line 363
    const-string v5, "plugin.manifest"

    invoke-virtual {v9, v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v5

    const/4 v12, 0x1

    if-eqz v5, :cond_15e

    .line 364
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v6

    if-eqz v6, :cond_15e

    if-eqz p6, :cond_15e

    if-ltz p7, :cond_15e

    .line 365
    invoke-static {v5}, Linfo/flowersoft/theotown/resources/ContentCollector;->readPluginLines(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_81

    .line 368
    :try_start_75
    new-instance v6, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-direct {v6, v5}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :catch_7e
    move-exception v0

    goto/16 :goto_155

    .line 370
    :cond_81
    :goto_81
    new-instance v6, Linfo/flowersoft/theotown/resources/CurrentDirContentData;

    invoke-direct {v6, v9}, Linfo/flowersoft/theotown/resources/CurrentDirContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v6, Linfo/flowersoft/theotown/resources/CurrentFileContentData;

    invoke-direct {v6, v5}, Linfo/flowersoft/theotown/resources/CurrentFileContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_96

    .line 372
    sget-object v5, Linfo/flowersoft/theotown/resources/PrivateMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PrivateMarker;

    goto :goto_98

    :cond_96
    sget-object v5, Linfo/flowersoft/theotown/resources/PublicMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PublicMarker;

    :goto_98
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v5, Linfo/flowersoft/theotown/util/json/JSONTokener;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    .line 377
    instance-of v6, v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v6, :cond_ab

    .line 378
    check-cast v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_b5

    .line 379
    :cond_ab
    instance-of v6, v5, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v6, :cond_13e

    .line 380
    check-cast v5, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 385
    :goto_b5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 386
    new-instance v0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;

    invoke-direct {v0, v5}, Linfo/flowersoft/theotown/resources/BeginManifestContentData;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "id"

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v6, "version"

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 392
    const-string v7, "title"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 393
    const-string v7, "text"

    invoke-virtual {v5, v7, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 394
    const-string v7, "thumbnail"

    invoke-virtual {v5, v7, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    const-string v7, "category"

    invoke-virtual {v5, v7, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 396
    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v3

    if-eqz v3, :cond_138

    .line 397
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v7

    if-eqz v7, :cond_138

    if-eqz v5, :cond_138

    .line 398
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->length()I

    move-result v5

    if-lez v5, :cond_138

    .line 399
    new-instance v13, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda3;

    invoke-direct {v13, v3}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 407
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getModificationTime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$lpf_cat_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 399
    invoke-static/range {v13 .. v18}, Linfo/flowersoft/theotown/resources/ContentCollector;->addCategory(Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    :goto_138
    move v0, v12

    goto :goto_13b

    :cond_13a
    move v0, v11

    :goto_13b
    move v13, v0

    goto/16 :goto_1ad

    .line 382
    :cond_13e
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected json object but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_155
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_75 .. :try_end_155} :catch_7e

    .line 414
    :goto_155
    new-instance v3, Linfo/flowersoft/theotown/resources/ErrorContentData;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/resources/ErrorContentData;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15e
    if-eqz p6, :cond_1ac

    if-eqz v0, :cond_1ac

    .line 419
    :try_start_162
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hashing;->sha(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v3

    .line 420
    sget-object v5, Linfo/flowersoft/theotown/ManifestIndex;->INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/ManifestIndex;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_13a

    if-nez p5, :cond_183

    .line 424
    new-instance v5, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :catch_181
    move-exception v0

    goto :goto_1a6

    .line 426
    :cond_183
    :goto_183
    new-instance v5, Linfo/flowersoft/theotown/resources/CurrentDirContentData;

    invoke-direct {v5, v9}, Linfo/flowersoft/theotown/resources/CurrentDirContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v5, Linfo/flowersoft/theotown/resources/CurrentFileContentData;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/resources/CurrentFileContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_198

    .line 428
    sget-object v0, Linfo/flowersoft/theotown/resources/PrivateMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PrivateMarker;

    goto :goto_19a

    :cond_198
    sget-object v0, Linfo/flowersoft/theotown/resources/PublicMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PublicMarker;

    :goto_19a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;

    invoke-direct {v0, v3}, Linfo/flowersoft/theotown/resources/BeginManifestContentData;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_1a5} :catch_181

    goto :goto_138

    .line 433
    :goto_1a6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1ac
    move v13, v11

    .line 437
    :goto_1ad
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d5

    .line 438
    sget-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->fileComparator:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1bc
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 441
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    if-nez p5, :cond_1e4

    .line 443
    new-instance v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-direct {v0, v5}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget v0, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    add-int/2addr v0, v12

    iput v0, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    .line 446
    :cond_1e4
    new-instance v0, Linfo/flowersoft/theotown/resources/CurrentDirContentData;

    invoke-direct {v0, v9}, Linfo/flowersoft/theotown/resources/CurrentDirContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Linfo/flowersoft/theotown/resources/CurrentFileContentData;

    invoke-direct {v0, v5}, Linfo/flowersoft/theotown/resources/CurrentFileContentData;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_1f9

    .line 448
    sget-object v0, Linfo/flowersoft/theotown/resources/PrivateMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PrivateMarker;

    goto :goto_1fb

    :cond_1f9
    sget-object v0, Linfo/flowersoft/theotown/resources/PublicMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PublicMarker;

    :goto_1fb
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {v5}, Linfo/flowersoft/theotown/resources/ContentCollector;->readPluginLines(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    .line 451
    invoke-static {v0, v9, v3}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractContentFiles(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/util/List;)V

    .line 452
    new-instance v4, Linfo/flowersoft/theotown/resources/JsonContentData;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/resources/JsonContentData;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2cf

    :cond_211
    move-object/from16 v3, p2

    .line 455
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".zip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".plugin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".pcap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23c

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->PCAP_SUPPORTED:Z

    if-eqz v0, :cond_23c

    goto :goto_2a6

    .line 471
    :cond_23c
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".ttplugin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    if-nez p5, :cond_295

    if-eqz p6, :cond_275

    if-nez v13, :cond_275

    .line 480
    :try_start_24e
    new-instance v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-direct {v0, v5}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 481
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget v4, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    add-int/2addr v4, v12

    iput v4, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    .line 483
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v4, v12}, Linfo/flowersoft/theotown/resources/ContentCollector;->getTempPluginTarget(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v4

    .line 484
    invoke-virtual {v1, v5, v4}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractExternalPluginFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    move-result-object v5

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/resources/RootPluginFile;->setExternalPluginData(Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;)V

    add-int/lit8 v8, p7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 485
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/resources/ContentCollector;->addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V

    goto :goto_2cf

    :catch_273
    move-exception v0

    goto :goto_29d

    .line 477
    :cond_275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due parent or sibling manifest file. Ensure that the file is not placed in another plugin."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load .ttplugin files from within other plugins"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_29d} :catch_273

    .line 487
    :goto_29d
    new-instance v3, Linfo/flowersoft/theotown/resources/ErrorContentData;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/resources/ErrorContentData;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2cf

    :cond_2a6
    :goto_2a6
    if-nez p5, :cond_2b5

    .line 457
    new-instance v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-direct {v0, v5}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget v0, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    add-int/2addr v0, v12

    iput v0, v1, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    .line 461
    :cond_2b5
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0, v11}, Linfo/flowersoft/theotown/resources/ContentCollector;->getTempPluginTarget(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v4

    .line 462
    invoke-virtual {v1, v5, v4}, Linfo/flowersoft/theotown/resources/ContentCollector;->defaultFileHandler(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    if-eqz p6, :cond_2c6

    if-nez v13, :cond_2c6

    move v7, v12

    goto :goto_2c7

    :cond_2c6
    move v7, v11

    :goto_2c7
    add-int/lit8 v8, p7, 0x1

    const/4 v6, 0x1

    move-object/from16 v3, p2

    .line 463
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/resources/ContentCollector;->addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V

    :cond_2cf
    :goto_2cf
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1bc

    .line 494
    :cond_2d5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_307

    .line 495
    sget-object v0, Linfo/flowersoft/theotown/resources/ContentCollector;->fileComparator:Ljava/util/Comparator;

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_307

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz p6, :cond_2f7

    if-nez v13, :cond_2f7

    move v7, v12

    goto :goto_2f8

    :cond_2f7
    move v7, v11

    :goto_2f8
    add-int/lit8 v8, p7, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    .line 498
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/resources/ContentCollector;->addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V

    goto :goto_2e4

    :cond_307
    move-object/from16 v2, p1

    if-eqz v13, :cond_310

    .line 503
    sget-object v0, Linfo/flowersoft/theotown/resources/EndManifestContentData;->INSTANCE:Linfo/flowersoft/theotown/resources/EndManifestContentData;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_310
    :goto_310
    return-void
.end method

.method public collect(Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Linfo/flowersoft/theotown/util/ProgressSetter;",
            ")V"
        }
    .end annotation

    .line 126
    const-string v8, "Collector content strings"

    invoke-static {v8}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 128
    const-string v1, "Collector prepare plugin dir"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Linfo/flowersoft/theotown/resources/ContentCollector;->prepareInternalPluginDir()V

    .line 130
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 132
    const-string v1, "Collector native contents"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 133
    invoke-static {p1, p3}, Linfo/flowersoft/theotown/resources/ContentCollector;->addContents(Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 134
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 136
    const-string v1, "Collector generated"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ContentCollector;->addGenerated(Ljava/util/List;)V

    .line 138
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 140
    const-string v1, "Parsing plugin dir"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "plugins"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/util/vfs/RealFile;->parse(Ljava/io/File;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v3

    .line 142
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 144
    const-string v9, "Collector plugins"

    invoke-static {v9}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 146
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/resources/ContentCollector;->addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V

    .line 147
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PluginCount"

    invoke-interface {v1, v4, v2, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v9}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 150
    const-string v6, "Collector managed plugins"

    invoke-static {v6}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v7

    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->duringUpdates(Ljava/lang/Runnable;)V

    .line 157
    invoke-static {v6}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 159
    invoke-static {v8}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 161
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    const-string v1, "ct"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ManagedCache;->removeUnusedOfType(Ljava/lang/String;)V

    .line 162
    sget-object v0, Linfo/flowersoft/theotown/ManifestIndex;->INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ManifestIndex;->unload()V

    .line 164
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->loadedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->loadedSize:J

    sget-wide v4, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->volatileSize:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentCollector"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public defaultFileHandler(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 6

    .line 872
    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 878
    :try_start_5
    invoke-interface {v0}, Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;->get()Ljava/util/zip/ZipInputStream;

    move-result-object v1

    .line 879
    invoke-static {v1, p2, v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractZip(Ljava/util/zip/ZipInputStream;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p2

    .line 881
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 882
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final extractExternalPluginFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;
    .registers 8

    .line 845
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ContentCollector;->getPluginImporter()Linfo/flowersoft/theotown/util/ExternalPluginImporter;

    move-result-object v0

    const/4 v1, 0x0

    .line 849
    :try_start_5
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->readBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/ExternalPluginImporter;->load([B)Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_2e
    .catchall {:try_start_5 .. :try_end_d} :catchall_2b

    .line 851
    :try_start_d
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 852
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->getContent()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 855
    invoke-static {v2, p2, v1}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractZip(Ljava/util/zip/ZipInputStream;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_29
    .catchall {:try_start_d .. :try_end_23} :catchall_27

    .line 861
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->setContent([B)V

    return-object v0

    :catchall_27
    move-exception p1

    goto :goto_53

    :catch_29
    move-exception p2

    goto :goto_30

    :catchall_2b
    move-exception p1

    move-object v0, v1

    goto :goto_53

    :catch_2e
    move-exception p2

    move-object v0, v1

    .line 857
    :goto_30
    :try_start_30
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 858
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_27

    if-eqz v0, :cond_52

    .line 861
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->setContent([B)V

    :cond_52
    return-object v0

    :goto_53
    if-eqz v0, :cond_58

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->setContent([B)V

    .line 863
    :cond_58
    throw p1
.end method

.method public final getPluginImporter()Linfo/flowersoft/theotown/util/ExternalPluginImporter;
    .registers 6

    .line 819
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->externalPluginImporter:Linfo/flowersoft/theotown/util/ExternalPluginImporter;

    if-eqz v0, :cond_5

    return-object v0

    .line 821
    :cond_5
    sget-object v0, Linfo/flowersoft/theotown/util/TempLua;->INSTANCE:Linfo/flowersoft/theotown/util/TempLua;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TempLua;->getGlobals()Lvm2/Globals;

    move-result-object v0

    .line 822
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "G0x1YVIBAAQEBAgBGZMNChoKAAAAAAAAAAAAAQ80AAAAJgCAAYYAQACHQEABxgBAAMeAwAEGwUAABwFBAkbBQABHQcECpQEAAMEBAAAAggEAQMIBAICCAQAgwgCAAQMAA0EDgAMegwABwQEABiGC/n8BAoACQQIAAoECAALBAgABAQMAAEADAgDegoABAQMAAUEDAACAQwIAHgOAAZ6CAADAggIAXoKAAYDCAgAegoABEAJDBA5CQwRAggEAgQIABMCCAQBgwgCAQQMAA4EDgANegwABwQGABmGC/n9BAoAAgQKAA10CAAFfAgAAHwCAAA4AAAAFBwAAAFcSWBhKDQAFBQAAAEYfXhQABQUAAABHDksDAAUGAAAARg9eQhYABQUAAABGHkUDAAUFAAAARgdEFQAEAAAAAAAA8D8EAAAAAAAAIEAEAAAAAAAAOUAEAAAAAAAAPEAEAAAAAADAXkAEAAAAAAAALkAEAAAAAAAAAEAEAAAAAAAAHEABAAAABwAAABoAAAABABn3AAAARgBAAEdAwACLAIAHxQCAAAUBAAFFAQABhQGAAcEBAAAAggAAnoGAAcUBgAEBAgAAQMIAAN4BgAFegQAAgAEBAB4BgAHegAAABQGAAEUBAAGFAQABxQGAAQECAABAQgEA3oGAAQUCgAFBAgAAgIIAAB4CgAGegQAAwIEBAF4BgAEegQAARQGAAIUBAAHFAQABBQKAAUECAACAwgEAHoKAAUUCgAGBAgAAwAICAF4CgAHegQAAAEICAJ4BgAFegQAAhQGAAMUBAAEFAgABRQKAAYECAADAggIAXoKAAYUCgAHBAgAAAMMBAJ4CgAEeggAAQMICAN4BgAGegQAAxQGAAAUCAAFFAgABhQKAAcECAAAAAwMAnoKAAcUCgAEBAwAAQEMDAN4CgAFeggAAgIIDAB4CgAHegQAABQKAAEUCAAGFAgABxQKAAQEDAABAwwAA3oKAAQUDgAFBAwAAgIMCAB4DgAGeggAAwMIDAF4CgAEeggAARQKAAIUCAAHFAgABBQOAAUEDAACAAwQAHoOAAUUDgAGBAwAAwAMDAF4DgAHeggAAAEMEAJ4CgAFeggAAhQKAAMUCAAEFAwABRQOAAYEDAADAgwQAXoOAAYUDgAHBAwAAAMQEAJ4DgAEegwAAQAMFAN4CgAGeggAAxQKAAAUDAAFFAwABhQOAAcEDAAAARAUAnoOAAcUDgAEBBAAAQIQFAN4DgAFegwAAgMMFAB4DgAHeggAABQOAAEUDAAGFAwABxQOAAQEEAABARAMA3oOAAQUEgAFBBAAAgAQGAB4EgAGegwAAwEMGAF4DgAEegwAARQOAAIUDAAHFAwABBQSAAUEEAACAhAYAHoSAAUUEgAGBBAAAwAQEAF4EgAHegwAAAMQGAJ4DgAFegwAAhQOAAMUDAAEFBAABRQSAAYEEAADABAcAXoSAAYUEgAHBBAAAAEUBAJ4EgAEehAAAQEQHAN4DgAGegwAAxQOAAAUEAAFFBAABhQSAAcEEAAAAxQQAnoSAAcUEgAEBBQAAQAUHAN4EgAFehAAAgIQHAB4EgAHegwAABQSAAEUEAAGFBAABxQSAAQEFAABABQIA3oSAAQUFgAFBBQAAgIUEAB4FgAGehAAAwMQHAF4EgAEehAAARQSAAIUEAAHFBAABBQWAAUEFAACAhQUAHoWAAUUFgAGBBQAAwEUFAF4FgAHehAAAAAUIAJ4EgAFehAAAhQSAAMUEAAEFBQABRQWAAYEFAADABQYAXoWAAYUFgAHBBQAAAIYGAJ4FgAEehQAAQEUIAN4EgAGeBAAApEAAAF0AAAFfAAAAHwCAACIAAAAFBgAAAFAHSB1BAAUHAAAARwlEEkUeAAQAAAAAAAAwQAQAAAAAAAAsQAQAAAAAAEBvQAQAAAAAAAAQQAQAAAAAAIBMQAQAAAAAAAAUQAQAAAAAAAAuQAQAAAAAAMBnQAQAAAAAAAAiQAQAAAAAAABGQAQAAAAAAAAoQAQAAAAAAADwPwQAAAAAAIBOQAQAAAAAAOBrQAQAAAAAAAAcQAQAAAAAAABQQAQAAAAAAAAqQAQAAAAAAAAYQAQAAAAAAKBoQAQAAAAAAAAgQAQAAAAAAAAmQAQAAAAAAGBkQAQAAAAAAAAIQAQAAAAAAOBmQAQAAAAAAAAAQAQAAAAAAIBlQAQAAAAAAAAkQAQAAAAAAIBNQAQAAAAAAGBjQAQAAAAAAEBWQAQAAAAAAABMQAQAAAAAAABCQAAAAAAEAAAAAAABAwEEAQIAAAAAAAAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAA=="

    .line 823
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "."

    const-string v3, "b"

    .line 822
    invoke-virtual {v0, v1, v2, v3, v0}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    .line 827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    :try_start_27
    const-string v2, "plugin"

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "plugin sigs"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 830
    :goto_34
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 831
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_27 .. :try_end_45} :catch_65

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 837
    :cond_48
    new-instance v2, Linfo/flowersoft/theotown/util/ExternalPluginImporter;

    new-instance v3, Linfo/flowersoft/theotown/util/SignatureVerifier;

    sget-object v4, Linfo/flowersoft/theotown/util/SignatureVerifier;->Companion:Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;

    .line 838
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;->getDEFAULT_MAGIC_BYTES()[B

    move-result-object v4

    invoke-direct {v3, v1, v4}, Linfo/flowersoft/theotown/util/SignatureVerifier;-><init>(Ljava/util/List;[B)V

    new-instance v1, Linfo/flowersoft/theotown/util/PluginFileDecoder;

    new-instance v4, Linfo/flowersoft/theotown/util/LuaKeyImplementation;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/util/LuaKeyImplementation;-><init>(Lvm2/LuaFunction;)V

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/util/PluginFileDecoder;-><init>(Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;)V

    invoke-direct {v2, v3, v1}, Linfo/flowersoft/theotown/util/ExternalPluginImporter;-><init>(Linfo/flowersoft/theotown/util/SignatureVerifier;Linfo/flowersoft/theotown/util/PluginFileDecoder;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->externalPluginImporter:Linfo/flowersoft/theotown/util/ExternalPluginImporter;

    return-object v2

    .line 834
    :catch_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not read keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTempPluginTarget(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 5

    .line 524
    invoke-static {}, Linfo/flowersoft/theotown/resources/PCPS;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p3, :cond_9

    goto :goto_17

    .line 527
    :cond_9
    invoke-static {}, Linfo/flowersoft/theotown/resources/ContentCollector;->getTempPluginsDir()Ljava/io/File;

    move-result-object p3

    .line 528
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object p1

    return-object p1

    .line 525
    :cond_17
    :goto_17
    invoke-static {p2, p1}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    return-object p1
.end method

.method public final ignoreName(Ljava/lang/String;)Z
    .registers 5

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_19

    :cond_17
    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public final loadManagedPluginFile(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/store/ManagedPluginFile;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    .line 633
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object p4

    .line 634
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Linfo/flowersoft/theotown/resources/ContentCollector;->getTempPluginTarget(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v6

    .line 636
    :try_start_15
    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    .line 637
    invoke-interface {v0}, Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;->get()Ljava/util/zip/ZipInputStream;

    move-result-object v1

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 640
    invoke-static {v1, v6, v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractZip(Ljava/util/zip/ZipInputStream;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;)V

    .line 641
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ContentCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms to decrypt "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v0, Linfo/flowersoft/theotown/resources/RootPluginFile;

    invoke-static {p4, v2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createFile(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object p4

    invoke-direct {v0, p4}, Linfo/flowersoft/theotown/resources/RootPluginFile;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    iget p4, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Linfo/flowersoft/theotown/resources/ContentCollector;->pluginCount:I

    .line 645
    new-instance p4, Linfo/flowersoft/theotown/resources/PluginIdContentData;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v1

    invoke-direct {p4, v1}, Linfo/flowersoft/theotown/resources/PluginIdContentData;-><init>(I)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    .line 647
    invoke-virtual {p3, v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setError(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_73} :catch_142
    .catchall {:try_start_15 .. :try_end_73} :catchall_13e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 648
    :try_start_7a
    invoke-virtual/range {v3 .. v10}, Linfo/flowersoft/theotown/resources/ContentCollector;->addPlugins(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZI)V

    .line 650
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_81} :catch_c0
    .catchall {:try_start_7a .. :try_end_81} :catchall_bc

    const-string p2, ""

    if-ne p1, p4, :cond_c4

    .line 651
    :try_start_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "No content provided!"

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setError(Ljava/lang/String;)V

    .line 652
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string p4, "Managed Plugins"

    const-string v1, "No content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p4, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    :catchall_bc
    move-exception v0

    :goto_bd
    move-object p1, v0

    goto/16 :goto_15f

    :catch_c0
    move-exception v0

    :goto_c1
    move-object p1, v0

    goto/16 :goto_146

    .line 655
    :cond_c4
    :goto_c4
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result p1

    if-nez p1, :cond_134

    .line 656
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getText()Ljava/lang/String;

    move-result-object p4

    .line 659
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->translatePlugins:Z

    if-eqz v1, :cond_de

    .line 660
    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_de
    move-object v9, p1

    move-object v10, p4

    .line 664
    new-instance v5, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda7;

    invoke-direct {v5, p3}, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "$mpf_cat_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 664
    invoke-static/range {v5 .. v10}, Linfo/flowersoft/theotown/resources/ContentCollector;->addCategory(Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_134} :catch_c0
    .catchall {:try_start_85 .. :try_end_134} :catchall_bc

    .line 674
    :cond_134
    sget-object p1, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Companion:Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;->getEmpty()Linfo/flowersoft/theotown/resources/PluginIdContentData;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_13e
    move-exception v0

    move-object v4, p1

    goto/16 :goto_bd

    :catch_142
    move-exception v0

    move-object v4, p1

    goto/16 :goto_c1

    .line 670
    :goto_146
    :try_start_146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 671
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 672
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setError(Ljava/lang/String;)V
    :try_end_155
    .catchall {:try_start_146 .. :try_end_155} :catchall_bc

    .line 674
    sget-object p1, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Companion:Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;->getEmpty()Linfo/flowersoft/theotown/resources/PluginIdContentData;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :goto_15f
    sget-object p2, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Companion:Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;->getEmpty()Linfo/flowersoft/theotown/resources/PluginIdContentData;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    throw p1
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector.AnonymousClass1 (info.flowersoft.theotown.resources.ContentCollector$1)
.class public Linfo/flowersoft/theotown/resources/ContentCollector$1;
.super Ljava/lang/Thread;
.source "ContentCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ContentCollector;->prepareInternalPluginDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$1;->val$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$1;->val$dir:Ljava/io/File;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->access$000(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector.ZipDataSource (info.flowersoft.theotown.resources.ContentCollector$ZipDataSource)
.class public interface abstract Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;
.super Ljava/lang/Object;
.source "ContentCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ContentCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZipDataSource"
.end annotation


# virtual methods
.method public abstract get()Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    check-cast p2, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$cifllGi66bGvTuBe9VB3_dTJeKY(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda1 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$4:Linfo/flowersoft/theotown/util/ProgressSetter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p5, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/util/ProgressSetter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$3:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/util/ProgressSetter;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$9sN4ovSRyFKZTVAExaLKOa7b5Io(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda2 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/util/zip/ZipInputStream;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$qNaFgItfiDbp6KulLA0NkI_MnKo(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Ljava/util/zip/ZipInputStream;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda3 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$DO18w2vvF-ujKM7X5jV3BnWGvg4(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)[B

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda4 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    check-cast p2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$fYtHwwBvLafW2Eb9nQ1R-iP8VjQ(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda5 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:[I

.field public final synthetic f$3:I

.field public final synthetic f$4:Linfo/flowersoft/theotown/util/ProgressSetter;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;[IILinfo/flowersoft/theotown/util/ProgressSetter;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$2:[I

    iput p4, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$3:I

    iput-object p5, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$4:Linfo/flowersoft/theotown/util/ProgressSetter;

    iput-object p6, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    iput-object p7, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$6:Ljava/util/List;

    iput-object p8, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$7:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/resources/ContentCollector;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$2:[I

    iget v3, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$3:I

    iget-object v4, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$4:Linfo/flowersoft/theotown/util/ProgressSetter;

    iget-object v5, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    iget-object v6, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$6:Ljava/util/List;

    iget-object v7, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda5;->f$7:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static/range {v0 .. v7}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$e7pjHo0gxyExj0G-wOG3-nE2Mjo(Linfo/flowersoft/theotown/resources/ContentCollector;Ljava/util/List;[IILinfo/flowersoft/theotown/util/ProgressSetter;Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda6 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentCollector$ZipDataSource;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/util/zip/ZipInputStream;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$BotQdpEZkdYky92pzptk7CITFFM(Linfo/flowersoft/theotown/store/ManagedPluginFile;)Ljava/util/zip/ZipInputStream;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda7 (info.flowersoft.theotown.resources.ContentCollector$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ContentCollector$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;->$r8$lambda$zx_nXzCjVIP33rtNzZubh6KmsJ8(Linfo/flowersoft/theotown/store/ManagedPluginFile;)[B

    move-result-object v0

    return-object v0
.end method
