###### Class io.bidmachine.rendering.internal.C4240c (io.bidmachine.rendering.internal.c)
.class public final Lio/bidmachine/rendering/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/c$a;
    }
.end annotation


# static fields
.field public static final g:Lio/bidmachine/rendering/internal/c$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/bidmachine/rendering/model/AdPhaseParams;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Ljava/util/HashSet;

.field public final e:Lio/bidmachine/rendering/internal/e;

.field public final f:Lio/bidmachine/rendering/internal/H;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/c;->g:Lio/bidmachine/rendering/internal/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdPhaseParams;)V
    .registers 7

    const-string v0, "assetsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPhaseParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/c;->a:Ljava/lang/Object;

    .line 3
    iput-object p4, p0, Lio/bidmachine/rendering/internal/c;->b:Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 4
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/c;->d:Ljava/util/HashSet;

    .line 6
    new-instance p1, Lio/bidmachine/rendering/internal/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lio/bidmachine/rendering/internal/e;-><init>(Lio/bidmachine/rendering/internal/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/c;->e:Lio/bidmachine/rendering/internal/e;

    .line 7
    invoke-virtual {p4}, Lio/bidmachine/rendering/model/AdPhaseParams;->getBackground()Lio/bidmachine/rendering/model/Background;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "context.applicationContext"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p2, p3}, Lio/bidmachine/rendering/internal/I;->a(Lio/bidmachine/rendering/model/Background;Landroid/content/Context;Lio/bidmachine/rendering/Repository;)Lio/bidmachine/rendering/internal/H;

    move-result-object v1

    :cond_45
    iput-object v1, p0, Lio/bidmachine/rendering/internal/c;->f:Lio/bidmachine/rendering/internal/H;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 344
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->f:Lio/bidmachine/rendering/internal/H;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/H;->a()V

    .line 345
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 346
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 347
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "rootContainer"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "container"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "ads"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "controls"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "container.context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/c;->a()V

    .line 6
    iget-object v9, v0, Lio/bidmachine/rendering/internal/c;->f:Lio/bidmachine/rendering/internal/H;

    if-eqz v9, :cond_3d

    .line 7
    iget-object v10, v0, Lio/bidmachine/rendering/internal/c;->a:Ljava/lang/Object;

    .line 8
    iget-object v11, v0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    const/16 v16, 0x3c

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 9
    invoke-static/range {v9 .. v17}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    .line 14
    :cond_3d
    new-instance v8, Lio/bidmachine/rendering/internal/view/e;

    invoke-direct {v8, v7}, Lio/bidmachine/rendering/internal/view/e;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v8, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/rendering/internal/b;

    .line 171
    invoke-static {v8, v1, v3, v9}, Lio/bidmachine/rendering/internal/d;->a(Lio/bidmachine/rendering/internal/view/e;Landroid/view/ViewGroup;Ljava/util/List;Lio/bidmachine/rendering/internal/b;)V

    .line 176
    iget-object v10, v0, Lio/bidmachine/rendering/internal/c;->d:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 178
    :cond_5e
    iget-object v3, v0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    .line 180
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    .line 181
    invoke-static/range {v18 .. v23}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z

    .line 186
    new-instance v10, Lio/bidmachine/rendering/internal/view/e;

    invoke-direct {v10, v7}, Lio/bidmachine/rendering/internal/view/e;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v10, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/rendering/internal/b;

    .line 329
    invoke-static {v10, v1, v4, v5}, Lio/bidmachine/rendering/internal/d;->a(Lio/bidmachine/rendering/internal/view/e;Landroid/view/ViewGroup;Ljava/util/List;Lio/bidmachine/rendering/internal/b;)V

    goto :goto_7d

    .line 335
    :cond_8d
    iget-object v9, v0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    .line 337
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    .line 338
    invoke-static/range {v9 .. v14}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z

    .line 343
    iget-object v1, v0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    invoke-static {}, Lio/bidmachine/util/ViewUtils;->createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/adform/a;)V
    .registers 3

    const-string v0, "adForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object p1, p0, Lio/bidmachine/rendering/internal/c;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/c;->e()V

    :cond_15
    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/b;Ljava/util/List;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 9

    const-string v0, "adElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLayoutChanged"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/b;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 350
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_1e
    if-nez p3, :cond_28

    .line 354
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/b;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/rendering/model/AdElementParams;->getElementLayoutParams()Lio/bidmachine/rendering/model/ElementLayoutParams;

    move-result-object p3

    .line 355
    :cond_28
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/b;->m()Lio/bidmachine/rendering/model/ElementLayoutParams;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 356
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 360
    :cond_36
    new-instance v1, Lio/bidmachine/rendering/internal/c$c;

    invoke-direct {v1, p3, p1, p2}, Lio/bidmachine/rendering/internal/c$c;-><init>(Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/internal/b;Ljava/util/List;)V

    .line 367
    iget-object p1, p0, Lio/bidmachine/rendering/internal/c;->e:Lio/bidmachine/rendering/internal/e;

    new-instance p2, Lio/bidmachine/rendering/internal/c$b;

    invoke-direct {p2, v1, v0, p6, p5}, Lio/bidmachine/rendering/internal/c$b;-><init>(Lkotlin/jvm/functions/Function1;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0, p4, v1, p2}, Lio/bidmachine/rendering/internal/e;->b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->e:Lio/bidmachine/rendering/internal/e;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/e;->a()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/c;->a()V

    return-void
.end method

.method public final c()Lio/bidmachine/rendering/model/AdPhaseParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->b:Lio/bidmachine/rendering/model/AdPhaseParams;

    return-object v0
.end method

.method public final d()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final e()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c;->f:Lio/bidmachine/rendering/internal/H;

    if-eqz v0, :cond_1b

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/c;->a:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/internal/c;->c:Landroid/view/ViewGroup;

    .line 5
    new-instance v3, Lio/bidmachine/rendering/internal/H$a;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/H$a;-><init>(JLandroid/animation/TimeInterpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v7, 0xc

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    invoke-static/range {v0 .. v8}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    :cond_1b
    return-void
.end method

###### Class io.bidmachine.rendering.internal.C4240c.a (io.bidmachine.rendering.internal.c$a)
.class public final Lio/bidmachine/rendering/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/c$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.C4240c.b (io.bidmachine.rendering.internal.c$b)
.class public final Lio/bidmachine/rendering/internal/c$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/c;->a(Lio/bidmachine/rendering/internal/b;Ljava/util/List;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/c$b;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/c$b;->b:Landroid/view/View;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/c$b;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/c$b;->d:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c$b;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/c$b;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c$b;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/c$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.C4240c.C1175c (io.bidmachine.rendering.internal.c$c)
.class public final Lio/bidmachine/rendering/internal/c$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/c;->a(Lio/bidmachine/rendering/internal/b;Ljava/util/List;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/model/ElementLayoutParams;

.field public final synthetic b:Lio/bidmachine/rendering/internal/b;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/internal/b;Ljava/util/List;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/c$c;->a:Lio/bidmachine/rendering/model/ElementLayoutParams;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/c$c;->b:Lio/bidmachine/rendering/internal/b;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/c$c;->c:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/c$c;->a:Lio/bidmachine/rendering/model/ElementLayoutParams;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/c$c;->b:Lio/bidmachine/rendering/internal/b;

    .line 4
    iget-object v2, p0, Lio/bidmachine/rendering/internal/c$c;->c:Ljava/util/List;

    .line 5
    invoke-static {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/d;->a(Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/internal/b;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/c$c;->a(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
