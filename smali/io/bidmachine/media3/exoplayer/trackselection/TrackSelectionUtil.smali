###### Class io.bidmachine.media3.exoplayer.trackselection.TrackSelectionUtil (io.bidmachine.media3.exoplayer.trackselection.TrackSelectionUtil)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# direct methods
.method public static buildTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;)Lio/bidmachine/media3/common/Tracks;
    .registers 5

    .line 146
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    .line 147
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 148
    aget-object v2, p1, v1

    if-eqz v2, :cond_10

    .line 149
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_14

    :cond_10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_14
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 151
    :cond_19
    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lio/bidmachine/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public static buildTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lio/bidmachine/media3/common/Tracks;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;",
            ">;)",
            "Lio/bidmachine/media3/common/Tracks;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 166
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 168
    :goto_9
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 170
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 171
    aget-object v5, p1, v3

    move v6, v2

    .line 172
    :goto_16
    iget v7, v4, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_6d

    .line 173
    invoke-virtual {v4, v6}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v7

    .line 175
    invoke-virtual {v0, v3, v6, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_27

    move v8, v9

    goto :goto_28

    :cond_27
    move v8, v2

    .line 178
    :goto_28
    iget v10, v7, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v11, v10, [I

    .line 179
    new-array v10, v10, [Z

    move v12, v2

    .line 180
    :goto_2f
    iget v13, v7, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_62

    .line 182
    invoke-virtual {v0, v3, v6, v12}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v13

    aput v13, v11, v12

    move v13, v2

    .line 184
    :goto_3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_5c

    .line 185
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;

    .line 186
    invoke-interface {v14}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v7}, Lio/bidmachine/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 187
    invoke-interface {v14, v12}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_59

    move v13, v9

    goto :goto_5d

    :cond_59
    add-int/lit8 v13, v13, 0x1

    goto :goto_3a

    :cond_5c
    move v13, v2

    .line 192
    :goto_5d
    aput-boolean v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 194
    :cond_62
    new-instance v9, Lio/bidmachine/media3/common/Tracks$Group;

    invoke-direct {v9, v7, v8, v11, v10}, Lio/bidmachine/media3/common/Tracks$Group;-><init>(Lio/bidmachine/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 197
    :cond_70
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    move v3, v2

    .line 198
    :goto_75
    iget v4, v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_93

    .line 199
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v4

    .line 200
    iget v5, v4, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    .line 201
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([II)V

    .line 202
    iget v6, v4, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v6, v6, [Z

    .line 203
    new-instance v7, Lio/bidmachine/media3/common/Tracks$Group;

    invoke-direct {v7, v4, v2, v5, v6}, Lio/bidmachine/media3/common/Tracks$Group;-><init>(Lio/bidmachine/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 206
    :cond_93
    new-instance v0, Lio/bidmachine/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createFallbackOptions(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .registers 8

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_b
    if-ge v4, v2, :cond_18

    .line 122
    invoke-interface {p0, v4, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v6

    if-eqz v6, :cond_15

    add-int/lit8 v5, v5, 0x1

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 126
    :cond_18
    new-instance p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v2, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object p0
.end method

.method public static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 8

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p3, p4, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    move v1, p0

    :goto_9
    if-le p1, p2, :cond_c

    move p0, v0

    :cond_c
    if-eq v1, p0, :cond_f

    goto :goto_12

    :cond_f
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_12
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_22

    .line 228
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 231
    :cond_22
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method
