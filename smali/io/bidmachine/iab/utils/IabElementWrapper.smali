###### Class io.bidmachine.iab.utils.IabElementWrapper (io.bidmachine.iab.utils.IabElementWrapper)
.class public abstract Lio/bidmachine/iab/utils/IabElementWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View;

.field public c:Lio/bidmachine/iab/utils/IabElementStyle;

.field public d:Z

.field public final e:Ljava/lang/Runnable;

.field public final f:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->d:Z

    .line 152
    new-instance v0, Lio/bidmachine/iab/utils/IabElementWrapper$a;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/utils/IabElementWrapper$a;-><init>(Lio/bidmachine/iab/utils/IabElementWrapper;)V

    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->e:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lio/bidmachine/iab/utils/IabElementWrapper$b;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/utils/IabElementWrapper$b;-><init>(Lio/bidmachine/iab/utils/IabElementWrapper;)V

    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->f:Landroid/animation/Animator$AnimatorListener;

    .line 169
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/IabElementWrapper;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->f:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/IabElementWrapper;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->d:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 5

    .line 4
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getWidth(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getHeight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4

    .line 0
    return-void
.end method

.method public a(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4

    .line 6
    instance-of v0, p1, Lio/bidmachine/iab/utils/IabElement;

    if-eqz v0, :cond_9

    .line 7
    check-cast p1, Lio/bidmachine/iab/utils/IabElement;

    invoke-interface {p1, p2}, Lio/bidmachine/iab/utils/IabElement;->setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;Lio/bidmachine/iab/utils/IabElementStyle;)Z
    .registers 4

    .line 8
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "elementStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->c(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/bidmachine/iab/utils/IabElementStyle;->copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p3

    .line 2
    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    return-void

    .line 7
    :cond_16
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    invoke-virtual {p3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->applyAlignment(Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_37

    .line 12
    :cond_27
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_89

    .line 13
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 15
    invoke-virtual {p3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 20
    :goto_37
    invoke-virtual {p3, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 21
    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v1, :cond_55

    iget-object v2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-eqz v2, :cond_55

    .line 23
    invoke-virtual {p0, v1, v2, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;Lio/bidmachine/iab/utils/IabElementStyle;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_55

    .line 28
    :cond_49
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 30
    :cond_55
    :goto_55
    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :goto_63
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-virtual {p3}, Lio/bidmachine/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iput-object p3, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 42
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 43
    iget-object p2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void

    .line 44
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent should be instance of FrameLayout or RelativeLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
.end method

.method public bringToFront()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_7
    return-void
.end method

.method public abstract c(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
.end method

.method public cancelHide()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->d:Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-nez v1, :cond_c

    goto :goto_2f

    .line 5
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {v1}, Lio/bidmachine/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public detach()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementWrapper;->cancelHide()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    :cond_11
    return-void
.end method

.method public invalidate()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementWrapper;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-eqz v1, :cond_19

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    iget-object v2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V

    :cond_19
    return-void
.end method

.method public isAttached()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setVisibility(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public toggleHide()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->d:Z

    if-eqz v0, :cond_5

    goto :goto_30

    .line 4
    :cond_5
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-nez v0, :cond_e

    goto :goto_30

    .line 7
    :cond_e
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getHideAfter()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 8
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1e

    goto :goto_30

    :cond_1e
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->d:Z

    .line 12
    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    iget-object v2, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->e:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    :goto_30
    return-void
.end method

.method public toggleShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-nez v0, :cond_9

    goto :goto_f

    .line 4
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementWrapper;->cancelHide()V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementWrapper;->toggleHide()V

    :cond_f
    :goto_f
    return-void
.end method

###### Class io.bidmachine.iab.utils.IabElementWrapper.a (io.bidmachine.iab.utils.IabElementWrapper$a)
.class public Lio/bidmachine/iab/utils/IabElementWrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/IabElementWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/IabElementWrapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabElementWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementWrapper$a;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper$a;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Lio/bidmachine/iab/utils/IabElementWrapper;Z)Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementWrapper$a;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    iget-object v1, v0, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz v1, :cond_2d

    iget-object v0, v0, Lio/bidmachine/iab/utils/IabElementWrapper;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    if-nez v0, :cond_11

    goto :goto_2d

    .line 5
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/utils/IabElementWrapper$a;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    .line 8
    invoke-static {v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->a(Lio/bidmachine/iab/utils/IabElementWrapper;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_2d
    :goto_2d
    return-void
.end method

###### Class io.bidmachine.iab.utils.IabElementWrapper.b (io.bidmachine.iab.utils.IabElementWrapper$b)
.class public Lio/bidmachine/iab/utils/IabElementWrapper$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/IabElementWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/IabElementWrapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabElementWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementWrapper$b;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementWrapper$b;->a:Lio/bidmachine/iab/utils/IabElementWrapper;

    iget-object p1, p1, Lio/bidmachine/iab/utils/IabElementWrapper;->b:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_18
    return-void
.end method
