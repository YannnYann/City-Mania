###### Class io.bidmachine.rendering.internal.adform.video.a (io.bidmachine.rendering.internal.adform.video.a)
.class public final Lio/bidmachine/rendering/internal/adform/video/a;
.super Lio/bidmachine/rendering/internal/adform/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/a$a;,
        Lio/bidmachine/rendering/internal/adform/video/a$b;
    }
.end annotation


# instance fields
.field public final x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

.field public y:Lio/bidmachine/rendering/internal/adform/video/player/b;

.field public z:Lio/bidmachine/rendering/model/MediaSource;


# direct methods
.method public static synthetic $r8$lambda$4-d1PznXAv-3Yl1br78Qed7rclE(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->h(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EykTdeTM2lM5TKmhjpTIkI6B4Us(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->e(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F8Aot2HBRR49jV2b6RkzbqACBpE(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->b(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LgLF9UGmxBHCx4f3ksnp0dOjgbM(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->f(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qbm2zmarXebGN-YRohD2Hk-9glM(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RfK6otXv46nHYz92xbKR4lipGS0(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->i(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fs-OXVVf8TQxDy1na9Jm36NT6v8(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMhIJAFK8CrhE_DaezFKvm1Nl0o(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1IgwzFFWKyf_5iwVWE6ZB5Oo-k(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->d(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSfvrfgxlrg1zAIyrmPpxKYU3S8(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->g(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/VideoMeasurer;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElementParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/rendering/internal/adform/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    move-object p1, p0

    .line 2
    iput-object p8, p1, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/internal/adform/c;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rootContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    .line 61
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz p0, :cond_19

    if-eqz v0, :cond_19

    .line 62
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->o()Landroid/view/View;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewAddedToContainer(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_19
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lio/bidmachine/rendering/internal/w;->b(Ljava/lang/Integer;)V

    :cond_c
    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/c;->a(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/rendering/internal/adform/video/player/b;

    move-result-object p1

    .line 34
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$a;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->a(Lio/bidmachine/rendering/internal/adform/video/player/d;)V

    .line 36
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_23

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->o()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewCreated(Landroid/view/View;)V

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_4a

    .line 37
    :cond_23
    :goto_23
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdElementParams;->isPrerender()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 43
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->A()Lio/bidmachine/rendering/Repository;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->z()Ljava/lang/Object;

    move-result-object v0

    .line 46
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/a$b;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/a$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    .line 47
    invoke-interface {p1, p2, v0, v1}, Lio/bidmachine/rendering/Repository;->getVideo(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V

    return-void

    .line 53
    :cond_40
    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a;->z:Lio/bidmachine/rendering/model/MediaSource;

    .line 54
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_21

    return-void

    .line 57
    :goto_4a
    invoke-static {p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {p1}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method private final a(Lio/bidmachine/util/Error;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onError(Lio/bidmachine/util/Error;)V

    .line 69
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/c;->a(Lio/bidmachine/rendering/internal/adform/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/internal/adform/video/player/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->b(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public static final b(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lio/bidmachine/rendering/internal/w;->a(Ljava/lang/Integer;)V

    :cond_c
    return-void
.end method

.method private final b(Lio/bidmachine/util/Error;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onError(Lio/bidmachine/util/Error;)V

    .line 6
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    return-object p0
.end method

.method public static final d(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->destroy()V

    :cond_c
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    return-void
.end method

.method public static final e(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->M()V

    return-void
.end method

.method public static final f(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->pause()V

    :cond_c
    return-void
.end method

.method public static final g(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->play()V

    :cond_c
    return-void
.end method

.method public static final h(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lio/bidmachine/rendering/internal/A;->l()V

    :cond_c
    return-void
.end method

.method public static final i(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lio/bidmachine/rendering/internal/E;->n()V

    :cond_c
    return-void
.end method


# virtual methods
.method public B()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->y:Lio/bidmachine/rendering/internal/adform/video/player/b;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->o()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_f

    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->destroy(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_15

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->M()V

    :cond_15
    return-void
.end method

.method public G()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/a;->G()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onShown()V

    :cond_a
    return-void
.end method

.method public I()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/a;->I()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->b(Z)V

    return-void
.end method

.method public J()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->b(Z)V

    return-void
.end method

.method public K()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->A()Lio/bidmachine/rendering/Repository;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a;->z:Lio/bidmachine/rendering/model/MediaSource;

    if-nez v1, :cond_9

    return-void

    .line 3
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->z()Ljava/lang/Object;

    move-result-object v2

    .line 4
    new-instance v3, Lio/bidmachine/rendering/internal/adform/video/a$b;

    invoke-direct {v3, p0}, Lio/bidmachine/rendering/internal/adform/video/a$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lio/bidmachine/rendering/Repository;->getVideo(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V

    return-void
.end method

.method public final M()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()V
    .registers 5

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdElementParams;->getResource()Lio/bidmachine/rendering/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/Resource;->getSource()Lio/bidmachine/rendering/model/ResourceSource;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1d

    .line 5
    new-instance v0, Lio/bidmachine/util/Error;

    const-string v1, "Resource is missing"

    invoke-direct {v0, v1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/util/Error;)V

    return-void

    .line 10
    :cond_1d
    instance-of v1, v0, Lio/bidmachine/rendering/model/UrlResourceSource;

    if-eqz v1, :cond_6a

    .line 11
    check-cast v0, Lio/bidmachine/rendering/model/UrlResourceSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/UrlResourceSource;->getUrls()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 22
    new-instance v1, Lio/bidmachine/util/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid adm url ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/util/Error;)V

    return-void

    .line 25
    :cond_4c
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/MediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v0

    sget-object v2, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    if-ne v0, v2, :cond_57

    .line 26
    const-string v0, "exo"

    goto :goto_61

    .line 28
    :cond_57
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v0

    const-string v2, "player"

    invoke-virtual {v0, v2}, Lio/bidmachine/rendering/model/AdElementParams;->getCustomParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_61
    new-instance v2, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V

    invoke-static {v2}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 32
    :cond_6a
    new-instance v1, Lio/bidmachine/util/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), it should be UrlResourceSource"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "rootContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 63
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a;->x:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onClicked()V

    .line 65
    :cond_7
    invoke-super {p0, p1, p2}, Lio/bidmachine/rendering/internal/G;->a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 3

    .line 67
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 3

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .registers 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->n()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->play()V

    return-void

    .line 4
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->pause()V

    return-void
.end method

.method public l()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a.C1170a (io.bidmachine.rendering.internal.adform.video.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/video/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/adform/video/player/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaFirstQuartile()V

    .line 3
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->m()V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/adform/video/player/b;F)V
    .registers 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1, p2}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaVolumeChanged(F)V

    :cond_10
    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/adform/video/player/b;J)V
    .registers 7

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object v0

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2, p3}, Lio/bidmachine/rendering/internal/event/a;->a(JJ)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/adform/video/player/b;Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/a;->b(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/adform/video/player/b;Z)V
    .registers 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/a;->j()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p2, :cond_23

    .line 8
    iget-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/bidmachine/rendering/internal/event/a;->b(Ljava/lang/Integer;)V

    return-void

    .line 10
    :cond_23
    iget-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/bidmachine/rendering/internal/event/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->G()V

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaResumed()V

    .line 4
    :cond_15
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->b()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/adform/video/player/b;Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public c(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaPaused()V

    .line 2
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->i()V

    return-void
.end method

.method public d(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaSkipped()V

    .line 2
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->d()V

    return-void
.end method

.method public e(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaThirdQuartile()V

    .line 2
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->c()V

    return-void
.end method

.method public f(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->o()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewReady(Landroid/view/View;)V

    .line 2
    :cond_14
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/internal/adform/c;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/a;->D()V

    return-void
.end method

.method public g(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 5

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->d()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->getVolume()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaStarted(FF)V

    .line 2
    :cond_19
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->n()V

    return-void
.end method

.method public h(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaMidpoint()V

    .line 2
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->k()V

    return-void
.end method

.method public i(Lio/bidmachine/rendering/internal/adform/video/player/b;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/a;->c(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaCompleted()V

    .line 2
    :cond_10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$a;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->a()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a.b (io.bidmachine.rendering.internal.adform.video.a$b)
.class public final Lio/bidmachine/rendering/internal/adform/video/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/Repository$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public static synthetic $r8$lambda$olS0WGCss_LY1OPcUiXdnPZAt-0(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$b;->a(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    invoke-static {p0}, Lio/bidmachine/rendering/internal/adform/video/a;->b(Lio/bidmachine/rendering/internal/adform/video/a;)Lio/bidmachine/rendering/internal/adform/video/player/b;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/b;->a(Landroid/net/Uri;)V

    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/adform/video/player/b;->prepare()V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/adform/video/a;->a(Lio/bidmachine/rendering/internal/adform/video/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/Error;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$b;->onError(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .registers 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$b;->a:Lio/bidmachine/rendering/internal/adform/video/a;

    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V

    invoke-static {v1}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/a$b;->onSuccess(Landroid/net/Uri;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$b$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.adform.video.a$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a$b$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/a$b;->$r8$lambda$olS0WGCss_LY1OPcUiXdnPZAt-0(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/net/Uri;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$LgLF9UGmxBHCx4f3ksnp0dOjgbM(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/MediaSource;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/rendering/model/MediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/rendering/model/MediaSource;

    invoke-static {v0, v1, v2}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$fs-OXVVf8TQxDy1na9Jm36NT6v8(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda2 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$pSfvrfgxlrg1zAIyrmPpxKYU3S8(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda3 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$EykTdeTM2lM5TKmhjpTIkI6B4Us(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda4 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$mMhIJAFK8CrhE_DaezFKvm1Nl0o(Lio/bidmachine/rendering/internal/adform/video/a;Landroid/view/ViewGroup;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda5 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$p1IgwzFFWKyf_5iwVWE6ZB5Oo-k(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda6 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$4-d1PznXAv-3Yl1br78Qed7rclE(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda7 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$Qbm2zmarXebGN-YRohD2Hk-9glM(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda8 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$F8Aot2HBRR49jV2b6RkzbqACBpE(Lio/bidmachine/rendering/internal/adform/video/a;Ljava/lang/Integer;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda9 (io.bidmachine.rendering.internal.adform.video.a$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/adform/video/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/a$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/rendering/internal/adform/video/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/video/a;->$r8$lambda$RfK6otXv46nHYz92xbKR4lipGS0(Lio/bidmachine/rendering/internal/adform/video/a;)V

    return-void
.end method
