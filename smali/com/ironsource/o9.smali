###### Class com.ironsource.C3761o9 (com.ironsource.o9)
.class public final Lcom/ironsource/o9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Ke;

.field private final b:Ljava/lang/Runnable;

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/qe;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/se;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ironsource/Ff;

.field private final f:Lcom/ironsource/p9;

.field private final g:Landroid/content/Context;

.field private h:Lcom/ironsource/Ff$a;

.field private i:Lcom/ironsource/environment/NetworkStateReceiver;

.field private j:Z

.field private k:Z


# direct methods
.method public static synthetic $r8$lambda$0d8eNUtdiVW9-gswMsoalJNLSqo(Lcom/ironsource/o9;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/o9;->a(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-UoxDk3MTnS3PSiMT1inRZCWx8(Lcom/ironsource/o9;Z)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/o9;->a(Lcom/ironsource/o9;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/Ke;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/Ff;Lcom/ironsource/p9;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ironsource/Ke;",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/qe;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/se;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/ironsource/Ff;",
            "Lcom/ironsource/p9;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attempt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSucceeded"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onExhausted"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskScheduler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "policy"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    .line 4
    iput-object p3, p0, Lcom/ironsource/o9;->b:Ljava/lang/Runnable;

    .line 5
    iput-object p4, p0, Lcom/ironsource/o9;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object p5, p0, Lcom/ironsource/o9;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    iput-object p6, p0, Lcom/ironsource/o9;->e:Lcom/ironsource/Ff;

    .line 8
    iput-object p7, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/o9;->g:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ironsource/Ke;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/Ff;Lcom/ironsource/p9;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_17

    .line 11
    new-instance v0, Lcom/ironsource/p9;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/p9;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p8, v0

    :goto_f
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_19

    :cond_17
    move-object p8, p7

    goto :goto_f

    .line 12
    :goto_19
    invoke-direct/range {p1 .. p8}, Lcom/ironsource/o9;-><init>(Landroid/content/Context;Lcom/ironsource/Ke;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/Ff;Lcom/ironsource/p9;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/o9;Z)V
    .registers 3

    .line 24
    iget-boolean v0, p0, Lcom/ironsource/o9;->j:Z

    if-eqz v0, :cond_1c

    if-nez p1, :cond_7

    goto :goto_1c

    :cond_7
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/ironsource/o9;->j:Z

    .line 28
    invoke-direct {p0}, Lcom/ironsource/o9;->f()V

    .line 29
    iget-object p1, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {p1}, Lcom/ironsource/p9;->e()V

    .line 30
    iget-object p1, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    invoke-interface {p1}, Lcom/ironsource/Ke;->e()V

    .line 31
    iget-object p0, p0, Lcom/ironsource/o9;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private final a(Z)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    new-instance v1, Lcom/ironsource/o9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/o9$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/o9;Z)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/o9;->k:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/o9;->j:Z

    .line 3
    iget-object v0, p0, Lcom/ironsource/o9;->h:Lcom/ironsource/Ff$a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ironsource/Ff$a;->a()V

    :cond_d
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ironsource/o9;->h:Lcom/ironsource/Ff$a;

    .line 5
    invoke-direct {p0}, Lcom/ironsource/o9;->f()V

    return-void
.end method

.method private final f()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/o9;->i:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    iget-object v2, p0, Lcom/ironsource/o9;->g:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/ironsource/Ke;->a(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/o9;->i:Lcom/ironsource/environment/NetworkStateReceiver;

    :cond_13
    return-void
.end method

.method private final g()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/o9;->j:Z

    .line 2
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    const-string v1, "noInternetConnection"

    invoke-virtual {v0, v1}, Lcom/ironsource/p9;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    iget-object v1, p0, Lcom/ironsource/o9;->g:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/o9$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/ironsource/o9$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/o9;)V

    invoke-interface {v0, v1, v2}, Lcom/ironsource/Ke;->a(Landroid/content/Context;Lcom/ironsource/Jc;)Lcom/ironsource/environment/NetworkStateReceiver;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/ironsource/o9;->i:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ironsource/o9;->j:Z

    .line 9
    iget-object v0, p0, Lcom/ironsource/o9;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_28
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {v0}, Lcom/ironsource/p9;->c()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/ironsource/qe;)V
    .registers 3
    .annotation build Lcom/ironsource/xb;
    .end annotation

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/ironsource/o9;->k:Z

    if-eqz v0, :cond_a

    return-void

    .line 5
    :cond_a
    invoke-direct {p0}, Lcom/ironsource/o9;->c()V

    .line 6
    iget-object v0, p0, Lcom/ironsource/o9;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/ironsource/se;)V
    .registers 6
    .annotation build Lcom/ironsource/xb;
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/ironsource/o9;->k:Z

    if-eqz v0, :cond_a

    return-void

    .line 10
    :cond_a
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {v0, p1}, Lcom/ironsource/p9;->a(Lcom/ironsource/se;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 11
    invoke-direct {p0}, Lcom/ironsource/o9;->c()V

    .line 12
    iget-object v0, p0, Lcom/ironsource/o9;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 15
    :cond_1b
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {v0, p1}, Lcom/ironsource/p9;->b(Lcom/ironsource/se;)Lcom/ironsource/Sd;

    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/ironsource/Sd$b;

    if-eqz v1, :cond_36

    .line 17
    iget-object p1, p0, Lcom/ironsource/o9;->e:Lcom/ironsource/Ff;

    iget-object v1, p0, Lcom/ironsource/o9;->b:Ljava/lang/Runnable;

    check-cast v0, Lcom/ironsource/Sd$b;

    invoke-virtual {v0}, Lcom/ironsource/Sd$b;->b()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/ironsource/Ff;->b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/o9;->h:Lcom/ironsource/Ff$a;

    return-void

    .line 19
    :cond_36
    sget-object v1, Lcom/ironsource/Sd$a;->a:Lcom/ironsource/Sd$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 20
    invoke-direct {p0}, Lcom/ironsource/o9;->c()V

    .line 21
    iget-object v0, p0, Lcom/ironsource/o9;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 22
    :cond_47
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {v0}, Lcom/ironsource/p9;->d()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o9;->f:Lcom/ironsource/p9;

    invoke-virtual {v0}, Lcom/ironsource/p9;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .registers 4
    .annotation build Lcom/ironsource/xb;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/o9;->a:Lcom/ironsource/Ke;

    iget-object v1, p0, Lcom/ironsource/o9;->g:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/Ke;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/ironsource/o9;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4
    :cond_15
    invoke-direct {p0}, Lcom/ironsource/o9;->g()V

    return-void
.end method

###### Class com.ironsource.o9$$ExternalSyntheticLambda0 (com.ironsource.o9$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/o9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/Jc;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/o9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/o9;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/o9;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/o9;

    invoke-static {v0, p1}, Lcom/ironsource/o9;->$r8$lambda$0d8eNUtdiVW9-gswMsoalJNLSqo(Lcom/ironsource/o9;Z)V

    return-void
.end method

###### Class com.ironsource.o9$$ExternalSyntheticLambda1 (com.ironsource.o9$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/o9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/o9;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/o9;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/o9;

    iput-boolean p2, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/o9;

    iget-boolean v1, p0, Lcom/ironsource/o9$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lcom/ironsource/o9;->$r8$lambda$t-UoxDk3MTnS3PSiMT1inRZCWx8(Lcom/ironsource/o9;Z)V

    return-void
.end method
