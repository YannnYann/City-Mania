###### Class io.bidmachine.media3.exoplayer.trackselection.MappingTrackSelector (io.bidmachine.media3.exoplayer.trackselection.MappingTrackSelector)
.class public abstract Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;
.super Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field public currentMappedTrackInfo:Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method public static findRenderer([Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/common/TrackGroup;[IZ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 504
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    .line 507
    :goto_6
    array-length v6, p0

    if-ge v3, v6, :cond_3b

    .line 508
    aget-object v6, p0, v3

    move v7, v1

    move v8, v7

    .line 510
    :goto_d
    iget v9, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v7, v9, :cond_24

    .line 514
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v9

    invoke-interface {v6, v9}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->supportsFormat(Lio/bidmachine/media3/common/Format;)I

    move-result v9

    .line 513
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v9

    .line 515
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 517
    :cond_24
    aget v6, p2, v3

    if-nez v6, :cond_2a

    move v6, v2

    goto :goto_2b

    :cond_2a
    move v6, v1

    :goto_2b
    if-gt v8, v4, :cond_35

    if-ne v8, v4, :cond_38

    if-eqz p3, :cond_38

    if-nez v5, :cond_38

    if-eqz v6, :cond_38

    :cond_35
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3b
    return v0
.end method

.method public static getFormatSupport(Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/common/TrackGroup;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 542
    iget v0, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 543
    :goto_5
    iget v2, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_16

    .line 544
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->supportsFormat(Lio/bidmachine/media3/common/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-object v0
.end method

.method public static getMixedMimeTypeAdaptationSupports([Lio/bidmachine/media3/exoplayer/RendererCapabilities;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 560
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 562
    aget-object v3, p0, v2

    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final onSelectionActivated(Ljava/lang/Object;)V
    .registers 2

    .line 348
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public abstract selectTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lio/bidmachine/media3/exoplayer/RendererConfiguration;",
            "[",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 361
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 362
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v4, v3, [[Lio/bidmachine/media3/common/TrackGroup;

    .line 363
    array-length v5, p1

    add-int/2addr v5, v2

    new-array v11, v5, [[[I

    const/4 v5, 0x0

    move v6, v5

    :goto_f
    if-ge v6, v3, :cond_1e

    .line 365
    iget v7, p2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v8, v7, [Lio/bidmachine/media3/common/TrackGroup;

    aput-object v8, v4, v6

    .line 366
    new-array v7, v7, [[I

    aput-object v7, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 372
    :cond_1e
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Lio/bidmachine/media3/exoplayer/RendererCapabilities;)[I

    move-result-object v9

    move v3, v5

    .line 376
    :goto_23
    iget v6, p2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v6, :cond_55

    .line 377
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v6

    .line 379
    iget v7, v6, Lio/bidmachine/media3/common/TrackGroup;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_32

    move v7, v2

    goto :goto_33

    :cond_32
    move v7, v5

    .line 381
    :goto_33
    invoke-static {p1, v6, v1, v7}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;->findRenderer([Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/common/TrackGroup;[IZ)I

    move-result v7

    .line 386
    array-length v8, p1

    if-ne v7, v8, :cond_3f

    .line 387
    iget v8, v6, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v8, v8, [I

    goto :goto_45

    .line 388
    :cond_3f
    aget-object v8, p1, v7

    invoke-static {v8, v6}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;->getFormatSupport(Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/common/TrackGroup;)[I

    move-result-object v8

    .line 390
    :goto_45
    aget v10, v1, v7

    .line 391
    aget-object v12, v4, v7

    aput-object v6, v12, v10

    .line 392
    aget-object v6, v11, v7

    aput-object v8, v6, v10

    add-int/2addr v10, v2

    .line 393
    aput v10, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 397
    :cond_55
    array-length v0, p1

    new-array v0, v0, [Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 398
    array-length v2, p1

    new-array v7, v2, [Ljava/lang/String;

    .line 399
    array-length v2, p1

    new-array v8, v2, [I

    .line 400
    :goto_5e
    array-length v2, p1

    if-ge v5, v2, :cond_8f

    .line 401
    aget v2, v1, v5

    .line 402
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    aget-object v6, v4, v5

    .line 404
    invoke-static {v6, v2}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v3, v6}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    aput-object v3, v0, v5

    .line 405
    aget-object v3, v11, v5

    .line 406
    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    aput-object v2, v11, v5

    .line 407
    aget-object v2, p1, v5

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    .line 408
    aget-object v2, p1, v5

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v2

    aput v2, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 412
    :cond_8f
    array-length v2, p1

    aget v1, v1, v2

    .line 413
    new-instance v12, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    array-length p1, p1

    aget-object p1, v4, p1

    .line 415
    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v12, p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    .line 419
    new-instance v6, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v10, v9

    move-object v9, v0

    invoke-direct/range {v6 .. v12}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[I[[[ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)V

    move-object v7, v6

    move-object v9, v10

    move-object v8, v11

    move-object v6, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 429
    invoke-virtual/range {v6 .. v11}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;->selectTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object p1

    move-object v6, v7

    .line 436
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;

    invoke-static {v6, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;)Lio/bidmachine/media3/common/Tracks;

    move-result-object v0

    .line 438
    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v1, v2, p1, v0, v6}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/Tracks;Ljava/lang/Object;)V

    return-object v1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.MappingTrackSelector.MappedTrackInfo (io.bidmachine.media3.exoplayer.trackselection.MappingTrackSelector$MappedTrackInfo)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# instance fields
.field public final rendererCount:I

.field public final rendererFormatSupports:[[[I

.field public final rendererMixedMimeTypeAdaptiveSupports:[I

.field public final rendererNames:[Ljava/lang/String;

.field public final rendererTrackGroups:[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final rendererTrackTypes:[I

.field public final unmappedTrackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[I[[[ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)V
    .registers 7

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererNames:[Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 136
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 137
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 138
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 139
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 140
    array-length p1, p2

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .registers 10

    .line 275
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/TrackGroup;->length:I

    .line 277
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v2, v0, :cond_24

    .line 280
    invoke-virtual {p0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1c

    if-eqz p3, :cond_21

    const/4 v5, 0x3

    if-ne v4, v5, :cond_21

    :cond_1c
    add-int/lit8 v4, v3, 0x1

    .line 284
    aput v2, v1, v3

    move v3, v4

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 287
    :cond_24
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result p1

    return p1
.end method

.method public getAdaptiveSupport(II[I)I
    .registers 11

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move v1, v0

    move v2, v1

    .line 306
    :goto_8
    array-length v5, p3

    if-ge v0, v5, :cond_3c

    .line 307
    aget v5, p3, v0

    .line 309
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    aget-object v6, v6, p1

    .line 310
    invoke-virtual {v6, p2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    if-nez v2, :cond_21

    move-object v4, v5

    goto :goto_28

    .line 314
    :cond_21
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 316
    :goto_28
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget v2, v2, v0

    .line 319
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getAdaptiveSupport(I)I

    move-result v2

    .line 317
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    goto :goto_8

    :cond_3c
    if-eqz v1, :cond_47

    .line 323
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    aget p1, p2, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_47
    return v3
.end method

.method public getCapabilities(III)I
    .registers 5

    .line 240
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    return p1
.end method

.method public getRendererCount()I
    .registers 2

    .line 145
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return v0
.end method

.method public getRendererType(I)I
    .registers 3

    .line 167
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 3

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTrackSupport(III)I
    .registers 4

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getCapabilities(III)I

    move-result p1

    .line 252
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result p1

    return p1
.end method

.method public getUnmappedTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 329
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method
