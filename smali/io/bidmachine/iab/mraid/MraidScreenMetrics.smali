###### Class io.bidmachine.iab.mraid.MraidScreenMetrics (io.bidmachine.iab.mraid.MraidScreenMetrics)
.class public Lio/bidmachine/iab/mraid/MraidScreenMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11

    const-string v0, "screenRectPx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenRectDp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootViewRectPx"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootViewRectDp"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdRectPx"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdRectDp"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAdRectPx"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAdRectDp"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a:F

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->b:Landroid/graphics/Rect;

    .line 4
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->c:Landroid/graphics/Rect;

    .line 5
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->d:Landroid/graphics/Rect;

    .line 6
    iput-object p5, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->e:Landroid/graphics/Rect;

    .line 7
    iput-object p6, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->f:Landroid/graphics/Rect;

    .line 8
    iput-object p7, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->g:Landroid/graphics/Rect;

    .line 9
    iput-object p8, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->h:Landroid/graphics/Rect;

    .line 10
    iput-object p9, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenDensity(Landroid/content/Context;)F

    move-result v2

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 15
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 16
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 17
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 18
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 19
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 20
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;-><init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .registers 9

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_17

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_17

    add-int v0, p3, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_17

    add-int v0, p4, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    add-int/2addr p5, p3

    add-int/2addr p6, p4

    .line 2
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget p3, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a:F

    invoke-static {p2, p1, p3}, Lio/bidmachine/util/UtilsKt;->setDpFromPx(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    const/4 p1, 0x1

    return p1
.end method

.method public final getCurrentAdRectDp()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getDefaultAdRectDp()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getRootViewRectDp()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getScreenRectDp()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final setCurrentAdPosition(IIII)Z
    .registers 12

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->f:Landroid/graphics/Rect;

    .line 2
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->g:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public final setDefaultAdPosition(IIII)Z
    .registers 12

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->h:Landroid/graphics/Rect;

    .line 2
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->i:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public final setRootViewPosition(IIII)Z
    .registers 12

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->d:Landroid/graphics/Rect;

    .line 2
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->e:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public final setScreenSize(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v0, p2, :cond_12

    goto :goto_13

    :cond_12
    return v1

    .line 2
    :cond_13
    :goto_13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->c:Landroid/graphics/Rect;

    iget-object p2, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->b:Landroid/graphics/Rect;

    iget v0, p0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->a:F

    invoke-static {p1, p2, v0}, Lio/bidmachine/util/UtilsKt;->setDpFromPx(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    const/4 p1, 0x1

    return p1
.end method
