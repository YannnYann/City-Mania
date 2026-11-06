###### Class io.bidmachine.iab.view.CloseableLayout (io.bidmachine.iab.view.CloseableLayout)
.class public Lio/bidmachine/iab/view/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/view/CloseableLayout$c;,
        Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;,
        Lio/bidmachine/iab/view/CloseableLayout$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/view/CloseableLayout$c;

.field public b:Lio/bidmachine/iab/utils/IabCloseWrapper;

.field public c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

.field public d:Lio/bidmachine/iab/view/CloseableLayout$b;

.field public e:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

.field public f:Lio/bidmachine/iab/utils/IabElementStyle;

.field public g:Lio/bidmachine/iab/utils/IabElementStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lio/bidmachine/iab/view/CloseableLayout$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout$c;-><init>(Lio/bidmachine/iab/view/CloseableLayout$a;)V

    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/view/CloseableLayout;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->c()V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->e:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/utils/IabCountDownWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->b()V

    .line 6
    new-instance v0, Lio/bidmachine/iab/view/CloseableLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/view/CloseableLayout$b;-><init>(Lio/bidmachine/iab/view/CloseableLayout;Lio/bidmachine/iab/view/CloseableLayout$a;)V

    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$b;

    const-wide/16 v1, 0x32

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-eqz p1, :cond_a

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->bringToFront()V

    .line 6
    :cond_a
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz p1, :cond_11

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->bringToFront()V

    :cond_11
    return-void
.end method

.method public final b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$b;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$b;

    :cond_a
    return-void
.end method

.method public final c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 6
    :cond_f
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-nez v0, :cond_1b

    .line 7
    new-instance v0, Lio/bidmachine/iab/utils/IabCountDownWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabCountDownWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    .line 9
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {v0, v1, p0, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->a()V

    return-void

    .line 12
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->b()V

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-nez v0, :cond_3d

    .line 14
    new-instance v0, Lio/bidmachine/iab/utils/IabCloseWrapper;

    new-instance v1, Lio/bidmachine/iab/view/CloseableLayout$a;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/view/CloseableLayout$a;-><init>(Lio/bidmachine/iab/view/CloseableLayout;)V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/IabCloseWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    .line 23
    :cond_3d
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {v0, v1, p0, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz v0, :cond_4f

    .line 25
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    :cond_4f
    return-void
.end method

.method public canBeClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->a()Z

    move-result v0

    return v0
.end method

.method public getOnScreenTimeMs()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->d()Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_9

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->b()V

    goto :goto_1c

    .line 5
    :cond_9
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {p1}, Lio/bidmachine/iab/view/CloseableLayout$c;->c()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {p1}, Lio/bidmachine/iab/view/CloseableLayout$c;->d()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->a()V

    .line 8
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    if-nez p2, :cond_22

    const/4 p2, 0x1

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    invoke-static {p1, p2}, Lio/bidmachine/iab/view/CloseableLayout$c;->a(Lio/bidmachine/iab/view/CloseableLayout$c;Z)V

    return-void
.end method

.method public setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->e:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    return-void
.end method

.method public setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    :cond_15
    return-void
.end method

.method public setCloseVisibility(ZF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "closeTimeSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->a(Lio/bidmachine/iab/view/CloseableLayout$c;)Z

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->b(Lio/bidmachine/iab/view/CloseableLayout$c;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$c;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/iab/view/CloseableLayout$c;->a(ZF)V

    if-nez p1, :cond_2c

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lio/bidmachine/iab/utils/IabCloseWrapper;

    if-eqz p1, :cond_21

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 9
    :cond_21
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz p1, :cond_28

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 12
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->b()V

    return-void

    .line 15
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->c()V

    return-void
.end method

.method public setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lio/bidmachine/iab/utils/IabCountDownWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    :cond_15
    return-void
.end method

###### Class io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener (io.bidmachine.iab.view.CloseableLayout$OnCloseClickListener)
.class public interface abstract Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/view/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCloseClickListener"
.end annotation


# virtual methods
.method public abstract onCloseClick()V
.end method

.method public abstract onCountDownFinish()V
.end method

###### Class io.bidmachine.iab.view.CloseableLayout.a (io.bidmachine.iab.view.CloseableLayout$a)
.class public Lio/bidmachine/iab/view/CloseableLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/view/CloseableLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/view/CloseableLayout;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$a;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$a;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {p1}, Lio/bidmachine/iab/view/CloseableLayout;->b(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$a;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {p1}, Lio/bidmachine/iab/view/CloseableLayout;->b(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;->onCloseClick()V

    :cond_11
    return-void
.end method

###### Class io.bidmachine.iab.view.CloseableLayout.b (io.bidmachine.iab.view.CloseableLayout$b)
.class public Lio/bidmachine/iab/view/CloseableLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/view/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/view/CloseableLayout;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;Lio/bidmachine/iab/view/CloseableLayout$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout$b;-><init>(Lio/bidmachine/iab/view/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->c(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/utils/IabCountDownWrapper;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_8a

    .line 4
    :cond_a
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->c(Lio/bidmachine/iab/view/CloseableLayout$c;)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_57

    add-long/2addr v0, v3

    .line 7
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/iab/view/CloseableLayout$c;->a(J)V

    .line 8
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->c(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/utils/IabCountDownWrapper;

    move-result-object v2

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v0

    iget-object v7, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 9
    invoke-static {v7}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v7

    invoke-static {v7}, Lio/bidmachine/iab/view/CloseableLayout$c;->d(Lio/bidmachine/iab/view/CloseableLayout$c;)J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-int v5, v5

    iget-object v6, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 10
    invoke-static {v6}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/iab/view/CloseableLayout$c;->d(Lio/bidmachine/iab/view/CloseableLayout$c;)J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 11
    invoke-virtual {v2, v5, v6}, Lio/bidmachine/iab/utils/IabCountDownWrapper;->changePercentage(II)V

    .line 16
    :cond_57
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout$c;->d(Lio/bidmachine/iab/view/CloseableLayout$c;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_8b

    .line 17
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->a(Lio/bidmachine/iab/view/CloseableLayout;)V

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->d(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$c;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$c;->b(Lio/bidmachine/iab/view/CloseableLayout$c;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8a

    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->b(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->b(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;->onCountDownFinish()V

    :cond_8a
    :goto_8a
    return-void

    .line 22
    :cond_8b
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.bidmachine.iab.view.CloseableLayout.c (io.bidmachine.iab.view.CloseableLayout$c)
.class public Lio/bidmachine/iab/view/CloseableLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/view/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->b:F

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->c:J

    .line 7
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    .line 9
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    .line 10
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/view/CloseableLayout$a;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/view/CloseableLayout$c;Z)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout$c;->a(Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/view/CloseableLayout$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Z

    return p0
.end method

.method public static synthetic b(Lio/bidmachine/iab/view/CloseableLayout$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->b:F

    return p0
.end method

.method public static synthetic c(Lio/bidmachine/iab/view/CloseableLayout$c;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lio/bidmachine/iab/view/CloseableLayout$c;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .registers 3

    .line 7
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    return-void
.end method

.method public final a(Z)V
    .registers 10

    .line 9
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 10
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->f:J

    :cond_14
    if-eqz p1, :cond_1d

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    return-void

    .line 15
    :cond_1d
    iput-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    return-void
.end method

.method public a(ZF)V
    .registers 3

    .line 3
    iput-boolean p1, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Z

    .line 4
    iput p2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->b:F

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p1

    float-to-long p1, p2

    .line 5
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->c:J

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    return-void
.end method

.method public a()Z
    .registers 5

    .line 8
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .registers 7

    .line 2
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->f:J

    .line 3
    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->e:J

    sub-long/2addr v0, v2

    :cond_11
    return-wide v0
.end method

.method public c()Z
    .registers 5

    .line 2
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->d:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Z

    return v0
.end method
