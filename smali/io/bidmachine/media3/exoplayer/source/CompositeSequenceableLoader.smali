###### Class io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoader (io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoader)
.class public final Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    }
.end annotation


# instance fields
.field public lastAudioVideoBufferedPositionUs:J

.field public final loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 52
    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_35

    .line 53
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 54
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;-><init>(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 56
    :cond_35
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    return-void
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_d

    return v1

    :cond_d
    move v6, v0

    move v7, v6

    .line 125
    :goto_f
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v6, v8, :cond_46

    .line 126
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2f

    .line 127
    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2f

    const/4 v10, 0x1

    goto :goto_30

    :cond_2f
    move v10, v0

    :goto_30
    cmp-long v8, v8, v2

    if-eqz v8, :cond_36

    if-eqz v10, :cond_43

    .line 131
    :cond_36
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v8, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_46
    or-int/2addr v1, v7

    if-nez v7, :cond_2

    return v1
.end method

.method public getBufferedPositionUs()J
    .registers 15

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    .line 64
    :goto_8
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    const-wide/high16 v8, -0x8000000000000000L

    if-ge v2, v7, :cond_5e

    .line 65
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 66
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getBufferedPositionUs()J

    move-result-wide v10

    .line 68
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    .line 69
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    .line 70
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    :cond_4b
    cmp-long v7, v10, v8

    if-eqz v7, :cond_53

    .line 73
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_53
    cmp-long v7, v10, v8

    if-eqz v7, :cond_5b

    .line 77
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5e
    cmp-long v2, v3, v0

    if-eqz v2, :cond_65

    .line 81
    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    return-wide v3

    :cond_65
    cmp-long v0, v5, v0

    if-eqz v0, :cond_76

    .line 87
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_75

    return-wide v0

    :cond_75
    return-wide v5

    :cond_76
    return-wide v8
.end method

.method public getNextLoadPositionUs()J
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    .line 98
    :goto_7
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const-wide/high16 v6, -0x8000000000000000L

    if-ge v2, v5, :cond_28

    .line 99
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 100
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_25

    .line 102
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_28
    cmp-long v0, v3, v0

    if-nez v0, :cond_2d

    return-wide v6

    :cond_2d
    return-wide v3
.end method

.method public isLoading()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 141
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 142
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public reevaluateBuffer(J)V
    .registers 5

    const/4 v0, 0x0

    .line 110
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 111
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->reevaluateBuffer(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoader.SequenceableLoaderWithTrackTypes (io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes)
.class public final Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceableLoaderWithTrackTypes"
.end annotation


# instance fields
.field public final loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

.field public final trackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    .line 157
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->trackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 3

    .line 178
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 168
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackTypes()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->trackTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 188
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method
