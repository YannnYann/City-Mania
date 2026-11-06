###### Class io.bidmachine.rendering.internal.adform.video.player.media.a (io.bidmachine.rendering.internal.adform.video.player.media.a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.super Lio/bidmachine/rendering/internal/adform/video/player/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;
    }
.end annotation


# static fields
.field public static final r:Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;

.field public static final s:Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final n:Landroid/content/Context;

.field public o:Landroid/media/MediaPlayer;

.field public final p:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

.field public q:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->r:Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;

    .line 1
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "MediaPlayerReleaseProcess"

    invoke-direct {v0, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->s:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->n:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->P()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setListener(Lio/bidmachine/rendering/internal/adform/video/player/media/c;)V

    .line 7
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 8
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->p:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->q:F

    return-void
.end method


# virtual methods
.method public final P()Landroid/media/MediaPlayer;
    .registers 4

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 14
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 15
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 16
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 17
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-object v0
.end method

.method public a()J
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public a(J)V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;)V
    .registers 10

    const-string v0, "mediaPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v1, 0x0

    .line 10
    :try_start_16
    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    .line 12
    :catchall_1b
    sget-object v2, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->s:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;

    invoke-direct {v5, p1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;-><init>(Landroid/media/MediaPlayer;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public b()J
    .registers 3

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "videoUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->a(Landroid/media/MediaPlayer;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->d(Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    return-void
.end method

.method public c()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->q:F

    return v0
.end method

.method public c(F)V
    .registers 2

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->q:F

    .line 4
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(F)V

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(F)V

    return-void
.end method

.method public final d(Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->P()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2
    iget v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->q:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->n:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->p:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->destroy()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->p:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public o()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a;->p:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    return-object v0
.end method

.method public y()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->y()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->q()V

    return-void
.end method

.method public z()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->z()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->r()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.C1173a (io.bidmachine.rendering.internal.adform.video.player.media.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.b (io.bidmachine.rendering.internal.adform.video.player.media.a$b)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/adform/video/player/media/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->C()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    new-instance v1, Lio/bidmachine/util/Error;

    const-string v2, "Surface Destroyed"

    invoke-direct {v1, v2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Lio/bidmachine/util/Error;)V

    :cond_14
    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.c (io.bidmachine.rendering.internal.adform.video.player.media.a$c)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->I()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.d (io.bidmachine.rendering.internal.adform.video.player.media.a$d)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$d;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    new-instance v0, Lio/bidmachine/util/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer - onError (what - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra - "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Lio/bidmachine/util/Error;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.e (io.bidmachine.rendering.internal.adform.video.player.media.a$e)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$e;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->s()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.f (io.bidmachine.rendering.internal.adform.video.player.media.a$f)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$f;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Ljava/lang/Long;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.a.g (io.bidmachine.rendering.internal.adform.video.player.media.a$g)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/a;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->c:Landroid/media/MediaPlayer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->c:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;-><init>(Landroid/media/MediaPlayer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->a:I

    if-nez v0, :cond_1f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->c:Landroid/media/MediaPlayer;

    .line 3
    :try_start_10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    .line 5
    :catchall_15
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/a$g;->c:Landroid/media/MediaPlayer;

    .line 6
    :try_start_17
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 8
    :catchall_1c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
