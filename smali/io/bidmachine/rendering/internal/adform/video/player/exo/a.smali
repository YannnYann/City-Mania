###### Class io.bidmachine.rendering.internal.adform.video.player.exo.a (io.bidmachine.rendering.internal.adform.video.player.exo.a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/exo/a;
.super Lio/bidmachine/rendering/internal/adform/video/player/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;
    }
.end annotation


# instance fields
.field public final n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

.field public final o:Lio/bidmachine/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lio/bidmachine/media3/common/AudioAttributes$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/AudioAttributes$Builder;->setUsage(I)Lio/bidmachine/media3/common/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 7
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/AudioAttributes$Builder;->setContentType(I)Lio/bidmachine/media3/common/AudioAttributes$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lio/bidmachine/media3/common/AudioAttributes$Builder;->build()Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->build()Lio/bidmachine/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const-string v1, "Builder(context)\n       \u2026       )\n        .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/exo/a;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->addListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 27
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 30
    new-instance v1, Lio/bidmachine/media3/ui/PlayerView;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/ui/PlayerView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/PlayerView;->setPlayer(Lio/bidmachine/media3/common/Player;)V

    .line 32
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/ui/PlayerView;->setUseController(Z)V

    .line 33
    iput-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->o:Lio/bidmachine/media3/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setVolume(F)V

    return-void
.end method

.method public a(J)V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/common/Player;->seekTo(J)V

    return-void
.end method

.method public b()J
    .registers 3

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "videoUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object p1

    const-string v0, "Builder()\n            .s\u2026Uri)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setMediaItem(Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method

.method public c()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getVolume()F

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->destroy()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer;->release()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->o:Lio/bidmachine/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerView;->setPlayer(Lio/bidmachine/media3/common/Player;)V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->pause()V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->play()V

    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->prepare()V

    return-void
.end method

.method public j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->n:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->stop()V

    return-void
.end method

.method public o()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;->o:Lio/bidmachine/media3/ui/PlayerView;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.exo.a.C1172a (io.bidmachine.rendering.internal.adform.video.player.exo.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/exo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/exo/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->r()V

    return-void

    .line 3
    :cond_8
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->q()V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    return-void

    .line 1
    :cond_7
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->I()V

    return-void

    .line 2
    :cond_d
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->s()V

    return-void
.end method

.method public onPlayerError(Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 3

    const-string v0, "playbackException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V
    .registers 4

    const-string p3, "oldPosition"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    iget-wide p2, p2, Lio/bidmachine/media3/common/Player$PositionInfo;->positionMs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/exo/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(F)V

    return-void
.end method
