###### Class com.vungle.ads.internal.ui.view.d (com.vungle.ads.internal.ui.view.d)
.class public final Lcom/vungle/ads/internal/ui/view/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Z

.field public final b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public d:F

.field public e:Landroid/view/TextureView;

.field public f:Landroid/view/Surface;

.field public g:Landroid/media/MediaPlayer;

.field public h:Landroid/net/Uri;

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Lcom/vungle/ads/nativead/b;

.field public u:Lcom/vungle/ads/internal/ui/view/b;

.field public v:I

.field public final w:Landroid/os/Handler;

.field public final x:Lcom/vungle/ads/internal/ui/view/a;

.field public y:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/vungle/ads/internal/ui/view/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda4;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 4
    new-instance p2, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda5;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const p2, 0x3c23d70a    # 0.01f

    .line 5
    iput p2, p0, Lcom/vungle/ads/internal/ui/view/d;->d:F

    .line 6
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/vungle/ads/internal/ui/view/d;->v:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/vungle/ads/internal/ui/view/a;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/view/a;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    .line 31
    sget-object v0, Lcom/vungle/ads/internal/ui/view/c;->a:Lcom/vungle/ads/internal/ui/view/c;

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->y:Lkotlin/jvm/functions/Function0;

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->c()V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v0, :cond_e

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/m;->b()V

    .line 3
    :cond_e
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    if-lez v0, :cond_27

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 8
    :cond_27
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    :goto_2f
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    :cond_36
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 11
    const-string v0, "onPrepared(): duration="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms lastPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wantPlay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v2, "NativeAd-Video"

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-ne v0, v1, :cond_79

    .line 308
    const-string v0, "start video on prepared."

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 310
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->f()V

    :cond_79
    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;II)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_1b

    if-lez p3, :cond_1b

    .line 314
    iput p2, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    .line 315
    iput p3, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    .line 316
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 317
    :cond_18
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->a()V

    :cond_1b
    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->c()V

    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "NativeAd-Video"

    const-string v0, "onCompletion()"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p1, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    iput p1, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->b()V

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/vungle/ads/internal/ui/view/d;->v:I

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v0, :cond_2c

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/view/m;->a(I)V

    .line 9
    :cond_2c
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz p0, :cond_4c

    check-cast p0, Lcom/vungle/ads/internal/ui/view/m;

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v0, "video.close"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;I)V

    .line 12
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-interface {p0}, Lcom/vungle/ads/nativead/NativeVideoListener;->onVideoEnd()V

    :cond_4c
    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;II)Z
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError(): what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeAd-Video"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz p0, :cond_3d

    check-cast p0, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/ui/view/m;->a(Ljava/lang/String;I)V

    :cond_3d
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic getMediaPlayerFactory$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getSurface$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getTexture$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 318
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    if-lez v0, :cond_77

    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    if-gtz v0, :cond_9

    goto :goto_77

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_77

    if-nez v1, :cond_1a

    goto :goto_77

    :cond_1a
    int-to-float v0, v0

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 324
    iget v3, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 326
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    cmpl-float v2, v2, v3

    if-lez v2, :cond_34

    .line 328
    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    int-to-float v2, v2

    div-float v2, v1, v2

    goto :goto_39

    .line 330
    :cond_34
    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 332
    :goto_39
    iget v3, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    .line 333
    iget v5, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v0, v6

    div-float v8, v1, v6

    .line 334
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 335
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 336
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 338
    iget v3, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 339
    iget v4, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    sub-float/2addr v1, v4

    div-float/2addr v1, v6

    .line 342
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->u:Lcom/vungle/ads/internal/ui/view/b;

    if-eqz v2, :cond_77

    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, v1

    invoke-interface {v2, v3, v0}, Lcom/vungle/ads/internal/ui/view/b;->a(FF)V

    :cond_77
    :goto_77
    return-void
.end method

.method public final b()V
    .registers 7

    .line 18
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    if-lez v0, :cond_2c

    .line 19
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 20
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->getCurrentPositionMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x64

    int-to-long v4, v3

    mul-long/2addr v1, v4

    int-to-long v4, v0

    .line 21
    div-long/2addr v1, v4

    long-to-int v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/vungle/ads/internal/ui/view/d;->v:I

    if-eq v0, v1, :cond_2c

    .line 23
    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->v:I

    .line 24
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v1, :cond_2c

    check-cast v1, Lcom/vungle/ads/internal/ui/view/m;

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/ui/view/m;->a(I)V

    :cond_2c
    return-void
.end method

.method public final c()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->a:Z

    if-nez v0, :cond_6

    goto/16 :goto_88

    .line 2
    :cond_6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->e()Z

    move-result v0

    const-string v1, "NativeAd-Video"

    const/4 v2, 0x1

    if-eqz v0, :cond_6c

    .line 3
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->l:Z

    if-nez v0, :cond_6c

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-ne v0, v2, :cond_68

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-ne v0, v2, :cond_34

    return-void

    :cond_34
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    if-nez v0, :cond_88

    .line 6
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 8
    const-string v0, "auto-resume: visibility OK, start() at pos="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 517
    :cond_64
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->f()V

    return-void

    .line 520
    :cond_68
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->k()V

    return-void

    .line 523
    :cond_6c
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-ne v0, v2, :cond_88

    .line 524
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "auto-pause: visibility NOT enough"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->g()V

    :cond_88
    :goto_88
    return-void
.end method

.method public final d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->y:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

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
    new-instance v1, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 34
    new-instance v1, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 42
    new-instance v1, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 51
    new-instance v1, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda3;-><init>(Lcom/vungle/ads/internal/ui/view/d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 52
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    return-void
.end method

.method public final e()Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 6
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_31

    return v1

    :cond_31
    long-to-float v0, v2

    long-to-float v2, v4

    div-float/2addr v0, v2

    .line 11
    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3c

    const/4 v0, 0x1

    return v0

    :cond_3c
    return v1
.end method

.method public final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v0, :cond_1d

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    .line 4
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/vungle/ads/nativead/NativeVideoListener;->onVideoPlay()V

    :cond_1d
    return-void
.end method

.method public final g()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    const-string v1, "NativeAd-Video"

    if-eqz v0, :cond_4c

    .line 2
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 4
    const-string v2, "pauseInternal(): pos="

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 335
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->b()V

    .line 337
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v1, :cond_53

    check-cast v1, Lcom/vungle/ads/internal/ui/view/m;

    .line 338
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/e;->getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v1}, Lcom/vungle/ads/nativead/NativeVideoListener;->onVideoPause()V

    goto :goto_53

    .line 339
    :cond_4c
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "pauseInternal(): no-op (not playing or no player)"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_53
    :goto_53
    :try_start_53
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_60

    :catchall_5c
    move-exception v0

    goto :goto_69

    :cond_5e
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    :goto_60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_5c

    goto :goto_73

    :goto_69
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_73
    iget v1, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    move-object v0, v1

    :cond_80
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    return-void
.end method

.method public final getCurrentPositionMs()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 2
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_18

    :catchall_14
    move-exception v0

    goto :goto_21

    :cond_16
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_14

    goto :goto_2b

    :goto_21
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2b
    iget v2, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    move-object v0, v2

    :cond_38
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 3
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    return v0

    .line 5
    :cond_43
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    return v0
.end method

.method public final getDurationMs()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    return v0
.end method

.method public final getMediaPlayerFactory$vungle_ads_release()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->y:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSurface$vungle_ads_release()Landroid/view/Surface;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    return-object v0
.end method

.method public final getTexture$vungle_ads_release()Landroid/view/TextureView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    return-object v0
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->g()V

    return-void
.end method

.method public final i()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ui/view/d;->l:Z

    .line 3
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    .line 4
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 6
    const-string v1, "play(): prepared="

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v3

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "NativeAd-Video"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-ne v1, v0, :cond_90

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->e()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 167
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-ne v1, v0, :cond_64

    return-void

    .line 169
    :cond_64
    const-string v0, "play(): pos="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 330
    :cond_8c
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->f()V

    return-void

    .line 333
    :cond_90
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->k()V

    return-void
.end method

.method public final j()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->l:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->i()V

    :cond_f
    return-void
.end method

.method public final k()V
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->h:Landroid/net/Uri;

    if-nez v0, :cond_8

    goto/16 :goto_b0

    .line 3
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_b0

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_b0

    .line 4
    :cond_1a
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->d()V

    .line 6
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_33

    :catchall_31
    move-exception v0

    goto :goto_8e

    .line 9
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-nez v1, :cond_38

    goto :goto_3d

    :cond_38
    iget-boolean v2, p0, Lcom/vungle/ads/internal/ui/view/d;->p:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 10
    :goto_3d
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_46

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 11
    :cond_46
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_51

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 12
    :cond_51
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "NativeAd-Video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync(): uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", surfaceValid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_76

    :cond_75
    move-object v0, v3

    :goto_76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    :cond_89
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_31

    goto :goto_98

    :goto_8e
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    :goto_98
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v1, :cond_b0

    check-cast v1, Lcom/vungle/ads/internal/ui/view/m;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/ui/view/m;->a(Ljava/lang/String;I)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public final l()V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "release()"

    const-string v1, "NativeAd-Video"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() at pos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :cond_21
    move-object v2, v3

    :goto_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->l:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    .line 5
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->g()V

    .line 6
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v4, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :try_start_41
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4f

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_50

    :catchall_4d
    move-exception v2

    goto :goto_55

    :cond_4f
    move-object v2, v3

    :goto_50
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_4d

    goto :goto_5f

    :goto_55
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_5f
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 8
    sget-boolean v4, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v4, "Failed to clear Surface"

    invoke-static {v1, v4, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_79

    :catchall_76
    move-exception v2

    goto :goto_7e

    :cond_78
    move-object v2, v3

    :goto_79
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_76

    goto :goto_88

    :goto_7e
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_88
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 11
    sget-boolean v4, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v4, "Failed to stop MediaPlayer"

    invoke-static {v1, v4, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_95
    :try_start_95
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_a2

    :catchall_9f
    move-exception v2

    goto :goto_a7

    :cond_a1
    move-object v2, v3

    :goto_a2
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a6
    .catchall {:try_start_95 .. :try_end_a6} :catchall_9f

    goto :goto_b1

    :goto_a7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_b1
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 14
    sget-boolean v4, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v4, "Failed to release MediaPlayer"

    invoke-static {v1, v4, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_be
    iput-object v3, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    .line 17
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 18
    :cond_c7
    iput-object v3, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    .line 19
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final m()V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoVisibility enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " threshold="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeAd-Video"

    invoke-static {v3, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ui/view/d;->a:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v0

    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->d:F

    .line 4
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->c()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "NativeAd-Video"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "NativeAd-Video"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->g()V

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_28
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string v0, "st"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2
    :cond_c
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    .line 3
    :try_start_13
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_21

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_22

    :catchall_1f
    move-exception p1

    goto :goto_27

    :cond_21
    const/4 p1, 0x0

    :goto_22
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_1f

    goto :goto_31

    :goto_27
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "NativeAd-Video"

    if-eqz v0, :cond_40

    .line 4
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "Failed to set surface"

    invoke-static {v1, v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_40
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    .line 6
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", prepared="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", wantPlay="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", surfaceRet="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {v1, p2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_eb

    .line 14
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_eb

    iget-boolean p1, p0, Lcom/vungle/ads/internal/ui/view/d;->k:Z

    if-eqz p1, :cond_eb

    .line 15
    const-string p1, "onSurfaceTextureAvailable and videoCompleted="

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 439
    iget-boolean p2, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean p1, p0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    if-nez p1, :cond_ad

    .line 441
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_a9

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 442
    :cond_a9
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->f()V

    goto :goto_ee

    .line 445
    :cond_ad
    iget p1, p0, Lcom/vungle/ads/internal/ui/view/d;->n:I

    const/4 p2, 0x0

    .line 446
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    .line 447
    const-string p1, "seekTo "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 448
    iget p2, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 450
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_d9

    iget p2, p0, Lcom/vungle/ads/internal/ui/view/d;->m:I

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 451
    :cond_d9
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->b()V

    .line 452
    :cond_dc
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_e3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 453
    :cond_e3
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_ee

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_ee

    .line 458
    :cond_eb
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->k()V

    .line 461
    :cond_ee
    :goto_ee
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->a()V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const-string v0, "st"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "onSurfaceTextureDestroyed()"

    const-string v0, "NativeAd-Video"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->g()V

    const/4 p1, 0x0

    .line 4
    :try_start_12
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_21

    :catchall_1e
    move-exception v1

    goto :goto_26

    :cond_20
    move-object v1, p1

    :goto_21
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_1e

    goto :goto_30

    :goto_26
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_30
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 5
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "Failed to clear surface"

    invoke-static {v0, v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_3d
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 7
    :cond_44
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    .line 8
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->x:Lcom/vungle/ads/internal/ui/view/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    const-string v0, "st"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged() width="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeAd-Video"

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->a()V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 0
    const-string v0, "st"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setLooping(Z)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 2
    const-string v0, "setLooping to "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    iget-boolean v1, p0, Lcom/vungle/ads/internal/ui/view/d;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd-Video"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/view/d;->p:Z

    .line 221
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public final setMediaPlayerFactory$vungle_ads_release(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->y:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setMuted(Z)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMuted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd-Video"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    goto :goto_20

    :cond_1e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    :goto_20
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    :cond_27
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    if-eqz v0, :cond_67

    check-cast v0, Lcom/vungle/ads/internal/ui/view/m;

    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v2, "video.mute"

    invoke-static {p1, v2}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/16 v2, 0x9

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-interface {p1}, Lcom/vungle/ads/nativead/NativeVideoListener;->onVideoMute()V

    return-void

    .line 10
    :cond_4c
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v2, "video.unmute"

    invoke-static {p1, v2}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/16 v2, 0xa

    .line 12
    invoke-virtual {p1, v2, v1}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/e;->getNativeVideoListener()Lcom/vungle/ads/nativead/NativeVideoListener;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-interface {p1}, Lcom/vungle/ads/nativead/NativeVideoListener;->onVideoUnmute()V

    :cond_67
    return-void
.end method

.method public final setSource(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->h:Landroid/net/Uri;

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->r:I

    .line 5
    iput v0, p0, Lcom/vungle/ads/internal/ui/view/d;->s:I

    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/d;->k()V

    return-void
.end method

.method public final setSurface$vungle_ads_release(Landroid/view/Surface;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->f:Landroid/view/Surface;

    return-void
.end method

.method public final setTexture$vungle_ads_release(Landroid/view/TextureView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->e:Landroid/view/TextureView;

    return-void
.end method

.method public final setVideoLifecycleCallback(Lcom/vungle/ads/nativead/b;)V
    .registers 3

    const-string v0, "lifecycleCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->t:Lcom/vungle/ads/nativead/b;

    return-void
.end method

.method public final setVideoTransformCallback$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d;->u:Lcom/vungle/ads/internal/ui/view/b;

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/ui/view/d;->a(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda1 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0, p1, p2, p3}, Lcom/vungle/ads/internal/ui/view/d;->a(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;II)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda2 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/ui/view/d;->b(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda3 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda3;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda3;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0, p1, p2, p3}, Lcom/vungle/ads/internal/ui/view/d;->b(Lcom/vungle/ads/internal/ui/view/d;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda4 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda4;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda4;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/d;->b(Lcom/vungle/ads/internal/ui/view/d;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda5 (com.vungle.ads.internal.ui.view.d$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda5;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/d$$ExternalSyntheticLambda5;->f$0:Lcom/vungle/ads/internal/ui/view/d;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/d;->a(Lcom/vungle/ads/internal/ui/view/d;)V

    return-void
.end method
