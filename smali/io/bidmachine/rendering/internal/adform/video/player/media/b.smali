###### Class io.bidmachine.rendering.internal.adform.video.player.media.b (io.bidmachine.rendering.internal.adform.video.player.media.b)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/view/a;

.field public b:Lio/bidmachine/rendering/internal/adform/video/player/media/c;

.field public c:Landroid/media/MediaPlayer;

.field public d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/view/a;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/view/a;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)Lkotlin/Unit;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Landroid/view/Surface;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)Lkotlin/Unit;
    .registers 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p1

    :catchall_a
    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Landroid/view/Surface;)Lkotlin/Unit;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b()V

    .line 5
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    .line 6
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_7
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    return-void
.end method

.method public final getListener()Lio/bidmachine/rendering/internal/adform/video/player/media/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b:Lio/bidmachine/rendering/internal/adform/video/player/media/c;

    return-object v0
.end method

.method public final setListener(Lio/bidmachine/rendering/internal/adform/video/player/media/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b:Lio/bidmachine/rendering/internal/adform/video/player/media/c;

    return-void
.end method

.method public final setMediaPlayer(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Landroid/view/Surface;)Lkotlin/Unit;

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1e

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setVideoAspectRatio(F)V

    .line 5
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 8
    :cond_1e
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Landroid/view/Surface;)Lkotlin/Unit;

    return-void
.end method

.method public final setVideoAspectRatio(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/a;->setVideoAspectRatio(F)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.b.a (io.bidmachine.rendering.internal.adform.video.player.media.b$a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setVideoAspectRatio(F)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.media.b.C1174b (io.bidmachine.rendering.internal.adform.video.player.media.b$b)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/adform/video/player/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p2, "surfaceTexture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 2
    invoke-static {p1, p3}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)Lkotlin/Unit;

    .line 3
    invoke-static {p2, p3}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->getListener()Lio/bidmachine/rendering/internal/adform/video/player/media/c;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/c;->a()V

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
