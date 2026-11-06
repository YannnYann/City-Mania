###### Class ads_mobile_sdk.u9 (ads_mobile_sdk.u9)
.class public final Lads_mobile_sdk/u9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ty3;

.field public b:Lads_mobile_sdk/t9;

.field public c:Lads_mobile_sdk/s9;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lads_mobile_sdk/ty3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/ty3;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lads_mobile_sdk/u9;->a:Lads_mobile_sdk/ty3;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 126
    iget-object v0, p0, Lads_mobile_sdk/u9;->a:Lads_mobile_sdk/ty3;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_17

    .line 128
    iget-object v1, p0, Lads_mobile_sdk/u9;->c:Lads_mobile_sdk/s9;

    if-eqz v1, :cond_14

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lads_mobile_sdk/u9;->c:Lads_mobile_sdk/s9;

    .line 132
    :cond_14
    invoke-virtual {p0, v0}, Lads_mobile_sdk/u9;->c(Landroid/view/View;)V

    .line 134
    :cond_17
    iget-object v0, p0, Lads_mobile_sdk/u9;->a:Lads_mobile_sdk/ty3;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    if-nez v0, :cond_3b

    .line 62
    new-instance v0, Lads_mobile_sdk/t9;

    invoke-direct {v0}, Lads_mobile_sdk/t9;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 70
    invoke-static {}, Lads_mobile_sdk/cf2;->a()Lads_mobile_sdk/cf2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    sget-object p1, Lads_mobile_sdk/l9;->d:Lads_mobile_sdk/l9;

    .line 72
    invoke-virtual {p1}, Lads_mobile_sdk/sn;->a()Z

    move-result v0

    .line 73
    iget-boolean v1, p1, Lads_mobile_sdk/sn;->b:Z

    if-eq v1, v0, :cond_3b

    .line 74
    iput-boolean v0, p1, Lads_mobile_sdk/sn;->b:Z

    .line 75
    iget-boolean v1, p1, Lads_mobile_sdk/sn;->a:Z

    if-eqz v1, :cond_3b

    .line 76
    invoke-virtual {p1, v0}, Lads_mobile_sdk/l9;->a(Z)V

    .line 77
    iget-object p1, p1, Lads_mobile_sdk/sn;->c:Lads_mobile_sdk/rn;

    if-eqz p1, :cond_3b

    .line 78
    invoke-interface {p1, v0}, Lads_mobile_sdk/rn;->a(Z)V

    :cond_3b
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    .line 20
    invoke-virtual {p0}, Lads_mobile_sdk/u9;->a()V

    if-nez p1, :cond_6

    goto :goto_20

    .line 24
    :cond_6
    new-instance v0, Lads_mobile_sdk/ty3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/ty3;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lads_mobile_sdk/u9;->a:Lads_mobile_sdk/ty3;

    .line 25
    new-instance v0, Lads_mobile_sdk/s9;

    invoke-direct {v0, p0}, Lads_mobile_sdk/s9;-><init>(Lads_mobile_sdk/u9;)V

    iput-object v0, p0, Lads_mobile_sdk/u9;->c:Lads_mobile_sdk/s9;

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 43
    invoke-virtual {p0, p1}, Lads_mobile_sdk/u9;->a(Landroid/view/View;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    if-eqz v0, :cond_1a

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_17
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lads_mobile_sdk/u9;->b:Lads_mobile_sdk/t9;

    :cond_1a
    return-void
.end method
