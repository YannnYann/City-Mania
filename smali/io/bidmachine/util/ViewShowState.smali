###### Class io.bidmachine.util.ViewShowState (io.bidmachine.util.ViewShowState)
.class public final Lio/bidmachine/util/ViewShowState;
.super Ljava/lang/Object;
.source "ViewShowState.kt"


# instance fields
.field public index:I

.field public layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public weakParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lio/bidmachine/util/ViewShowState;->index:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 26
    iget-object v0, p0, Lio/bidmachine/util/ViewShowState;->weakParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lio/bidmachine/util/ViewShowState;->weakParent:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object v0, p0, Lio/bidmachine/util/ViewShowState;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lio/bidmachine/util/ViewShowState;->index:I

    return-void
.end method

.method public final restoreViewShowState(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/bidmachine/util/ViewShowState;->weakParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    iget v1, p0, Lio/bidmachine/util/ViewShowState;->index:I

    iget-object v2, p0, Lio/bidmachine/util/ViewShowState;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, p1, v1, v2}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 22
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/util/ViewShowState;->clear()V

    return-void
.end method

.method public final saveViewShowState(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-void

    .line 15
    :cond_14
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/bidmachine/util/ViewShowState;->weakParent:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/util/ViewShowState;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/util/ViewShowState;->index:I

    return-void
.end method
