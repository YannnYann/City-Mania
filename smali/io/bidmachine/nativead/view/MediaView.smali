###### Class io.bidmachine.nativead.view.MediaView (io.bidmachine.nativead.view.MediaView)
.class public final Lio/bidmachine/nativead/view/MediaView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/view/MediaView$Companion;,
        Lio/bidmachine/nativead/view/MediaView$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/nativead/view/MediaView$Companion;


# instance fields
.field public volatile error:Z

.field public finishedOrExpanded:Z

.field public hasVideo:Z

.field public imageView:Landroid/widget/ImageView;

.field public isInitialized:Z

.field public isMuted:Z

.field public isVideoFinishNotified:Z

.field public isVideoStartNotified:Z

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public mediaPlayerPrepared:Z

.field public mediaPlayerPreparing:Z

.field public muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

.field public nativeData:Lio/bidmachine/nativead/NativeData;

.field public nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

.field public nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

.field public playButton:Landroid/widget/ImageView;

.field public progressBarView:Landroid/widget/ProgressBar;

.field public quartile:I

.field public final repository$delegate:Lkotlin/Lazy;

.field public startPlayVideoWhenReady:Z

.field public state:Lio/bidmachine/nativead/view/NativeState;

.field public textureView:Landroid/view/TextureView;

.field public videoDuration:I

.field public videoHeight:I

.field public videoSizeWasChanged:Z

.field public videoVisibilityCheckerTimer:Ljava/util/Timer;

.field public videoWidth:I

.field public viewOnScreen:Z


# direct methods
.method public static synthetic $r8$lambda$-WnFODZRQ3uCOfUpAZ0qvCXro9Y(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->createMuteButton$lambda$19$lambda$18(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-oACvfsUiwCFD5MCXnybwYTjwC4(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView;->release$lambda$10(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DpYPwMNCt14hp_efu9TE6yf-huc(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/nativead/view/MediaView;->createVideoView$lambda$9$lambda$8(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YcQdmzPoaeLpRwD50YBiRDCSNGw(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError$lambda$17(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrrNgkXmcdJo9hKIP-NTVOIR5x8(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->createVideoView$lambda$6$lambda$5(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v0MotAonysAxwZpcurLKmiL6W8M(IZ)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->videoPlayerActivityClosed$lambda$22(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/view/MediaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/nativead/view/MediaView;->Companion:Lio/bidmachine/nativead/view/MediaView$Companion;

    return-void
.end method

.method public static final synthetic access$clearPlayerOnError(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError()V

    return-void
.end method

.method public static final synthetic access$getError$p(Lio/bidmachine/nativead/view/MediaView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    return p0
.end method

.method public static final synthetic access$getFinishedOrExpanded$p(Lio/bidmachine/nativead/view/MediaView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    return p0
.end method

.method public static final synthetic access$getMediaPlayer$p(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->quartile:I

    return p0
.end method

.method public static final synthetic access$getVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->videoDuration:I

    return p0
.end method

.method public static final synthetic access$isAdOnScreen(Lio/bidmachine/nativead/view/MediaView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isAdOnScreen()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMediaPlayerAvailable(Lio/bidmachine/nativead/view/MediaView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pausePlayer(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    return-void
.end method

.method public static final synthetic access$prepareMediaPlayer(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V

    return-void
.end method

.method public static final synthetic access$processEvent(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->processEvent(Lio/bidmachine/iab/vast/TrackingEvent;)V

    return-void
.end method

.method public static final synthetic access$setHasVideo$p(Lio/bidmachine/nativead/view/MediaView;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    return-void
.end method

.method public static final synthetic access$setQuartile$p(Lio/bidmachine/nativead/view/MediaView;I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->quartile:I

    return-void
.end method

.method public static final synthetic access$setVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoDuration:I

    return-void
.end method

.method public static final synthetic access$tryPlayVideo(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    return-void
.end method

.method public static final synthetic access$updateViewState(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    return-void
.end method

.method public static final clearPlayerOnError$lambda$17(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->cleanUpMediaPlayer()V

    .line 3
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->processErrorEvent()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 9
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final createMuteButton$lambda$19$lambda$18(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    if-eqz p1, :cond_1c

    .line 3
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_18

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_18
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    goto :goto_27

    .line 6
    :cond_1c
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_24

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_24
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    .line 9
    :goto_27
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    :cond_2a
    return-void
.end method

.method public static final createVideoView$lambda$6$lambda$5(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    return-void
.end method

.method public static final createVideoView$lambda$9$lambda$8(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;Landroid/view/View;)V
    .registers 9

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz p2, :cond_62

    invoke-interface {p2}, Lio/bidmachine/nativead/NativeMediaPublicData;->getVideoUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_62

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_62

    .line 2
    :cond_1b
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_20

    goto :goto_62

    .line 3
    :cond_20
    const-string v0, "Video has been clicked"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p2

    :goto_38
    move v3, p2

    goto :goto_3c

    :cond_3a
    const/4 p2, 0x0

    goto :goto_38

    .line 9
    :goto_3c
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 12
    sget-object v0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->Companion:Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    if-eqz p1, :cond_59

    invoke-interface {p1}, Lio/bidmachine/nativead/NativeData;->getDisclaimerData()Lio/bidmachine/internal/k;

    move-result-object p1

    :goto_56
    move-object v4, p0

    move-object v5, p1

    goto :goto_5b

    :cond_59
    const/4 p1, 0x0

    goto :goto_56

    .line 18
    :goto_5b
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;ILio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;Lio/bidmachine/internal/k;)Landroid/content/Intent;

    move-result-object p0

    .line 19
    invoke-static {p2, p0}, Lio/bidmachine/core/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private final getRepository()Lio/bidmachine/rendering/Repository;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->repository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/Repository;

    return-object v0
.end method

.method public static final release$lambda$10(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->cleanUpMediaPlayer()V

    return-void
.end method

.method public static final videoPlayerActivityClosed$lambda$22(IZ)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaView videoPlayerActivityClosed, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", finished: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyNative(Ljava/lang/Object;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;Lio/bidmachine/nativead/NativeInteractor;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 2
    iput-object p3, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 3
    iput-object p4, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    .line 5
    invoke-interface {p3}, Lio/bidmachine/nativead/NativeMediaPublicData;->getVideoUri()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_25

    .line 6
    invoke-interface {p2}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_18

    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 7
    :cond_18
    invoke-interface {p2}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_28

    :cond_25
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    .line 10
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->createView(Ljava/lang/Object;)V

    return-void
.end method

.method public final cleanUpMediaPlayer()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    goto :goto_2e

    :cond_5
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 4
    :try_start_8
    iget-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v2, :cond_1b

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_2b

    .line 8
    :cond_18
    :goto_18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 12
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_16

    return-void

    .line 19
    :goto_2b
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method public final clearPlayerOnError()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createImageView()V
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 6
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final createMediaPlayer()Landroid/media/MediaPlayer;
    .registers 3

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 8
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateVolume()V

    return-object v0
.end method

.method public final createMuteButton()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    const/16 v2, 0x28

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 3
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    const/16 v3, 0x8

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 4
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    .line 5
    new-instance v3, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    invoke-direct {v3, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 6
    sget v0, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    sget v4, Lio/bidmachine/iab/utils/Assets;->BACKGROUND_COLOR:I

    invoke-virtual {v3, v0, v4}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 7
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    .line 27
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final createVideoView(Ljava/lang/Object;)V
    .registers 19

    move-object/from16 v0, p0

    const/16 v1, 0x32

    int-to-float v1, v1

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    .line 2
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101007a

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    const/4 v6, -0x1

    .line 4
    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    const-string v3, "#6b000000"

    invoke-static {v3}, Lio/bidmachine/util/ColorUtils;->parseColorARGBSafely(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3c
    const/4 v3, 0x4

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iput-object v2, v0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v7, 0x1080024

    .line 16
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {v7, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iput-object v2, v0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 32
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, v0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->createMuteButton()V

    .line 62
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()Landroid/media/MediaPlayer;

    .line 63
    iget-object v1, v0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 64
    iget-object v2, v0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v2, :cond_a9

    invoke-interface {v2}, Lio/bidmachine/nativead/NativeMediaPublicData;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    :cond_a9
    if-eqz v5, :cond_ba

    .line 65
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ba

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, v0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    return-void

    :cond_ba
    if-eqz v1, :cond_114

    .line 68
    sget-object v2, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v0, v2}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 69
    invoke-interface {v1}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-interface {v1}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v13

    if-eqz v7, :cond_ea

    .line 71
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d2

    goto :goto_ea

    .line 72
    :cond_d2
    new-instance v6, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;

    invoke-direct {v6, v0}, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 86
    new-instance v3, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    .line 88
    invoke-direct {v0}, Lio/bidmachine/nativead/view/MediaView;->getRepository()Lio/bidmachine/rendering/Repository;

    move-result-object v5

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 89
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    invoke-virtual {v0, v3}, Lio/bidmachine/nativead/view/MediaView;->executeTask(Ljava/lang/Runnable;)V

    return-void

    :cond_ea
    :goto_ea
    if-eqz v13, :cond_114

    .line 98
    invoke-static {v13}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    goto :goto_114

    .line 100
    :cond_f3
    new-instance v12, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;

    invoke-direct {v12, v0}, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 119
    new-instance v8, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v1, "context"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {v0}, Lio/bidmachine/nativead/view/MediaView;->getRepository()Lio/bidmachine/rendering/Repository;

    move-result-object v11

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    .line 123
    invoke-direct/range {v8 .. v16}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-virtual {v0, v8}, Lio/bidmachine/nativead/view/MediaView;->executeTask(Ljava/lang/Runnable;)V

    :cond_114
    :goto_114
    return-void
.end method

.method public final createView(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->createImageView()V

    .line 5
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz v0, :cond_12

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->createVideoView(Ljava/lang/Object;)V

    goto :goto_17

    .line 8
    :cond_12
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 11
    :cond_17
    :goto_17
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 12
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2e

    if-eqz v0, :cond_2e

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-interface {p1}, Lio/bidmachine/nativead/NativeMediaPublicData;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 19
    invoke-interface {p1}, Lio/bidmachine/nativead/NativeMediaPublicData;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 20
    invoke-static {v1, v0, v2, p1}, Lio/bidmachine/nativead/utils/ImageHelper;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    return-void
.end method

.method public final executeTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final fireUrls(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_1b

    .line 1
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->simpleTrackUrl(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_7

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final getNativeData()Lio/bidmachine/nativead/NativeData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    return-object v0
.end method

.method public final getNativeInteractor()Lio/bidmachine/nativead/NativeInteractor;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    return-object v0
.end method

.method public final getNativeMediaData()Lio/bidmachine/nativead/NativeMediaPrivateData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-object v0
.end method

.method public final isAdOnScreen()Z
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final isMediaPlayerAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyVideoFinished()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoFinishNotified:Z

    if-nez v0, :cond_11

    .line 2
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->processEvent(Lio/bidmachine/iab/vast/TrackingEvent;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoFinishNotified:Z

    .line 4
    const-string v0, "MediaView: video finished"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final notifyVideoStarted()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoStartNotified:Z

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->processImpressions()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoStartNotified:Z

    .line 4
    const-string v0, "MediaView: video started"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->videoFinished()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1
    const-string p1, "MediaView: onError"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError()V

    const/4 p1, 0x1

    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateTextureLayoutParams()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v0, v6, :cond_22

    if-eq v0, v7, :cond_26

    move v2, v4

    goto :goto_26

    .line 18
    :cond_22
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_26
    :goto_26
    int-to-float v0, v2

    const/high16 v6, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    if-ne v1, v7, :cond_36

    if-ge v3, v0, :cond_36

    int-to-float v0, v3

    const v1, 0x3fe38e39

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_37

    :cond_36
    move v3, v0

    :goto_37
    sub-int v0, v3, v5

    .line 33
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_48

    sub-int v0, v2, v4

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_54

    .line 35
    :cond_48
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    :cond_54
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 1
    const-string p1, "MediaView: onPrepared"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    .line 3
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    return-void

    .line 6
    :cond_10
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p2, "surfaceTexture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p2

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_1c

    .line 2
    :cond_10
    :goto_10
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_e

    return-void

    .line 6
    :goto_1c
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 0
    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 0
    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 0
    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 1
    iput p2, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 2
    iput p3, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateTextureLayoutParams()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 3

    if-nez p1, :cond_a

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    goto :goto_d

    .line 5
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    .line 8
    :cond_d
    :goto_d
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pausePlayer()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    goto :goto_26

    .line 2
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_17

    :catch_15
    move-exception v0

    goto :goto_23

    .line 5
    :cond_17
    :goto_17
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    if-eq v0, v1, :cond_26

    .line 6
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_15

    return-void

    .line 9
    :goto_23
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final prepareMediaPlayer()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPublicData;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2f

    .line 2
    :cond_b
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPreparing:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v1, :cond_2f

    .line 3
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_28

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_28

    :catch_26
    move-exception v0

    goto :goto_2c

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPreparing:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_26

    return-void

    .line 10
    :goto_2c
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final processErrorEvent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lio/bidmachine/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->SHOWING:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    :cond_f
    return-void
.end method

.method public final processEvent(Lio/bidmachine/iab/vast/TrackingEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lio/bidmachine/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->fireUrls(Ljava/util/List;)V

    .line 4
    :cond_1f
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    if-ne p1, v0, :cond_2a

    .line 5
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lio/bidmachine/nativead/NativeInteractor;->dispatchVideoPlayFinished()V

    :cond_2a
    return-void
.end method

.method public final processImpressions()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lio/bidmachine/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->fireUrls(Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final release()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final setInitialized(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    return-void
.end method

.method public final setNativeAdObject(Lio/bidmachine/nativead/NativeAdObject;)V
    .registers 4

    const-string v0, "nativeAdObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAdObject;->getTag()Lio/bidmachine/util/Tag;

    move-result-object v0

    const-string v1, "nativeAdObject.tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p1, p1}, Lio/bidmachine/nativead/view/MediaView;->applyNative(Ljava/lang/Object;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;Lio/bidmachine/nativead/NativeInteractor;)V

    return-void
.end method

.method public final setNativeData(Lio/bidmachine/nativead/NativeData;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    return-void
.end method

.method public final setNativeInteractor(Lio/bidmachine/nativead/NativeInteractor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    return-void
.end method

.method public final setNativeMediaData(Lio/bidmachine/nativead/NativeMediaPrivateData;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-void
.end method

.method public final startVideoVisibilityCheckerTimer()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 5
    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    .line 7
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;

    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    const/16 v0, 0x1f4

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    .line 8
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final stopVideoVisibilityCheckerTimer()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    return-void
.end method

.method public final tryPlayVideo()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_49

    .line 2
    :cond_b
    :goto_b
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-nez v1, :cond_12

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V

    .line 5
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 6
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-eqz v1, :cond_4f

    .line 7
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->viewOnScreen:Z

    if-eqz v1, :cond_4f

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isAdOnScreen()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_39

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->notifyVideoStarted()V

    .line 12
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    if-nez v1, :cond_39

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->startVideoVisibilityCheckerTimer()V

    .line 16
    :cond_39
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_4f

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    if-eq v0, v1, :cond_4f

    .line 17
    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_9

    return-void

    .line 21
    :goto_49
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError()V

    :cond_4f
    return-void
.end method

.method public final updateMuteButton()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_1f

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="

    invoke-static {v1}, Lio/bidmachine/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 4
    :cond_12
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_1f

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="

    invoke-static {v1}, Lio/bidmachine/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1f
    return-void
.end method

.method public final updateTextureLayoutParams()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_3c

    if-nez v1, :cond_d

    goto :goto_3c

    .line 6
    :cond_d
    iget-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    if-eqz v2, :cond_3c

    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    if-eqz v2, :cond_3c

    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    if-nez v2, :cond_1a

    goto :goto_3c

    :cond_1a
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 10
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-nez v2, :cond_22

    goto :goto_3c

    .line 11
    :cond_22
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 12
    iget v4, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    iget v5, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    if-le v4, v5, :cond_33

    .line 13
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v0, v5

    .line 14
    div-int/2addr v0, v4

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_39

    :cond_33
    mul-int/2addr v4, v1

    .line 16
    div-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    :goto_39
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final updateViewState(Lio/bidmachine/nativead/view/NativeState;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    .line 2
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_c5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_50

    if-eq p1, v2, :cond_19

    goto/16 :goto_f3

    .line 44
    :cond_19
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_23

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 48
    :cond_23
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_f3

    .line 49
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    if-nez p1, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_2f
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 51
    :cond_36
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-nez p1, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_3e
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    if-nez p1, :cond_43

    goto :goto_46

    :cond_43
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_46
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-nez p1, :cond_4c

    goto/16 :goto_f3

    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 54
    :cond_50
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-nez p1, :cond_55

    goto :goto_58

    :cond_55
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_58
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_f3

    .line 56
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-nez p1, :cond_61

    goto :goto_64

    :cond_61
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_64
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 58
    :cond_6b
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-nez p1, :cond_70

    goto :goto_73

    :cond_70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_73
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 60
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    .line 61
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    if-nez p1, :cond_82

    goto :goto_85

    :cond_82
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_85
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    if-nez p1, :cond_8b

    goto/16 :goto_f3

    :cond_8b
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 63
    :cond_8f
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_99

    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 67
    :cond_99
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_f3

    .line 68
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    if-nez p1, :cond_a2

    goto :goto_a5

    :cond_a2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_a5
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_ac

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 70
    :cond_ac
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-nez p1, :cond_b1

    goto :goto_b4

    :cond_b1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_b4
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    if-nez p1, :cond_b9

    goto :goto_bc

    :cond_b9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_bc
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-nez p1, :cond_c1

    goto :goto_f3

    :cond_c1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 73
    :cond_c5
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_cf

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 77
    :cond_cf
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_f3

    .line 78
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    if-nez p1, :cond_d8

    goto :goto_db

    :cond_d8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_db
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    if-nez p1, :cond_e0

    goto :goto_e3

    :cond_e0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_e3
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    if-nez p1, :cond_e8

    goto :goto_eb

    :cond_e8
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_eb
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lio/bidmachine/iab/vast/view/CircleCountdownView;

    if-nez p1, :cond_f0

    goto :goto_f3

    :cond_f0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public final updateVolume()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    .line 5
    :cond_13
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1c
    return-void
.end method

.method public final videoFinished()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->notifyVideoFinished()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_17
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    return-void
.end method

.method public videoPlayerActivityClosed(IZ)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    if-eqz p2, :cond_10

    .line 4
    :try_start_a
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->videoFinished()V

    return-void

    :catch_e
    move-exception p1

    goto :goto_1e

    .line 5
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 6
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_21

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_e

    return-void

    .line 9
    :goto_1e
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_21
    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView.Companion (io.bidmachine.nativead.view.MediaView$Companion)
.class public final Lio/bidmachine/nativead/view/MediaView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView.WhenMappings (io.bidmachine.nativead.view.MediaView$WhenMappings)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/nativead/view/NativeState;->values()[Lio/bidmachine/nativead/view/NativeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/nativead/view/MediaView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView.AnonymousClass1 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1)
.class public final Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->startVideoVisibilityCheckerTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public static synthetic $r8$lambda$CUAn9M83DQaMUwzG-GvIXkd8-eM(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$5(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ddll8LoP7lT38gRnNBraYNAL7ag(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$0(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HS1N4_AsBf0OfDj2LJ_jnpV13R8(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b3fk6JvrtOg3f9L34jk1BRtCHII(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j3eMDFACAFDLxya02XCOxBlXZeo(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vHNHFrNWooH_eYx1v1DnI-nVovs(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->run$lambda$4(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static final run$lambda$0(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView;->access$pausePlayer(Lio/bidmachine/nativead/view/MediaView;)V

    .line 2
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView;->access$getFinishedOrExpanded$p(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    :cond_11
    return-void
.end method

.method public static final run$lambda$1(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final run$lambda$2(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video at first quartile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final run$lambda$3(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video at midpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final run$lambda$4(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video at third quartile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final run$lambda$5(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView;->access$tryPlayVideo(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$getError$p(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$clearPlayerOnError(Lio/bidmachine/nativead/view/MediaView;)V

    return-void

    .line 5
    :cond_e
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$isAdOnScreen(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 6
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-static {v1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_f1

    return-void

    .line 14
    :cond_21
    :try_start_21
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$getMediaPlayer$p(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 15
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$isMediaPlayerAvailable(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getError$p(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v1

    if-nez v1, :cond_db

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 16
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    if-nez v1, :cond_50

    .line 17
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v1, v2}, Lio/bidmachine/nativead/view/MediaView;->access$setVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;I)V

    .line 19
    :cond_50
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    if-eqz v1, :cond_db

    .line 20
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 21
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getVideoDuration$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    div-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_db

    .line 23
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_88

    .line 24
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 25
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->access$processEvent(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    goto :goto_d1

    .line 26
    :cond_88
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    if-ne v1, v2, :cond_a0

    .line 27
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 28
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->access$processEvent(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    goto :goto_d1

    .line 29
    :cond_a0
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b9

    .line 30
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 31
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->access$processEvent(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    goto :goto_d1

    .line 32
    :cond_b9
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d1

    .line 33
    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 34
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->access$processEvent(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 36
    :cond_d1
    :goto_d1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$getQuartile$p(Lio/bidmachine/nativead/view/MediaView;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->access$setQuartile$p(Lio/bidmachine/nativead/view/MediaView;I)V

    .line 40
    :cond_db
    const-string v0, "MediaView is on screen"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    new-instance v1, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-static {v1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_ea
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_ea} :catch_eb
    .catchall {:try_start_21 .. :try_end_ea} :catchall_f1

    return-void

    .line 43
    :catch_eb
    :try_start_eb
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$clearPlayerOnError(Lio/bidmachine/nativead/view/MediaView;)V
    :try_end_f0
    .catchall {:try_start_eb .. :try_end_f0} :catchall_f1

    goto :goto_f6

    .line 47
    :catchall_f1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$clearPlayerOnError(Lio/bidmachine/nativead/view/MediaView;)V

    :goto_f6
    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$Ddll8LoP7lT38gRnNBraYNAL7ag(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$j3eMDFACAFDLxya02XCOxBlXZeo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2;->f$0:I

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$b3fk6JvrtOg3f9L34jk1BRtCHII(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3;->f$0:I

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$HS1N4_AsBf0OfDj2LJ_jnpV13R8(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4;->f$0:I

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$vHNHFrNWooH_eYx1v1DnI-nVovs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5 (io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView$startVideoVisibilityCheckerTimer$1;->$r8$lambda$CUAn9M83DQaMUwzG-GvIXkd8-eM(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda0 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;->f$0:I

    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;->f$0:I

    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$v0MotAonysAxwZpcurLKmiL6W8M(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda1 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$YcQdmzPoaeLpRwD50YBiRDCSNGw(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda2 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$lrrNgkXmcdJo9hKIP-NTVOIR5x8(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda3 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;

.field public final synthetic f$1:Landroid/view/TextureView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/nativead/view/MediaView;

    iput-object p2, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;->f$1:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda3;->f$1:Landroid/view/TextureView;

    invoke-static {v0, v1, p1}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$DpYPwMNCt14hp_efu9TE6yf-huc(Lio/bidmachine/nativead/view/MediaView;Landroid/view/TextureView;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda4 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$-WnFODZRQ3uCOfUpAZ0qvCXro9Y(Lio/bidmachine/nativead/view/MediaView;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda5 (io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/nativead/view/MediaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->$r8$lambda$-oACvfsUiwCFD5MCXnybwYTjwC4(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$createVideoView$listener$1 (io.bidmachine.nativead.view.MediaView$createVideoView$listener$1)
.class public final Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createVideoView(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoFileUri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string p1, "MediaView video is loaded"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/MediaView;->getNativeMediaData()Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-interface {p1, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 3
    :cond_1a
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$prepareMediaPlayer(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string p1, "MediaView video is not loaded"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$updateViewState(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$setHasVideo$p(Lio/bidmachine/nativead/view/MediaView;Z)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.MediaView$createVideoView$listener$2 (io.bidmachine.nativead.view.MediaView$createVideoView$listener$2)
.class public final Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createVideoView(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 5

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoFileUri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastRequest"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string p1, "MediaView video is loaded"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/MediaView;->getNativeMediaData()Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-interface {p1, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 3
    :cond_1f
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/MediaView;->getNativeMediaData()Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2b

    :cond_28
    invoke-interface {p1, p3}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVastRequest(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 4
    :goto_2b
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$prepareMediaPlayer(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string p1, "MediaView video is not loaded"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$updateViewState(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$createVideoView$listener$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$setHasVideo$p(Lio/bidmachine/nativead/view/MediaView;Z)V

    return-void
.end method
