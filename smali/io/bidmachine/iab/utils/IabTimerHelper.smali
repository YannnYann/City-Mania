###### Class io.bidmachine.iab.utils.IabTimerHelper (io.bidmachine.iab.utils.IabTimerHelper)
.class public Lio/bidmachine/iab/utils/IabTimerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;

.field public c:Z

.field public d:F

.field public e:J

.field public f:J

.field public final g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->c:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->d:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->e:J

    .line 5
    iput-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->f:J

    .line 60
    new-instance v0, Lio/bidmachine/iab/utils/IabTimerHelper$a;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/utils/IabTimerHelper$a;-><init>(Lio/bidmachine/iab/utils/IabTimerHelper;)V

    iput-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 67
    new-instance v1, Lio/bidmachine/iab/utils/IabTimerHelper$b;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/utils/IabTimerHelper$b;-><init>(Lio/bidmachine/iab/utils/IabTimerHelper;)V

    iput-object v1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->h:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->b:Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->a()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/IabTimerHelper;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->a()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/IabTimerHelper;J)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/IabTimerHelper;->a(J)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/utils/IabTimerHelper;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->f:J

    return-wide v0
.end method

.method public static synthetic c(Lio/bidmachine/iab/utils/IabTimerHelper;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/utils/IabTimerHelper;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->e:J

    return-wide v0
.end method

.method public static synthetic e(Lio/bidmachine/iab/utils/IabTimerHelper;)Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->b:Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 5
    iget-boolean v1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->c:Z

    if-ne v1, v0, :cond_b

    goto :goto_1c

    .line 8
    :cond_b
    iput-boolean v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->c:Z

    if-nez v0, :cond_13

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->stop()V

    return-void

    .line 11
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->isTicking()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->start()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 3
    iput-wide p1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->f:J

    return-void
.end method

.method public detach()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->stop()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public isTicking()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->f:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public setTime(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeSec"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iput p1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->d:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 5
    iput-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->e:J

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabTimerHelper;->start()V

    return-void
.end method

.method public start()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    goto :goto_1a

    .line 4
    :cond_11
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->a:Landroid/view/View;

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabTimerHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.iab.utils.IabTimerHelper.TimerHelperCallback (io.bidmachine.iab.utils.IabTimerHelper$TimerHelperCallback)
.class public interface abstract Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/IabTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimerHelperCallback"
.end annotation


# virtual methods
.method public abstract onTimerFinish()V
.end method

.method public abstract onTimerTick(FJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "percent",
            "currentTimeMs",
            "totalTimeMs"
        }
    .end annotation
.end method

###### Class io.bidmachine.iab.utils.IabTimerHelper.a (io.bidmachine.iab.utils.IabTimerHelper$a)
.class public Lio/bidmachine/iab/utils/IabTimerHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/IabTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/IabTimerHelper;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabTimerHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabTimerHelper$a;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper$a;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->a(Lio/bidmachine/iab/utils/IabTimerHelper;)V

    return-void
.end method

###### Class io.bidmachine.iab.utils.IabTimerHelper.b (io.bidmachine.iab.utils.IabTimerHelper$b)
.class public Lio/bidmachine/iab/utils/IabTimerHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/IabTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/IabTimerHelper;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabTimerHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->b(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->c(Lio/bidmachine/iab/utils/IabTimerHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_4c

    .line 3
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->d(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v5

    add-long/2addr v0, v3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2, v0, v1}, Lio/bidmachine/iab/utils/IabTimerHelper;->a(Lio/bidmachine/iab/utils/IabTimerHelper;J)V

    .line 5
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->b(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v5

    long-to-float v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    iget-object v5, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v5}, Lio/bidmachine/iab/utils/IabTimerHelper;->d(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v5

    long-to-float v5, v5

    div-float v7, v2, v5

    .line 6
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->e(Lio/bidmachine/iab/utils/IabTimerHelper;)Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;

    move-result-object v6

    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->b(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v8

    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->d(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;->onTimerTick(FJJ)V

    .line 8
    :cond_4c
    iget-object v2, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v2}, Lio/bidmachine/iab/utils/IabTimerHelper;->d(Lio/bidmachine/iab/utils/IabTimerHelper;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_60

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->e(Lio/bidmachine/iab/utils/IabTimerHelper;)Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;->onTimerFinish()V

    return-void

    .line 11
    :cond_60
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabTimerHelper$b;->a:Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-static {v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->c(Lio/bidmachine/iab/utils/IabTimerHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
