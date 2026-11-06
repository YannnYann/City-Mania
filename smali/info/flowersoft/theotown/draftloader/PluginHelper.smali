###### Class info.flowersoft.theotown.draftloader.PluginHelper (info.flowersoft.theotown.draftloader.PluginHelper)
.class public final Linfo/flowersoft/theotown/draftloader/PluginHelper;
.super Ljava/lang/Object;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;,
        Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;,
        Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static EXTERNAL_PLUGIN_DATA:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

.field public static FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public static MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

.field public static PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public static PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public static PLUGIN_ID:I

.field public static PRIVATE:Z

.field public static USE_PREFETCH:Z

.field public static final addedBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final areas:Linfo/flowersoft/theotown/draftloader/FrameList;

.field public static final cache:Linfo/flowersoft/theotown/draftloader/FrameList;

.field public static cacheIndex:I

.field public static cacheMissHandler:Ljava/lang/Runnable;

.field public static currentAreaId:I

.field public static error:Ljava/lang/String;

.field public static errorFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public static errorParentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public static errorSrc:Ljava/lang/String;

.field public static filledPixels:I

.field public static final imageSizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final loadedSounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

.field public static nextAreaId:I

.field public static final occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

.field public static outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

.field public static final pluginsWithoutManifest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static targetHeight:I

.field public static targetWidth:I

.field public static targetX:I

.field public static targetY:I

.field public static textureId:I


# direct methods
.method public static synthetic $r8$lambda$ATasJ17FYYKoD1cFqdsdyPb1000()Z
    .registers 2

    .line 401
    new-instance v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException;-><init>(Linfo/flowersoft/theotown/draftloader/PluginHelper$1;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$NsTc9JB1XvS9UFZeY4XAObTjdno(Ljava/util/List;Ljava/util/List;III)V
    .registers 11

    .line 364
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ge p3, p4, :cond_42

    .line 366
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v0, :cond_3f

    .line 367
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    .line 369
    :try_start_16
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getImageSize(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_3f

    const/4 v2, 0x0

    .line 371
    aget v3, v1, v2

    sget v4, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->MAX_SIZE:I

    if-gt v3, v4, :cond_3f

    const/4 v3, 0x1

    aget v5, v1, v3

    if-gt v5, v4, :cond_3f

    .line 372
    new-instance v4, Linfo/flowersoft/theotown/draftloader/PluginImageFile;

    invoke-direct {v4}, Linfo/flowersoft/theotown/draftloader/PluginImageFile;-><init>()V

    .line 373
    iput-object v0, v4, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 374
    aget v0, v1, v2

    iput v0, v4, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->w:I

    .line 375
    aget v0, v1, v3

    iput v0, v4, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->h:I

    .line 376
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3f
    :goto_3f
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 385
    :cond_42
    monitor-enter p1

    .line 386
    :try_start_43
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    monitor-exit p1

    return-void

    :catchall_48
    move-exception p0

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public static synthetic $r8$lambda$ZoS0NDZI4yuLhFbMAuzAgIrCZ-s([I)V
    .registers 3

    const/4 v0, 0x0

    .line 404
    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$aD07j_Jf5jy0HYLMAW8w3sZ0g5s()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$n8cuivQzDI3ZwxTbjmPhf1Dt9Gs()V
    .registers 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->pluginsWithoutManifest:Ljava/util/List;

    const/4 v0, 0x0

    .line 106
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    .line 107
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    .line 108
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    .line 109
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    .line 110
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FrameList;-><init>()V

    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    .line 111
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FrameList;-><init>()V

    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    .line 112
    new-instance v1, Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FrameList;-><init>()V

    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    .line 113
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 116
    new-instance v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    .line 120
    new-instance v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/draftloader/OccupationTester;-><init>(I)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->imageSizeCache:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadedSounds:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2

    .line 53
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getBinaryBitmap(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0
.end method

.method public static addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;
    .registers 16

    .line 479
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    if-eqz v0, :cond_26d

    .line 481
    invoke-static {p1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->isBinary(Ljava/lang/String;)Z

    move-result v0

    .line 482
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v1, :cond_1b

    if-nez v0, :cond_1b

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 483
    :cond_16
    invoke-static {p1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, p0

    :goto_1c
    if-eqz v0, :cond_35

    if-nez p2, :cond_35

    .line 487
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    if-eqz v1, :cond_35

    return-object v1

    .line 496
    :cond_35
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getImageSize(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_24b

    .line 500
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 501
    sget v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    sget v6, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    sget v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    :cond_4f
    const/4 v3, 0x0

    .line 504
    aget v6, v1, v3

    const/4 v4, 0x1

    .line 505
    aget v7, v1, v4

    if-nez p2, :cond_59

    move v1, v4

    goto :goto_5a

    :cond_59
    move v1, v3

    .line 509
    :goto_5a
    sget v5, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->MAX_SIZE:I

    .line 510
    const-string v8, "x"

    if-gt v6, v5, :cond_213

    if-gt v7, v5, :cond_213

    const/4 v5, 0x2

    const/4 v9, -0x1

    if-eqz v1, :cond_101

    .line 514
    sget-object v10, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_101

    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    add-int/2addr v11, v4

    invoke-virtual {v10}, Linfo/flowersoft/theotown/draftloader/FrameList;->size()I

    move-result v12

    if-ge v11, v12, :cond_101

    .line 515
    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result v11

    if-ne v11, v9, :cond_ce

    .line 516
    sget-object v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    invoke-interface {v11}, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;->handle()Z

    move-result v11

    if-eqz v11, :cond_ca

    .line 517
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    if-ne v0, v1, :cond_b6

    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 518
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    if-ne v0, v1, :cond_b6

    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 519
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    if-ne v0, v1, :cond_b6

    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 520
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    if-eq v0, v1, :cond_b0

    goto :goto_b6

    .line 523
    :cond_b0
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    add-int/2addr v0, v4

    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    goto :goto_b9

    .line 521
    :cond_b6
    :goto_b6
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 525
    :goto_b9
    sget v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    sget v6, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    sget v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    .line 526
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    move-result-object p0

    return-object p0

    .line 528
    :cond_ca
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    goto :goto_101

    .line 531
    :cond_ce
    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result v11

    if-ne v11, v6, :cond_101

    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result v11

    if-ne v11, v7, :cond_101

    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result v11

    sget v12, Linfo/flowersoft/theotown/draftloader/PluginHelper;->currentAreaId:I

    if-ne v11, v12, :cond_101

    .line 532
    new-array p2, v5, [I

    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result v11

    aput v11, p2, v3

    sget v11, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result v10

    aput v10, p2, v4

    .line 533
    sget v10, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    add-int/2addr v10, v4

    sput v10, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    move v10, v4

    goto :goto_102

    :cond_101
    :goto_101
    move v10, v3

    :goto_102
    if-eqz p2, :cond_10c

    .line 544
    aget v5, p2, v3

    .line 545
    aget p2, p2, v4

    move v4, v5

    :goto_109
    move v5, p2

    goto/16 :goto_18b

    .line 547
    :cond_10c
    new-array p2, v5, [I

    .line 548
    invoke-static {v6, v7, p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->findPlace(II[I)Z

    move-result v5

    .line 549
    aget v11, p2, v3

    .line 550
    aget p2, p2, v4

    if-eqz v5, :cond_188

    .line 553
    sget-boolean p2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->USE_PREFETCH:Z

    const-string v0, " of size "

    if-eqz p2, :cond_160

    .line 554
    sget-object p2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    invoke-interface {p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;->handle()Z

    move-result p2

    if-eqz p2, :cond_138

    .line 555
    sget v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    sget v6, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    sget v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    const/4 p2, 0x0

    .line 556
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    move-result-object p0

    return-object p0

    .line 558
    :cond_138
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oops, we couldn\'t fit "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " into the world texture. You probably have too many plugins activated. Please delete or deactivate some of them."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_160
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot fit bmp "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " into world texture. Please report this error code to a developer: 0x42"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_188
    move v4, v11

    goto/16 :goto_109

    .line 570
    :goto_18b
    sget p2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->textureId:I

    .line 571
    sget v8, Linfo/flowersoft/theotown/draftloader/PluginHelper;->currentAreaId:I

    if-eqz v1, :cond_1e3

    .line 574
    sget v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    add-int v9, v4, v3

    .line 575
    sget v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    add-int v11, v5, v3

    .line 576
    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v3, v4, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->addOccupiedSpace(IIII)V

    .line 577
    sget v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->currentAreaId:I

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    .line 578
    sget v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->filledPixels:I

    mul-int v3, v6, v7

    add-int/2addr v2, v3

    sput v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->filledPixels:I

    .line 579
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1dc

    if-nez v10, :cond_1dc

    .line 580
    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 581
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 582
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache miss for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1cf

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1d0

    :cond_1cf
    move-object p0, p1

    :goto_1d0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "PluginHelper"

    invoke-interface {v2, v3, p0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dc
    move v10, v8

    move v5, v9

    move v9, p2

    move v8, v7

    move v7, v6

    move v6, v11

    goto :goto_1e9

    :cond_1e3
    move v8, v7

    move v10, v9

    move v9, v3

    move v7, v6

    move v6, v5

    move v5, v4

    .line 589
    :goto_1e9
    sget-object p0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0, v9}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object p0

    .line 590
    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureSource(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;

    move-result-object p1

    .line 592
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Texture;->getSource()Lio/blueflower/stapel2d/drawing/TextureSource;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    .line 593
    invoke-virtual {p0, p1, v5, v6}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;II)V

    .line 594
    new-instance v4, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;-><init>(IIIIII)V

    if-eqz v0, :cond_212

    .line 599
    sget-object p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_212
    return-object v4

    .line 511
    :cond_213
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin image "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has a size of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is too big. Maximum allowed size is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". You may want to split up the image into smaller ones."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 604
    :cond_24b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "May not find image `"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_25d

    .line 605
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_25d
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`.\nTry reinstalling the plugin, or disable it using the menu if the issue continues."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_26d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not texture target set up"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addTextureArea(IIIII)V
    .registers 12

    .line 128
    sput p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->textureId:I

    .line 129
    sput p1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    .line 130
    sput p2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    .line 131
    sput p3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    .line 132
    sput p4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    .line 133
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->setup(II)V

    const/4 v0, 0x0

    .line 134
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->filledPixels:I

    .line 135
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    .line 136
    sget p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->nextAreaId:I

    sput p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->currentAreaId:I

    add-int/lit8 p0, p0, 0x1

    .line 137
    sput p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->nextAreaId:I

    .line 138
    sget-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Use now texture area %d, %d, %d, %d"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginHelper"

    invoke-interface {p0, p2, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static afterLoading()V
    .registers 1

    .line 753
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->clearAndRelease()V

    .line 754
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->clearAndRelease()V

    .line 755
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->imageSizeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 756
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->clearAndRelease()V

    return-void
.end method

.method public static clearFrames()V
    .registers 1

    .line 640
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 641
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->clearAndRelease()V

    return-void
.end method

.method public static countTextureAreas()I
    .registers 1

    .line 142
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->size()I

    move-result v0

    return v0
.end method

.method public static dispose()V
    .registers 3

    const/4 v0, 0x0

    .line 760
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->textureId:I

    .line 761
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->nextAreaId:I

    const/4 v1, 0x0

    .line 762
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 763
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    .line 764
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 765
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 766
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 767
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->EXTERNAL_PLUGIN_DATA:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    .line 768
    sput-boolean v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    .line 769
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->filledPixels:I

    .line 770
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    .line 771
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorSrc:Ljava/lang/String;

    .line 772
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 773
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorParentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 774
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->pluginsWithoutManifest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 775
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    .line 776
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    .line 777
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    .line 778
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    .line 779
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 780
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 781
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 782
    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 783
    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 784
    new-instance v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    .line 785
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 786
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->clearAndRelease()V

    .line 787
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->imageSizeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 788
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadedSounds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static errorOccured()Z
    .registers 1

    .line 715
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static findPlace(II[I)Z
    .registers 9

    const/4 v0, 0x0

    .line 466
    aput v0, p2, v0

    const/4 v1, 0x1

    .line 467
    aput v0, p2, v1

    const v2, 0x7fffffff

    .line 468
    filled-new-array {v2}, [I

    move-result-object v2

    .line 470
    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v3, p2, p0, p1, v2}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->prepareQuery([III[I)V

    move v3, v1

    :goto_13
    if-eqz v3, :cond_2a

    .line 471
    aget v4, p2, v0

    add-int/2addr v4, p0

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    if-gt v4, v5, :cond_2a

    aget v4, p2, v1

    add-int/2addr v4, p1

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    if-gt v4, v5, :cond_2a

    .line 472
    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->occupation:Linfo/flowersoft/theotown/draftloader/OccupationTester;

    invoke-virtual {v3, p2, p0, p1, v2}, Linfo/flowersoft/theotown/draftloader/OccupationTester;->query([III[I)Z

    move-result v3

    goto :goto_13

    :cond_2a
    return v3
.end method

.method public static getAddedBitmaps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    return-object v0
.end method

.method public static getBinaryBitmap(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 5

    .line 273
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 274
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    if-eqz p1, :cond_10

    .line 276
    invoke-static {v0}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    :cond_10
    return-object v0
.end method

.method public static getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 719
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorParentFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 1

    .line 727
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorParentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public static getErrorSource()Ljava/lang/String;
    .registers 1

    .line 723
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorSrc:Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorSourceId()Ljava/lang/String;
    .registers 2

    .line 731
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v0, :cond_23

    .line 732
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFillRatio(I)F
    .registers 6

    .line 645
    invoke-static {p0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetWidth(I)I

    move-result v0

    invoke-static {p0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetHeight(I)I

    move-result v1

    mul-int/2addr v0, v1

    .line 648
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addedBitmaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    .line 650
    iget v4, v3, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->areaId:I

    if-ne v4, p0, :cond_14

    .line 651
    iget v4, v3, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->w:I

    iget v3, v3, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->h:I

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_14

    :cond_31
    const/high16 p0, 0x42c80000    # 100.0f

    int-to-float v1, v2

    mul-float/2addr v1, p0

    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static getImageSize(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;)[I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_75

    .line 282
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 283
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 285
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->imageSizeCache:Ljava/util/Map;

    monitor-enter v1

    .line 286
    :try_start_16
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 287
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_72

    if-eqz v2, :cond_20

    return-object v2

    .line 293
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->readBytes()[B

    move-result-object v2

    .line 294
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    array-length v4, v2

    invoke-direct {v3, v2, v0, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    .line 295
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    .line 296
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    .line 297
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 299
    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 300
    monitor-enter v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_42

    .line 301
    :try_start_3a
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v1

    return-object v0

    :catchall_3f
    move-exception p1

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    :try_start_41
    throw p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception p1

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load image `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "`.\nThe image may be damaged or unsupported. Try reinstalling the plugin, or disable it using the menu if the issue continues.\n\nFile size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes\nDetails: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_72
    move-exception p0

    .line 287
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    .line 311
    :cond_75
    invoke-static {p1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->isBinary(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8f

    .line 312
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getBinaryBitmap(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    .line 314
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    .line 315
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 316
    filled-new-array {p1, v0}, [I

    move-result-object p0

    return-object p0

    :cond_8f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMusicPath(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 1

    .line 248
    invoke-static {p0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    return-object p0
.end method

.method public static getPluginsWithoutManifest()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 748
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->pluginsWithoutManifest:Ljava/util/List;

    return-object v0
.end method

.method public static getTargetHeight(I)I
    .registers 2

    .line 205
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result p0

    return p0
.end method

.method public static getTargetWidth(I)I
    .registers 2

    .line 201
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result p0

    return p0
.end method

.method public static getTargetX(I)I
    .registers 2

    .line 193
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result p0

    return p0
.end method

.method public static getTargetY(I)I
    .registers 2

    .line 197
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result p0

    return p0
.end method

.method public static getTextureId(I)I
    .registers 2

    .line 189
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->areas:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result p0

    return p0
.end method

.method public static getTextureSource(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
    .registers 4

    if-eqz p0, :cond_e

    .line 322
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    new-instance p1, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;-><init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Z)V

    return-object p1

    .line 340
    :cond_e
    new-instance p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;

    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static hasPluginsWithoutManifest()Z
    .registers 1

    .line 744
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->pluginsWithoutManifest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isBinary(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3e

    .line 262
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_22

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_22

    .line 263
    :cond_1b
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1e} :catch_20

    const/4 p0, 0x1

    return p0

    :catch_20
    move-exception v1

    goto :goto_23

    :cond_22
    :goto_22
    return v0

    .line 266
    :goto_23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PluginHelper"

    invoke-interface {v1, v2, p0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return v0
.end method

.method public static isPlugin()Z
    .registers 1

    .line 209
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static loadCache()V
    .registers 7

    .line 146
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    const/4 v1, 0x0

    .line 147
    sput v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 149
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "plugin_placement_cache"

    invoke-static {v2}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v1

    .line 150
    const-string v2, "cache"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 153
    :try_start_23
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, "version"

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    const-string v3, "placements"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5b

    if-eqz v2, :cond_5b

    .line 158
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/draftloader/FrameList;->load(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 160
    sget v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    sget v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    sget v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    sget v6, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/FrameList;->matches(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 161
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    return-void

    .line 163
    :cond_53
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V
    :try_end_56
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_23 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5b
    return-void
.end method

.method public static loadSound(Ljava/lang/String;)I
    .registers 4

    .line 219
    invoke-static {p0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 223
    :cond_8
    instance-of v1, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v1, :cond_1d

    .line 224
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    check-cast p0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    goto :goto_37

    .line 226
    :cond_1d
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 228
    :try_start_2f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->write(Ljava/io/InputStream;Z)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_36

    :catch_36
    move-object p0, v1

    .line 234
    :goto_37
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadedSounds:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_46

    .line 235
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 239
    :cond_46
    :try_start_46
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v2

    invoke-virtual {v2, p0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadSound(Lcom/badlogic/gdx/files/FileHandle;)I

    move-result v0

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_55} :catch_55

    :catch_55
    return v0
.end method

.method public static preloadImages(Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Linfo/flowersoft/theotown/util/ProgressSetter;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 355
    sget-boolean v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->USE_PREFETCH:Z

    if-nez v1, :cond_8

    goto/16 :goto_138

    .line 356
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 358
    new-instance v3, Ljava/util/HashSet;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-static {}, Linfo/flowersoft/theotown/util/Parallel;->autoThreadCount()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4, v3}, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v5, v6, v7}, Linfo/flowersoft/theotown/util/Parallel;->computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z

    .line 390
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 392
    sget-object v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 393
    sget-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    .line 396
    :try_start_34
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    .line 398
    new-array v8, v7, [I

    .line 400
    new-instance v9, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda3;-><init>()V

    sput-object v9, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 403
    new-instance v9, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda4;

    invoke-direct {v9, v8}, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda4;-><init>([I)V

    sput-object v9, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_49} :catch_79
    .catchall {:try_start_34 .. :try_end_49} :catchall_76

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_4d
    if-ge v10, v6, :cond_100

    const/4 v13, -0x1

    if-lt v11, v13, :cond_100

    :goto_52
    const/4 v14, 0x0

    if-ge v10, v6, :cond_7c

    .line 412
    :try_start_55
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/draftloader/PluginImageFile;

    .line 413
    iget-object v15, v15, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    :try_end_5d
    .catch Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException; {:try_start_55 .. :try_end_5d} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_79
    .catchall {:try_start_55 .. :try_end_5d} :catchall_76

    move/from16 p0, v7

    :try_start_5f
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7, v14}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    add-int/lit8 v12, v12, 0x1

    .line 414
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0, v12, v7}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V
    :try_end_6f
    .catch Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException; {:try_start_5f .. :try_end_6f} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6f} :catch_79
    .catchall {:try_start_5f .. :try_end_6f} :catchall_76

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p0

    goto :goto_52

    :catchall_76
    move-exception v0

    goto/16 :goto_139

    :catch_79
    move-exception v0

    goto/16 :goto_131

    :catch_7c
    :cond_7c
    move/from16 p0, v7

    :catch_7e
    :goto_7e
    add-int/lit8 v7, v6, -0x1

    if-ge v10, v7, :cond_fc

    .line 423
    :try_start_82
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draftloader/PluginImageFile;

    .line 424
    iget-object v7, v7, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15, v14}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    add-int/lit8 v12, v12, 0x1

    .line 425
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0, v12, v7}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V
    :try_end_9a
    .catch Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException; {:try_start_82 .. :try_end_9a} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9a} :catch_79
    .catchall {:try_start_82 .. :try_end_9a} :catchall_76

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    .line 430
    :catch_9f
    :try_start_9f
    invoke-interface {v4}, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;->handle()Z

    move-result v7

    if-eqz v7, :cond_100

    .line 431
    sget-object v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e8

    .line 432
    sget v14, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    invoke-virtual {v7, v14}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result v14

    if-ne v14, v13, :cond_e5

    sget v13, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 433
    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result v13

    sget v14, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    if-ne v13, v14, :cond_e5

    sget v13, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 434
    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result v13

    sget v14, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    if-ne v13, v14, :cond_e5

    sget v13, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 435
    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result v13

    sget v14, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    if-ne v13, v14, :cond_e5

    sget v13, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    .line 436
    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result v13

    sget v14, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    if-eq v13, v14, :cond_de

    goto :goto_e5

    .line 439
    :cond_de
    sget v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheIndex:I

    goto :goto_e8

    .line 437
    :cond_e5
    :goto_e5
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    .line 442
    :cond_e8
    :goto_e8
    sget-object v13, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    sget v15, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetX:I

    sget v16, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetY:I

    sget v17, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetWidth:I

    sget v18, Linfo/flowersoft/theotown/draftloader/PluginHelper;->targetHeight:I

    const/4 v14, -0x1

    invoke-virtual/range {v13 .. v18}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    add-int/lit8 v11, v11, -0x1

    .line 443
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_fc
    move/from16 v7, p0

    goto/16 :goto_4d

    .line 450
    :cond_100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "PluginHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished preloading in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v8, v9

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cache miss(es) occurred"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_12c} :catch_79
    .catchall {:try_start_9f .. :try_end_12c} :catchall_76

    .line 456
    :goto_12c
    sput-object v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 457
    sput-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    goto :goto_138

    .line 453
    :goto_131
    :try_start_131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 454
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->clearFrames()V
    :try_end_137
    .catchall {:try_start_131 .. :try_end_137} :catchall_76

    goto :goto_12c

    :goto_138
    return-void

    .line 456
    :goto_139
    sput-object v4, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 457
    sput-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->cacheMissHandler:Ljava/lang/Runnable;

    .line 458
    throw v0
.end method

.method public static reportError(Ljava/lang/Exception;Ljava/lang/String;)Z
    .registers 13

    .line 659
    sget-boolean v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorSrc:Ljava/lang/String;

    .line 660
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    sput-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 661
    sget-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    sput-object v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorParentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_156

    .line 670
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/error.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 672
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 673
    const-string v3, "at character ([0-9]+) of"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 674
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_11c

    if-eqz p1, :cond_11c

    .line 676
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v4, v1

    move v5, v2

    move v6, v5

    :goto_54
    add-int/lit8 v7, p0, -0x1

    const/16 v8, 0xa

    if-ge v4, v7, :cond_72

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_72

    .line 680
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_6a

    add-int/lit8 v6, v6, 0x1

    move v5, v2

    goto :goto_6c

    :cond_6a
    add-int/lit8 v5, v5, 0x1

    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :catch_6f
    move-exception p0

    goto/16 :goto_152

    :cond_72
    move p0, v7

    :goto_73
    if-lez p0, :cond_86

    add-int/lit8 v4, p0, -0x1

    .line 689
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_86

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_86

    add-int/lit8 p0, p0, -0x1

    goto :goto_73

    :cond_86
    :goto_86
    add-int/lit8 p0, p0, -0x1

    if-lez p0, :cond_99

    add-int/lit8 v4, p0, -0x1

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_99

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_99

    goto :goto_86

    :cond_99
    move v4, v7

    :goto_9a
    if-ltz v4, :cond_ac

    add-int/lit8 v9, v4, 0x1

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ac

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_ac

    move v4, v9

    goto :goto_9a

    .line 695
    :cond_ac
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p1, p0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--ERROR->>>"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at line "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", char "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Excerpt: \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\nFull source:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 700
    :cond_11c
    sget-object p1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 701
    sget-boolean v1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    if-eqz v1, :cond_124

    sget-object p1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorParentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 702
    :cond_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    .line 703
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 704
    sget-object p1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->error:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_151} :catch_6f

    goto :goto_155

    .line 707
    :goto_152
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_155
    return v2

    :cond_156
    return v1
.end method

.method public static reportPluginWithoutManifest(Ljava/lang/String;)V
    .registers 2

    .line 740
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->pluginsWithoutManifest:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 3

    .line 252
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 253
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    return-object v0

    .line 254
    :cond_10
    :goto_10
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    return-object p0
.end method

.method public static saveCache()V
    .registers 4

    .line 173
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "plugin_placement_cache"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 176
    :try_start_c
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 177
    const-string v2, "version"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 178
    const-string v2, "placements"

    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->newCache:Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draftloader/FrameList;->save()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 180
    const-string v2, "cache"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    :try_end_2b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_c .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    :goto_30
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper.AnonymousClass1 (info.flowersoft.theotown.draftloader.PluginHelper$1)
.class public Linfo/flowersoft/theotown/draftloader/PluginHelper$1;
.super Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureSource(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$async:Z

.field public final synthetic val$file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Z)V
    .registers 3

    .line 323
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;->val$file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;->val$async:Z

    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 327
    :try_start_0
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;->val$file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPAPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAsync()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$1;->val$async:Z

    return v0
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper.AnonymousClass2 (info.flowersoft.theotown.draftloader.PluginHelper$2)
.class public Linfo/flowersoft/theotown/draftloader/PluginHelper$2;
.super Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureSource(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;Z)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$async:Z

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 340
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;->val$async:Z

    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 343
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;->val$name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->access$000(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    return-object p1
.end method

.method public isAsync()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$2;->val$async:Z

    return v0
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper.OutOfSpaceException (info.flowersoft.theotown.draftloader.PluginHelper$OutOfSpaceException)
.class public Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException;
.super Ljava/lang/RuntimeException;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/PluginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfSpaceException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 791
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/draftloader/PluginHelper$1;)V
    .registers 2

    .line 791
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceException;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper.OutOfSpaceHandler (info.flowersoft.theotown.draftloader.PluginHelper$OutOfSpaceHandler)
.class public interface abstract Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;
.super Ljava/lang/Object;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/PluginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutOfSpaceHandler"
.end annotation


# virtual methods
.method public abstract handle()Z
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper.Parcel (info.flowersoft.theotown.draftloader.PluginHelper$Parcel)
.class public Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;
.super Ljava/lang/Object;
.source "PluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/PluginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parcel"
.end annotation


# instance fields
.field public final areaId:I

.field public final h:I

.field public final textureId:I

.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->x:I

    .line 807
    iput p2, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->y:I

    .line 808
    iput p3, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->w:I

    .line 809
    iput p4, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->h:I

    .line 810
    iput p5, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->textureId:I

    .line 811
    iput p6, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->areaId:I

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->$r8$lambda$n8cuivQzDI3ZwxTbjmPhf1Dt9Gs()V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda1 (info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->$r8$lambda$aD07j_Jf5jy0HYLMAW8w3sZ0g5s()V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda2 (info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final work(III)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->$r8$lambda$NsTc9JB1XvS9UFZeY4XAObTjdno(Ljava/util/List;Ljava/util/List;III)V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda3 (info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->$r8$lambda$ATasJ17FYYKoD1cFqdsdyPb1000()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda4 (info.flowersoft.theotown.draftloader.PluginHelper$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda4;->f$0:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/PluginHelper$$ExternalSyntheticLambda4;->f$0:[I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->$r8$lambda$ZoS0NDZI4yuLhFbMAuzAgIrCZ-s([I)V

    return-void
.end method
