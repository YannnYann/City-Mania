###### Class io.bidmachine.media3.common.Player (io.bidmachine.media3.common.Player)
.class public interface abstract Lio/bidmachine/media3/common/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Player$Listener;,
        Lio/bidmachine/media3/common/Player$Commands;,
        Lio/bidmachine/media3/common/Player$PositionInfo;,
        Lio/bidmachine/media3/common/Player$Events;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/bidmachine/media3/common/Player$Listener;)V
.end method

.method public abstract clearVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract clearVideoTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract getApplicationLooper()Landroid/os/Looper;
.end method

.method public abstract getAvailableCommands()Lio/bidmachine/media3/common/Player$Commands;
.end method

.method public abstract getContentBufferedPosition()J
.end method

.method public abstract getContentDuration()J
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentCues()Lio/bidmachine/media3/common/text/CueGroup;
.end method

.method public abstract getCurrentMediaItemIndex()I
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;
.end method

.method public abstract getCurrentTracks()Lio/bidmachine/media3/common/Tracks;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMaxSeekToPreviousPosition()J
.end method

.method public abstract getMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPlaybackSuppressionReason()I
.end method

.method public abstract getPlayerError()Lio/bidmachine/media3/common/PlaybackException;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getSeekBackIncrement()J
.end method

.method public abstract getSeekForwardIncrement()J
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract getTotalBufferedDuration()J
.end method

.method public abstract getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;
.end method

.method public abstract getVideoSize()Lio/bidmachine/media3/common/VideoSize;
.end method

.method public abstract getVolume()F
.end method

.method public abstract hasNextMediaItem()Z
.end method

.method public abstract hasPreviousMediaItem()Z
.end method

.method public abstract isCommandAvailable(I)Z
.end method

.method public abstract isCurrentMediaItemDynamic()Z
.end method

.method public abstract isCurrentMediaItemLive()Z
.end method

.method public abstract isCurrentMediaItemSeekable()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract removeListener(Lio/bidmachine/media3/common/Player$Listener;)V
.end method

.method public abstract seekBack()V
.end method

.method public abstract seekForward()V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekToDefaultPosition()V
.end method

.method public abstract seekToNext()V
.end method

.method public abstract seekToPrevious()V
.end method

.method public abstract setMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
.end method

.method public abstract setMediaItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleModeEnabled(Z)V
.end method

.method public abstract setTrackSelectionParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
.end method

.method public abstract setVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method

###### Class io.bidmachine.media3.common.Player.AnonymousClass1 (io.bidmachine.media3.common.Player$1)
.class public synthetic Lio/bidmachine/media3/common/Player$1;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.Player.Commands (io.bidmachine.media3.common.Player$Commands)
.class public final Lio/bidmachine/media3/common/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/Player$Commands;

.field public static final FIELD_COMMANDS:Ljava/lang/String;


# instance fields
.field public final flags:Lio/bidmachine/media3/common/FlagSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 676
    new-instance v0, Lio/bidmachine/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Player$Commands$Builder;->build()Lio/bidmachine/media3/common/Player$Commands;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$Commands;->EMPTY:Lio/bidmachine/media3/common/Player$Commands;

    const/4 v0, 0x0

    .line 733
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/FlagSet;)V
    .registers 2

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/FlagSet;Lio/bidmachine/media3/common/Player$1;)V
    .registers 3

    .line 503
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/Player$Commands;-><init>(Lio/bidmachine/media3/common/FlagSet;)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/common/Player$Commands;)Lio/bidmachine/media3/common/FlagSet;
    .registers 1

    .line 503
    iget-object p0, p0, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    return-object p0
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 692
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 721
    :cond_4
    instance-of v0, p1, Lio/bidmachine/media3/common/Player$Commands;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 724
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/Player$Commands;

    .line 725
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    iget-object p1, p1, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 730
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.common.Player.Commands.Builder (io.bidmachine.media3.common.Player$Commands$Builder)
.class public final Lio/bidmachine/media3/common/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final SUPPORTED_COMMANDS:[I


# instance fields
.field public final flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x23

    .line 510
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/common/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x21
        0x1a
        0x22
        0x23
        0x1b
        0x1c
        0x1d
        0x1e
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public add(I)Lio/bidmachine/media3/common/Player$Commands$Builder;
    .registers 3

    .line 569
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet$Builder;->add(I)Lio/bidmachine/media3/common/FlagSet$Builder;

    return-object p0
.end method

.method public addAll(Lio/bidmachine/media3/common/Player$Commands;)Lio/bidmachine/media3/common/Player$Commands$Builder;
    .registers 3

    .line 609
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-static {p1}, Lio/bidmachine/media3/common/Player$Commands;->access$000(Lio/bidmachine/media3/common/Player$Commands;)Lio/bidmachine/media3/common/FlagSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet$Builder;->addAll(Lio/bidmachine/media3/common/FlagSet;)Lio/bidmachine/media3/common/FlagSet$Builder;

    return-object p0
.end method

.method public varargs addAll([I)Lio/bidmachine/media3/common/Player$Commands$Builder;
    .registers 3

    .line 596
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet$Builder;->addAll([I)Lio/bidmachine/media3/common/FlagSet$Builder;

    return-object p0
.end method

.method public addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;
    .registers 4

    .line 583
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/FlagSet$Builder;->addIf(IZ)Lio/bidmachine/media3/common/FlagSet$Builder;

    return-object p0
.end method

.method public build()Lio/bidmachine/media3/common/Player$Commands;
    .registers 4

    .line 671
    new-instance v0, Lio/bidmachine/media3/common/Player$Commands;

    iget-object v1, p0, Lio/bidmachine/media3/common/Player$Commands$Builder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/FlagSet$Builder;->build()Lio/bidmachine/media3/common/FlagSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/Player$Commands;-><init>(Lio/bidmachine/media3/common/FlagSet;Lio/bidmachine/media3/common/Player$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.common.Player.Events (io.bidmachine.media3.common.Player$Events)
.class public final Lio/bidmachine/media3/common/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field public final flags:Lio/bidmachine/media3/common/FlagSet;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/FlagSet;)V
    .registers 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lio/bidmachine/media3/common/Player$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    return-void
.end method


# virtual methods
.method public varargs containsAny([I)Z
    .registers 3

    .line 204
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 236
    :cond_4
    instance-of v0, p1, Lio/bidmachine/media3/common/Player$Events;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 239
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/Player$Events;

    .line 240
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    iget-object p1, p1, Lio/bidmachine/media3/common/Player$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.common.Player.Listener (io.bidmachine.media3.common.Player$Listener)
.class public interface abstract Lio/bidmachine/media3/common/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioSessionIdChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAvailableCommandsChanged(Lio/bidmachine/media3/common/Player$Commands;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onCues(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onDeviceInfoChanged(Lio/bidmachine/media3/common/DeviceInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Player$Events;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onMediaItemTransition(Lio/bidmachine/media3/common/MediaItem;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onMediaMetadataChanged(Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMetadata(Lio/bidmachine/media3/common/Metadata;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlaybackParametersChanged(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlayerError(Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlayerErrorChanged(Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    .line 0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onTimelineChanged(Lio/bidmachine/media3/common/Timeline;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onTracksChanged(Lio/bidmachine/media3/common/Tracks;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVolumeChanged(F)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.common.Player.PositionInfo (io.bidmachine.media3.common.Player$PositionInfo)
.class public final Lio/bidmachine/media3/common/Player$PositionInfo;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionInfo"
.end annotation


# static fields
.field public static final FIELD_AD_GROUP_INDEX:Ljava/lang/String;

.field public static final FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

.field public static final FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

.field public static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field public static final FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

.field public static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field public static final FIELD_POSITION_MS:Ljava/lang/String;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 388
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 389
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    const/4 v0, 0x2

    .line 390
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v0, 0x3

    .line 391
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 392
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 393
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x6

    .line 394
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;IJJII)V
    .registers 12

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 334
    iput p2, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->windowIndex:I

    .line 335
    iput p2, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 336
    iput-object p3, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 337
    iput-object p4, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 338
    iput p5, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodIndex:I

    .line 339
    iput-wide p6, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->positionMs:J

    .line 340
    iput-wide p8, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 341
    iput p10, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 342
    iput p11, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Player$PositionInfo;

    if-eq v3, v2, :cond_10

    goto :goto_2d

    .line 353
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/Player$PositionInfo;

    .line 354
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Player$PositionInfo;->equalsForBundling(Lio/bidmachine/media3/common/Player$PositionInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 355
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object p1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 356
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public equalsForBundling(Lio/bidmachine/media3/common/Player$PositionInfo;)Z
    .registers 6

    .line 379
    iget v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget v1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodIndex:I

    iget v1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v0, v1, :cond_34

    iget-wide v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v2, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    iget-wide v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-wide v2, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->contentPositionMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    iget v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget v1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget v1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    iget-object p1, p1, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 385
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 10

    .line 361
    iget-object v0, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget v1, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    iget-object v3, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget v4, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->periodIndex:I

    .line 366
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->positionMs:J

    .line 367
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 368
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lio/bidmachine/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 370
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 361
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
