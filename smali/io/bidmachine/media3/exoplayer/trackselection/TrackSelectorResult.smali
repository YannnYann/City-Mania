###### Class io.bidmachine.media3.exoplayer.trackselection.TrackSelectorResult (io.bidmachine.media3.exoplayer.trackselection.TrackSelectorResult)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

.field public final selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

.field public final tracks:Lio/bidmachine/media3/common/Tracks;


# direct methods
.method public constructor <init>([Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/Tracks;Ljava/lang/Object;)V
    .registers 7

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 90
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    .line 91
    invoke-virtual {p2}, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 92
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Lio/bidmachine/media3/common/Tracks;

    .line 93
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 94
    array-length p1, p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    return-void
.end method


# virtual methods
.method public isEquivalent(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 110
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v1, v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-eq v1, v2, :cond_c

    goto :goto_1e

    :cond_c
    move v1, v0

    .line 113
    :goto_d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    .line 114
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    :goto_1e
    return v0
.end method

.method public isEquivalent(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 136
    :cond_4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v1, v1, p2

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object p1, p1, p2

    .line 137
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    return v0
.end method

.method public isRendererEnabled(I)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object p1, v0, p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
