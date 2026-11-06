###### Class io.bidmachine.iab.mraid.WebViewGestureDetector (io.bidmachine.iab.mraid.WebViewGestureDetector)
.class public final Lio/bidmachine/iab/mraid/WebViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final getClickPoint()Landroid/graphics/Point;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->a()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final getClickTimeMs()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isClicked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->c()Z

    move-result v0

    return v0
.end method

.method public final resetClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->d()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.WebViewGestureDetector.a (io.bidmachine.iab.mraid.WebViewGestureDetector$a)
.class public final Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/WebViewGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public volatile b:J

.field public volatile c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Point;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->b:J

    return-wide v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->a:Z

    return v0
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->a:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->c:Landroid/graphics/Point;

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->a:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->b:J

    .line 5
    invoke-static {p1}, Lio/bidmachine/util/UiUtilsKt;->isRealMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 7
    :goto_25
    iput-object v0, p0, Lio/bidmachine/iab/mraid/WebViewGestureDetector$a;->c:Landroid/graphics/Point;

    .line 12
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
