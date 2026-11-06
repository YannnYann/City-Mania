###### Class io.bidmachine.internal.C4228l (io.bidmachine.internal.l)
.class public final Lio/bidmachine/internal/l;
.super Lio/bidmachine/util/AutoSizeTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/l$a;
    }
.end annotation


# instance fields
.field public a:Lio/bidmachine/internal/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/util/AutoSizeTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/internal/l;->b()V

    .line 6
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .registers 4

    const-string v0, "baseAutoSizeView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/l;->b()V

    .line 2
    new-instance v0, Lio/bidmachine/internal/l$a;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/internal/l$a;-><init>(Landroid/view/View;F)V

    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/l$a;->a(Landroid/view/View;)V

    .line 4
    iput-object v0, p0, Lio/bidmachine/internal/l;->a:Lio/bidmachine/internal/l$a;

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/l;->a:Lio/bidmachine/internal/l$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/internal/l$a;->a()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/internal/l;->a:Lio/bidmachine/internal/l$a;

    return-void
.end method

###### Class io.bidmachine.internal.C4228l.a (io.bidmachine.internal.l$a)
.class public final Lio/bidmachine/internal/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public final b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .registers 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/bidmachine/internal/l$a;->a:F

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/internal/l$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/internal/l$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_f
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/internal/l$a;->c:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-nez p1, :cond_3

    goto :goto_18

    :cond_3
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    iget p1, p0, Lio/bidmachine/internal/l$a;->d:I

    if-ne p4, p1, :cond_e

    iget p1, p0, Lio/bidmachine/internal/l$a;->e:I

    if-ne p5, p1, :cond_e

    goto :goto_18

    .line 4
    :cond_e
    iget-object p1, p0, Lio/bidmachine/internal/l$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_19

    :goto_18
    return-void

    .line 6
    :cond_19
    iput p4, p0, Lio/bidmachine/internal/l$a;->d:I

    .line 7
    iput p5, p0, Lio/bidmachine/internal/l$a;->e:I

    mul-int/2addr p5, p4

    int-to-float p2, p5

    .line 9
    iget p3, p0, Lio/bidmachine/internal/l$a;->a:F

    mul-float/2addr p2, p3

    int-to-float p3, p4

    div-float/2addr p2, p3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_34

    .line 14
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    float-to-int p2, p2

    invoke-direct {p3, p4, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 16
    :cond_34
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int p2, p2

    .line 17
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
