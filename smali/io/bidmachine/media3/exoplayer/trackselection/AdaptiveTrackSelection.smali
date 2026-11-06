###### Class io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection (io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection)
.class public Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.super Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;,
        Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# instance fields
.field public final adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field public final bandwidthFraction:F

.field public final bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

.field public final bufferedFractionToLiveEdgeForQualityIncrease:F

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public lastBufferEvaluationMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

.field public lastBufferEvaluationMs:J

.field public latestBitrateEstimate:J

.field public final maxDurationForQualityDecreaseUs:J

.field public final maxHeightToDiscard:I

.field public final maxWidthToDiscard:I

.field public final minDurationForQualityIncreaseUs:J

.field public final minDurationToRetainAfterDiscardUs:J

.field public playbackSpeed:F

.field public reason:I

.field public selectedIndex:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/TrackGroup;[IILio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "[II",
            "Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;",
            "Lio/bidmachine/media3/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 392
    invoke-direct/range {p0 .. p3}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Lio/bidmachine/media3/common/TrackGroup;[II)V

    cmp-long p1, p9, p5

    if-gez p1, :cond_10

    .line 394
    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p1, p5

    goto :goto_11

    :cond_10
    move-wide p1, p9

    .line 400
    :goto_11
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    const-wide/16 p3, 0x3e8

    mul-long/2addr p5, p3

    .line 401
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long/2addr p7, p3

    .line 402
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long/2addr p1, p3

    .line 403
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 404
    iput p11, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    .line 405
    iput p12, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    .line 406
    iput p13, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 407
    iput p14, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 409
    invoke-static {p15}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    move-object/from16 p1, p16

    .line 410
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Lio/bidmachine/media3/common/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 411
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 p1, 0x0

    .line 412
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide/32 p1, -0x7fffffff

    .line 414
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    return-void
.end method

.method public static synthetic access$000([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 49
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static addCheckpoint(Ljava/util/List;[J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;[J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 817
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_d

    .line 818
    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 820
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 821
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1c

    goto :goto_26

    .line 825
    :cond_1c
    new-instance v4, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method public static getAdaptationCheckpoints([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 714
    :goto_7
    array-length v3, p0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_2d

    .line 715
    aget-object v3, p0, v2

    if-eqz v3, :cond_26

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    if-le v3, v6, :cond_26

    .line 716
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 718
    new-instance v6, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v6, v4, v5, v4, v5}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 719
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_26
    const/4 v3, 0x0

    .line 721
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 725
    :cond_2d
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSortedTrackBitrates([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J

    move-result-object v2

    .line 726
    array-length v3, v2

    new-array v3, v3, [I

    .line 727
    array-length v7, v2

    new-array v7, v7, [J

    move v8, v1

    .line 728
    :goto_38
    array-length v9, v2

    if-ge v8, v9, :cond_49

    .line 729
    aget-object v9, v2, v8

    array-length v10, v9

    if-nez v10, :cond_42

    move-wide v10, v4

    goto :goto_44

    :cond_42
    aget-wide v10, v9, v1

    :goto_44
    aput-wide v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 731
    :cond_49
    invoke-static {v0, v7}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 733
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move v5, v1

    .line 734
    :goto_51
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v5, v8, :cond_72

    .line 735
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 736
    aget v9, v3, v8

    add-int/2addr v9, v6

    aput v9, v3, v8

    .line 737
    aget-object v10, v2, v8

    aget-wide v9, v10, v9

    aput-wide v9, v7, v8

    .line 738
    invoke-static {v0, v7}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_72
    move v2, v1

    .line 741
    :goto_73
    array-length v3, p0

    if-ge v2, v3, :cond_86

    .line 742
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 743
    aget-wide v3, v7, v2

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    aput-wide v3, v7, v2

    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 746
    :cond_86
    invoke-static {v0, v7}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 747
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 748
    :goto_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    .line 749
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v2, :cond_a0

    .line 750
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_a4

    :cond_a0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_a4
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 752
    :cond_aa
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getSortedTrackBitrates([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J
    .registers 11

    .line 757
    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    move v2, v1

    .line 758
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_40

    .line 759
    aget-object v3, p0, v2

    if-nez v3, :cond_11

    .line 761
    new-array v3, v1, [J

    aput-object v3, v0, v2

    goto :goto_3d

    .line 764
    :cond_11
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v0, v2

    move v4, v1

    .line 765
    :goto_19
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v5

    if-ge v4, v6, :cond_38

    .line 766
    iget-object v6, v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Lio/bidmachine/media3/common/TrackGroup;

    aget v5, v5, v4

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    iget v5, v5, Lio/bidmachine/media3/common/Format;->bitrate:I

    int-to-long v5, v5

    .line 767
    aget-object v7, v0, v2

    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-nez v8, :cond_33

    const-wide/16 v5, 0x0

    :cond_33
    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 769
    :cond_38
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_40
    return-object v0
.end method

.method public static getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 785
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 786
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_64

    .line 787
    aget-object v3, p0, v2

    array-length v4, v3

    const/4 v5, 0x1

    if-gt v4, v5, :cond_18

    goto :goto_61

    .line 790
    :cond_18
    array-length v3, v3

    new-array v4, v3, [D

    move v5, v1

    .line 791
    :goto_1c
    aget-object v6, p0, v2

    array-length v7, v6

    const-wide/16 v8, 0x0

    if-ge v5, v7, :cond_36

    .line 793
    aget-wide v10, v6, v5

    const-wide/16 v6, -0x1

    cmp-long v6, v10, v6

    if-nez v6, :cond_2c

    goto :goto_31

    :cond_2c
    long-to-double v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    :goto_31
    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_36
    add-int/lit8 v3, v3, -0x1

    .line 795
    aget-wide v5, v4, v3

    aget-wide v10, v4, v1

    sub-double/2addr v5, v10

    move v7, v1

    :goto_3e
    if-ge v7, v3, :cond_61

    .line 797
    aget-wide v10, v4, v7

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v4, v7

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    cmpl-double v12, v5, v8

    if-nez v12, :cond_51

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_55

    .line 799
    :cond_51
    aget-wide v12, v4, v1

    sub-double/2addr v10, v12

    div-double/2addr v10, v5

    .line 800
    :goto_55
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 803
    :cond_64
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canSelectFormat(Lio/bidmachine/media3/common/Format;IJ)Z
    .registers 5

    .line 0
    int-to-long p1, p2

    cmp-long p1, p1, p3

    if-gtz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final determineIdealSelectedIndex(JJ)I
    .registers 9

    .line 600
    invoke-virtual {p0, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAllocatedBandwidth(J)J

    move-result-wide p3

    const/4 v0, 0x0

    move v1, v0

    .line 602
    :goto_6
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v2, :cond_27

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_16

    .line 603
    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    if-nez v2, :cond_24

    .line 604
    :cond_16
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v1

    .line 605
    iget v2, v1, Lio/bidmachine/media3/common/Format;->bitrate:I

    invoke-virtual {p0, v1, v2, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lio/bidmachine/media3/common/Format;IJ)Z

    move-result v1

    if-eqz v1, :cond_23

    return v0

    :cond_23
    move v1, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    return v1
.end method

.method public disable()V
    .registers 2

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public enable()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 420
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 506
    invoke-virtual {p0, v0, v1, p3}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(JLjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 507
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 509
    :cond_11
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 510
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    :cond_1b
    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    :goto_21
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    .line 512
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    return v3

    .line 515
    :cond_2b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 516
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    .line 517
    iget-wide v4, v4, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget v6, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 518
    invoke-static {v4, v5, v6}, Lio/bidmachine/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 520
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_49

    goto :goto_8b

    .line 524
    :cond_49
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v0

    .line 525
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    :goto_55
    if-ge v3, v2, :cond_8b

    .line 530
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    .line 531
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 532
    iget-wide v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v8, p1

    .line 533
    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 534
    invoke-static {v8, v9, v1}, Lio/bidmachine/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_88

    .line 535
    iget v1, v4, Lio/bidmachine/media3/common/Format;->bitrate:I

    iget v5, v0, Lio/bidmachine/media3/common/Format;->bitrate:I

    if-ge v1, v5, :cond_88

    iget v1, v4, Lio/bidmachine/media3/common/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_88

    iget v8, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    if-gt v1, v8, :cond_88

    iget v4, v4, Lio/bidmachine/media3/common/Format;->width:I

    if-eq v4, v5, :cond_88

    iget v5, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    if-gt v4, v5, :cond_88

    iget v4, v0, Lio/bidmachine/media3/common/Format;->height:I

    if-ge v1, v4, :cond_88

    return v3

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_8b
    :goto_8b
    return v2
.end method

.method public final getAllocatedBandwidth(J)J
    .registers 9

    .line 671
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getTotalAllocatableBandwidth(J)J

    move-result-wide p1

    .line 672
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-wide p1

    :cond_d
    const/4 v0, 0x1

    move v1, v0

    .line 676
    :goto_f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 677
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 680
    :cond_29
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 681
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 682
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr v4, v2

    long-to-float p2, v4

    div-float/2addr p1, p2

    .line 685
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v0, v1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    sub-long/2addr v0, v2

    long-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-long p1, p1

    add-long/2addr v2, p1

    return-wide v2
.end method

.method public final getLastChunkDurationUs(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 661
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_c

    return-wide v1

    .line 664
    :cond_c
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    .line 665
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_20

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_20

    sub-long/2addr v5, v3

    return-wide v5

    :cond_20
    return-wide v1
.end method

.method public getMinDurationToRetainAfterDiscardUs()J
    .registers 3

    .line 588
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public final getNextChunkDurationUs([Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 640
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_1b

    aget-object v0, p1, v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 641
    iget p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object p1, p1, p2

    .line 642
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 646
    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 647
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 648
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide p1

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 653
    :cond_34
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 489
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 494
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public final getTotalAllocatableBandwidth(J)J
    .registers 10

    .line 691
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    long-to-float v0, v0

    .line 692
    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 693
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;->getTimeToFirstByteEstimateUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    cmp-long v4, p1, v4

    if-nez v4, :cond_21

    goto :goto_32

    :cond_21
    long-to-float p1, p1

    .line 697
    iget p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float p2, p1, p2

    long-to-float v2, v2

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    .line 698
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    long-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    float-to-long p1, v0

    return-wide p1

    :cond_32
    :goto_32
    long-to-float p1, v0

    .line 695
    iget p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public final minDurationForQualityIncreaseUs(JJ)J
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 618
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    return-wide p1

    :cond_c
    cmp-long v0, p3, v0

    if-eqz v0, :cond_11

    sub-long/2addr p1, p3

    :cond_11
    long-to-float p1, p1

    .line 628
    iget p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 630
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    .line 433
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method public shouldEvaluateQueueSize(JLjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 576
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-gez p1, :cond_29

    .line 578
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x1

    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 443
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 444
    invoke-virtual {p0, p8, p7}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getNextChunkDurationUs([Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J

    move-result-wide v0

    .line 447
    iget p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p8, :cond_18

    const/4 p3, 0x1

    .line 448
    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 449
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 453
    :cond_18
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 456
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_23

    move v3, v4

    goto :goto_2f

    :cond_23
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v3

    :goto_2f
    if-eq v3, v4, :cond_3a

    .line 459
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    iget p8, p7, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    move v2, v3

    .line 461
    :cond_3a
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p7

    if-eq p7, v2, :cond_66

    .line 463
    invoke-virtual {p0, v2, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result p1

    if-nez p1, :cond_66

    .line 465
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 466
    invoke-virtual {p0, p7}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p2

    .line 468
    invoke-virtual {p0, p5, p6, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(JJ)J

    move-result-wide p5

    .line 469
    iget p2, p2, Lio/bidmachine/media3/common/Format;->bitrate:I

    iget p1, p1, Lio/bidmachine/media3/common/Format;->bitrate:I

    if-le p2, p1, :cond_5d

    cmp-long p5, p3, p5

    if-gez p5, :cond_5d

    goto :goto_65

    :cond_5d
    if-ge p2, p1, :cond_66

    .line 474
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_66

    :goto_65
    move p7, v2

    :cond_66
    if-ne p7, v2, :cond_69

    goto :goto_6a

    :cond_69
    const/4 p8, 0x3

    .line 483
    :goto_6a
    iput p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 484
    iput p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint (io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptationCheckpoint"
.end annotation


# instance fields
.field public final allocatedBandwidth:J

.field public final totalBandwidth:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    .line 842
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 850
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 853
    :cond_a
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 854
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 859
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection.Factory (io.bidmachine.media3.exoplayer.trackselection.AdaptiveTrackSelection$Factory)
.class public Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public final bandwidthFraction:F

.field public final bufferedFractionToLiveEdgeForQualityIncrease:F

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final maxDurationForQualityDecreaseMs:I

.field public final maxHeightToDiscard:I

.field public final maxWidthToDiscard:I

.field public final minDurationForQualityIncreaseMs:I

.field public final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 67
    invoke-direct {p0, v2, v0, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 14

    const/high16 v7, 0x3f400000    # 0.75f

    .line 95
    sget-object v8, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLio/bidmachine/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLio/bidmachine/media3/common/util/Clock;)V
    .registers 9

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 222
    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 223
    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 224
    iput p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 225
    iput p5, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 226
    iput p6, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 227
    iput p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 229
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public createAdaptiveTrackSelection(Lio/bidmachine/media3/common/TrackGroup;[IILio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "[II",
            "Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 279
    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    iget v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v2

    iget v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v2

    iget v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v2

    iget v12, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Lio/bidmachine/media3/common/util/Clock;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Lio/bidmachine/media3/common/TrackGroup;[IILio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lio/bidmachine/media3/common/util/Clock;)V

    return-object v1
.end method

.method public final createTrackSelections([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
    .registers 14

    .line 239
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;->access$000([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 240
    array-length p4, p1

    new-array p4, p4, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_40

    .line 242
    aget-object v2, p1, v1

    if-eqz v2, :cond_15

    .line 243
    iget-object v5, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v5

    if-nez v3, :cond_17

    :cond_15
    move-object v7, p2

    goto :goto_3c

    .line 247
    :cond_17
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 248
    new-instance v3, Lio/bidmachine/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Lio/bidmachine/media3/common/TrackGroup;

    aget v5, v5, v0

    iget v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v3, v4, v5, v2}, Lio/bidmachine/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Lio/bidmachine/media3/common/TrackGroup;II)V

    move-object v7, p2

    goto :goto_3a

    .line 252
    :cond_28
    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Lio/bidmachine/media3/common/TrackGroup;

    iget v6, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    .line 257
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    move-object v3, p0

    move-object v7, p2

    .line 252
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Lio/bidmachine/media3/common/TrackGroup;[IILio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    move-result-object p2

    move-object v3, p2

    :goto_3a
    aput-object v3, p4, v1

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    move-object p2, v7

    goto :goto_9

    :cond_40
    return-object p4
.end method
