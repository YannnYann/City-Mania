###### Class io.bidmachine.rendering.internal.view.f (io.bidmachine.rendering.internal.view.f)
.class public final Lio/bidmachine/rendering/internal/view/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/f$c;,
        Lio/bidmachine/rendering/internal/view/f$a;,
        Lio/bidmachine/rendering/internal/view/f$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/util/Tag;

.field public final b:Lio/bidmachine/rendering/internal/controller/e;

.field public final c:Lio/bidmachine/rendering/internal/view/d;

.field public d:Lio/bidmachine/rendering/internal/view/f$c;


# direct methods
.method public static synthetic $r8$lambda$2W3fybSbUd7jhL-PHdSJ3q0YmNQ(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Vq3fClJ_02FLJM4ZooCdoOJXbs(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/view/f;->d(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUdYhv0rPBoRmLiQTAhHgIxztKQ(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/f;->b(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmp64M5Wsxw-ouyFh0JnnCNtNyM(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/view/f;->c(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdPhaseParams;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v4, Lio/bidmachine/util/Tag;

    const-string v0, "PlaceholderView"

    invoke-direct {v4, v0}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    .line 10
    new-instance v5, Lio/bidmachine/util/Tag;

    const-string v0, "PlaceholderViewAdPhaseController"

    invoke-direct {v5, v0}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v6, Lio/bidmachine/rendering/internal/state/d;

    invoke-virtual {v5}, Lio/bidmachine/util/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lio/bidmachine/rendering/internal/state/d;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/j;)V

    .line 12
    new-instance v1, Lio/bidmachine/rendering/internal/controller/f;

    if-nez p2, :cond_2f

    .line 14
    invoke-static {}, Lio/bidmachine/rendering/internal/k;->a()Lio/bidmachine/rendering/model/AdPhaseParams;

    move-result-object p2

    :cond_2f
    move-object v3, p2

    .line 18
    new-instance v7, Lio/bidmachine/rendering/internal/view/f$a;

    invoke-direct {v7, p0}, Lio/bidmachine/rendering/internal/view/f$a;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    move-object v2, p1

    .line 19
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/rendering/internal/controller/f;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdPhaseParams;Ljava/lang/Object;Lio/bidmachine/util/Tag;Lio/bidmachine/rendering/internal/state/d;Lio/bidmachine/rendering/internal/controller/g;)V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    .line 27
    new-instance p1, Lio/bidmachine/rendering/internal/view/d;

    invoke-direct {p1, v2}, Lio/bidmachine/rendering/internal/view/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lio/bidmachine/rendering/internal/view/d;

    .line 28
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/d;->a()V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lio/bidmachine/rendering/internal/view/d;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lio/bidmachine/rendering/internal/view/f$c;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    :cond_11
    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/util/Tag;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    return-object p0
.end method

.method public static final b(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1}, Lio/bidmachine/rendering/internal/view/f$c;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    :cond_11
    return-void
.end method

.method public static final c(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public static final d(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lio/bidmachine/rendering/internal/view/f$c;->onLoaded()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->destroy()V

    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 5

    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyBrokenCreativeEvent"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/view/f;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final b()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "load"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->a()V

    return-void
.end method

.method public final b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyPlaceholderClosed"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyPlaceholderLoaded"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->a(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->a(Z)V

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->b(Z)V

    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/controller/e;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->b()V

    return-void
.end method

.method public final getListener()Lio/bidmachine/rendering/internal/view/f$c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    return-object v0
.end method

.method public final setListener(Lio/bidmachine/rendering/internal/view/f$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$c;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f.a (io.bidmachine.rendering.internal.view.f$a)
.class public final Lio/bidmachine/rendering/internal/view/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/controller/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 3

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->e()V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->b(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "onAdPhaseFailToLoad (%s) - %s"

    invoke-static {v0, v1, p2}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->destroy()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 5

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->b(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onAdPhaseLoaded (%s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 6
    invoke-interface {p1, v0, v0}, Lio/bidmachine/rendering/internal/controller/e;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 10
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/view/f$b;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/controller/e;->a(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/view/f$a;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/f;->c()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V
    .registers 4

    .line 1
    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f.b (io.bidmachine.rendering.internal.view.f$b)
.class public final Lio/bidmachine/rendering/internal/view/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/controller/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    const-string v0, "brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 3
    const-string v0, "privacySheetParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 3

    .line 0
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->c()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public c(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->a()V

    return-void
.end method

.method public d(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/view/f;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public e()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f.c (io.bidmachine.rendering.internal.view.f$c)
.class public interface abstract Lio/bidmachine/rendering/internal/view/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
.end method

.method public abstract a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract onLoaded()V
.end method

###### Class io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/f;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/BrokenCreativeEvent;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/f;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/BrokenCreativeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/f;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/BrokenCreativeEvent;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/view/f;->$r8$lambda$aUdYhv0rPBoRmLiQTAhHgIxztKQ(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->$r8$lambda$lmp64M5Wsxw-ouyFh0JnnCNtNyM(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda2 (io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/view/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->$r8$lambda$5Vq3fClJ_02FLJM4ZooCdoOJXbs(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda3 (io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/f;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/animation/AnimationParams;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/view/f;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/rendering/model/animation/AnimationParams;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/view/f;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/rendering/model/animation/AnimationParams;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/f$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lio/bidmachine/rendering/internal/view/f;->$r8$lambda$2W3fybSbUd7jhL-PHdSJ3q0YmNQ(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
