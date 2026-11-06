###### Class io.bidmachine.rendering.internal.adform.a (io.bidmachine.rendering.internal.adform.a)
.class public abstract Lio/bidmachine/rendering/internal/adform/a;
.super Lio/bidmachine/rendering/internal/G;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/b;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lio/bidmachine/rendering/utils/VisibilityChanger;


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Lio/bidmachine/rendering/Repository;

.field public final f:Lio/bidmachine/rendering/model/AdElementParams;

.field public final g:Lio/bidmachine/rendering/internal/adform/c;

.field public final h:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

.field public final i:Landroid/content/Context;

.field public final j:Lio/bidmachine/rendering/model/AppearanceParams;

.field public final k:Lio/bidmachine/rendering/internal/H;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;

.field public final q:Lio/bidmachine/rendering/internal/e;

.field public r:Landroid/view/ViewGroup;

.field public volatile s:Z

.field public volatile t:Z

.field public volatile u:Z

.field public volatile v:Z

.field public volatile w:Lio/bidmachine/rendering/model/ElementLayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .registers 9

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
    invoke-direct {p0, p6}, Lio/bidmachine/rendering/internal/G;-><init>(Lio/bidmachine/rendering/internal/event/a;)V

    .line 2
    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/a;->d:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lio/bidmachine/rendering/internal/adform/a;->e:Lio/bidmachine/rendering/Repository;

    .line 4
    iput-object p4, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    .line 5
    iput-object p5, p0, Lio/bidmachine/rendering/internal/adform/a;->g:Lio/bidmachine/rendering/internal/adform/c;

    .line 7
    iput-object p7, p0, Lio/bidmachine/rendering/internal/adform/a;->h:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->i:Landroid/content/Context;

    .line 11
    invoke-virtual {p4}, Lio/bidmachine/rendering/model/AdElementParams;->getAppearanceParams()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    .line 12
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AppearanceParams;->getBackground()Lio/bidmachine/rendering/model/Background;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_48

    invoke-static {p2, p1, p3}, Lio/bidmachine/rendering/internal/I;->a(Lio/bidmachine/rendering/model/Background;Landroid/content/Context;Lio/bidmachine/rendering/Repository;)Lio/bidmachine/rendering/internal/H;

    move-result-object p1

    goto :goto_49

    :cond_48
    move-object p1, p4

    :goto_49
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->k:Lio/bidmachine/rendering/internal/H;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    new-instance p1, Lio/bidmachine/rendering/internal/e;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p2, p4}, Lio/bidmachine/rendering/internal/e;-><init>(Lio/bidmachine/rendering/internal/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->q:Lio/bidmachine/rendering/internal/e;

    .line 28
    iput-boolean p2, p0, Lio/bidmachine/rendering/internal/adform/a;->t:Z

    .line 32
    iget-boolean p1, p0, Lio/bidmachine/rendering/internal/adform/a;->t:Z

    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/adform/a;->v:Z

    return-void
.end method


# virtual methods
.method public final A()Lio/bidmachine/rendering/Repository;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->e:Lio/bidmachine/rendering/Repository;

    return-object v0
.end method

.method public abstract B()Landroid/view/View;
.end method

.method public final C()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final D()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->g:Lio/bidmachine/rendering/internal/adform/c;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/c;->e(Lio/bidmachine/rendering/internal/adform/a;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->u()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->t()V

    return-void
.end method

.method public E()V
    .registers 1

    .line 0
    return-void
.end method

.method public F()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/a;->s:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->v()V

    return-void
.end method

.method public G()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/a;->s:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->v()V

    return-void
.end method

.method public final H()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->h:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i()V

    :cond_7
    return-void
.end method

.method public I()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->F()V

    return-void
.end method

.method public J()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->G()V

    return-void
.end method

.method public K()V
    .registers 1

    .line 0
    return-void
.end method

.method public final L()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->B()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/AppearanceParams;->getPadding()Lio/bidmachine/rendering/model/Padding;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3
    invoke-virtual {v2}, Lio/bidmachine/rendering/model/Padding;->isZero()Z

    move-result v3

    if-nez v3, :cond_32

    .line 4
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/a;->i:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 6
    invoke-static {v3, v2}, Lio/bidmachine/rendering/model/PaddingKt;->setPadding(Landroid/view/View;Lio/bidmachine/rendering/model/Padding;)V

    .line 9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 10
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iput-object v3, p0, Lio/bidmachine/rendering/internal/adform/a;->r:Landroid/view/ViewGroup;

    .line 25
    :cond_32
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->j()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_39

    return v1

    .line 26
    :cond_39
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->generateViewId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 27
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AppearanceParams;->getClickable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 30
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_5d
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AppearanceParams;->getOpacity()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 35
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    :cond_6c
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AppearanceParams;->getVisible()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/adform/a;->setVisibility(Z)V

    .line 42
    :cond_7b
    instance-of v1, v0, Lio/bidmachine/rendering/internal/g;

    if-eqz v1, :cond_87

    .line 43
    check-cast v0, Lio/bidmachine/rendering/internal/g;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/g;->a(Lio/bidmachine/rendering/model/AppearanceParams;)V

    goto :goto_8c

    .line 45
    :cond_87
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->k:Lio/bidmachine/rendering/internal/H;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/adform/a;->a(Landroid/view/View;Lio/bidmachine/rendering/internal/H;)V

    :goto_8c
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 12

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->k:Lio/bidmachine/rendering/internal/H;

    if-eqz v1, :cond_21

    .line 12
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/a;->d:Ljava/lang/Object;

    .line 15
    new-instance v3, Lio/bidmachine/rendering/internal/H$a;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/H$a;-><init>(JLandroid/animation/TimeInterpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v3

    move-object v3, p1

    .line 16
    invoke-static/range {v1 .. v9}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    goto :goto_22

    :cond_21
    move-object v3, p1

    .line 22
    :goto_22
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->h:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    if-eqz p1, :cond_29

    invoke-virtual {p1, v3}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Landroid/view/View;)V

    .line 23
    :cond_29
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->g:Lio/bidmachine/rendering/internal/adform/c;

    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/adform/c;->a(Lio/bidmachine/rendering/internal/adform/a;)V

    return-void
.end method

.method public a(Landroid/view/View;Lio/bidmachine/rendering/internal/H;)V
    .registers 13

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    .line 2
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/a;->d:Ljava/lang/Object;

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v1, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public a(Lio/bidmachine/iab/utils/ClickAreaFactory;)V
    .registers 3

    const-string v0, "clickAreaFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/a;->a(Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->B()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    .line 7
    :goto_10
    invoke-interface {v0, v1, p1}, Lio/bidmachine/rendering/internal/event/a;->a(ILio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/ElementLayoutParams;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a;->w:Lio/bidmachine/rendering/model/ElementLayoutParams;

    return-void
.end method

.method public final a(ZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 7

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->q:Lio/bidmachine/rendering/internal/e;

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->j()Landroid/view/View;

    move-result-object v1

    .line 10
    new-instance v2, Lio/bidmachine/rendering/internal/adform/a$a;

    invoke-direct {v2, p0, p1, p3}, Lio/bidmachine/rendering/internal/adform/a$a;-><init>(Lio/bidmachine/rendering/internal/adform/a;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->u()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->t()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/G;->destroy()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->q:Lio/bidmachine/rendering/internal/e;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/e;->a()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->k:Lio/bidmachine/rendering/internal/H;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/H;->a()V

    .line 5
    :cond_f
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->h:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c()V

    .line 6
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->E()V

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->I()V

    return-void
.end method

.method public final g()Lio/bidmachine/rendering/model/AdElementParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    return-object v0
.end method

.method public j()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->B()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdElementParams;->isPrerender()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 4
    :cond_9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_25

    .line 9
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->K()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    .line 11
    invoke-static {v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->g:Lio/bidmachine/rendering/internal/adform/c;

    invoke-static {v0}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lio/bidmachine/rendering/internal/adform/c;->a(Lio/bidmachine/rendering/internal/adform/a;Lio/bidmachine/util/Error;)V

    :goto_25
    return-void
.end method

.method public lockVisibility(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/a;->setVisibility(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/adform/a;->u:Z

    return-void
.end method

.method public m()Lio/bidmachine/rendering/model/ElementLayoutParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->w:Lio/bidmachine/rendering/model/ElementLayoutParams;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/a;->a(Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 4
    invoke-static {p2}, Lio/bidmachine/util/UiUtilsKt;->isRealMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    invoke-static {p2, p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->toClickData(Landroid/view/MotionEvent;Landroid/view/View;)Lio/bidmachine/rendering/model/ClickData;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 6
    :goto_1d
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/a;->a(Lio/bidmachine/rendering/model/ClickData;)V

    :cond_20
    return v1
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdElementParams;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdElementParams;->isPrerender()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/adform/a;->t:Z

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/a;->u:Z

    if-nez v0, :cond_1c

    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->j()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    goto :goto_17

    .line 6
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->j()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    .line 8
    :goto_17
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/adform/a;->v:Z

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->v()V

    :cond_1c
    return-void
.end method

.method public final t()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->s()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->c(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getAdElementType()Lio/bidmachine/rendering/model/AdElementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->f:Lio/bidmachine/rendering/model/AdElementParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->s()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_11

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 8
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->J()V

    return-void
.end method

.method public unlockVisibility()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/a;->u:Z

    .line 2
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/a;->t:Z

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->setVisibility(Z)V

    return-void
.end method

.method public final v()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->B()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_26

    .line 2
    :cond_7
    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/adform/a;->v:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/adform/a;->s:Z

    if-eqz v1, :cond_1e

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_26

    .line 6
    :cond_1a
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->a(Landroid/view/View;)V

    return-void

    .line 8
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    :goto_26
    return-void

    .line 11
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->H()V

    return-void
.end method

.method public final w()Lio/bidmachine/rendering/internal/adform/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->g:Lio/bidmachine/rendering/internal/adform/c;

    return-object v0
.end method

.method public final x()Lio/bidmachine/rendering/model/AppearanceParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->j:Lio/bidmachine/rendering/model/AppearanceParams;

    return-object v0
.end method

.method public final y()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->i:Landroid/content/Context;

    return-object v0
.end method

.method public final z()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a;->d:Ljava/lang/Object;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.adform.a.C1165a (io.bidmachine.rendering.internal.adform.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/adform/a;->a(ZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/a;

.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/a;ZLkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/a$a;->a:Lio/bidmachine/rendering/internal/adform/a;

    iput-boolean p2, p0, Lio/bidmachine/rendering/internal/adform/a$a;->b:Z

    iput-object p3, p0, Lio/bidmachine/rendering/internal/adform/a$a;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a$a;->a:Lio/bidmachine/rendering/internal/adform/a;

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/adform/a$a;->b:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/adform/a;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/a$a;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
