###### Class ads_mobile_sdk.ju2 (ads_mobile_sdk.ju2)
.class public final Lads_mobile_sdk/ju2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/qj3;


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Z

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;ZJZZ)V
    .registers 9

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lads_mobile_sdk/ju2;->a:Lads_mobile_sdk/ks1;

    .line 44
    iput-object p2, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    .line 45
    iput-object p3, p0, Lads_mobile_sdk/ju2;->c:Lads_mobile_sdk/ks1;

    .line 46
    iput-boolean p4, p0, Lads_mobile_sdk/ju2;->d:Z

    .line 47
    iput-wide p5, p0, Lads_mobile_sdk/ju2;->e:J

    .line 48
    iput-boolean p7, p0, Lads_mobile_sdk/ju2;->f:Z

    .line 49
    iput-boolean p8, p0, Lads_mobile_sdk/ju2;->g:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .registers 1

    .line 507
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;)Lads_mobile_sdk/qw3;
    .registers 1

    .line 252
    sget-object p0, Lads_mobile_sdk/qw3;->a:Lads_mobile_sdk/qw3;

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .registers 1

    .line 176
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 331
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0}, Lads_mobile_sdk/hf3;->c()Lads_mobile_sdk/kb;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/kb;->e:Lads_mobile_sdk/kb;

    const-class v2, Ljava/lang/Throwable;

    if-ne v0, v1, :cond_45

    iget-boolean v0, p0, Lads_mobile_sdk/ju2;->f:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lads_mobile_sdk/ju2;->g:Z

    if-eqz v0, :cond_45

    .line 332
    iget-object v0, p0, Lads_mobile_sdk/ju2;->c:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/wl3;

    invoke-interface {v0}, Lads_mobile_sdk/wl3;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda0;-><init>()V

    .line 333
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/ju2;)V

    .line 334
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0

    .line 337
    :cond_45
    iget-boolean v0, p0, Lads_mobile_sdk/ju2;->d:Z

    if-eqz v0, :cond_81

    .line 338
    iget-object v0, p0, Lads_mobile_sdk/ju2;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rw3;

    invoke-virtual {v0}, Lads_mobile_sdk/rw3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda2;-><init>()V

    .line 339
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/ju2;)V

    .line 340
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/ju2;)V

    .line 341
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0

    .line 343
    :cond_81
    iget-object v0, p0, Lads_mobile_sdk/ju2;->c:Lads_mobile_sdk/ks1;

    .line 344
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/wl3;

    invoke-interface {v0}, Lads_mobile_sdk/wl3;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda5;-><init>()V

    .line 345
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda6;-><init>(Lads_mobile_sdk/ju2;)V

    .line 346
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    .line 348
    new-instance v1, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda7;-><init>(Lads_mobile_sdk/ju2;)V

    .line 353
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 354
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final synthetic a(Lads_mobile_sdk/qw3;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 506
    iget-object p1, p0, Lads_mobile_sdk/ju2;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wl3;

    invoke-interface {p1}, Lads_mobile_sdk/wl3;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 221
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0, p1}, Lads_mobile_sdk/hf3;->a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 329
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0, p1, p2, p3, p4}, Lads_mobile_sdk/hf3;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 427
    iget-object p1, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/hf3;

    invoke-interface {p1}, Lads_mobile_sdk/hf3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/InputEvent;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0, p1}, Lads_mobile_sdk/hf3;->a(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0, p1, p2, p3, p4}, Lads_mobile_sdk/hf3;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 251
    iget-object p1, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/hf3;

    invoke-interface {p1}, Lads_mobile_sdk/hf3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hf3;

    invoke-interface {v0}, Lads_mobile_sdk/hf3;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 85
    iget-object p1, p0, Lads_mobile_sdk/ju2;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/hf3;

    invoke-interface {p1}, Lads_mobile_sdk/hf3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()V
    .registers 4

    .line 175
    iget-object v0, p0, Lads_mobile_sdk/ju2;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rw3;

    iget-wide v1, p0, Lads_mobile_sdk/ju2;->e:J

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/rw3;->a(J)V

    return-void
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda0 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lads_mobile_sdk/ju2;->a(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda1 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ju2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju2;->a(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda2 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lads_mobile_sdk/ju2;->b(Ljava/lang/Throwable;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda3 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda3)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/ju2;

    check-cast p1, Lads_mobile_sdk/qw3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju2;->a(Lads_mobile_sdk/qw3;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda4 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda4)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/ju2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju2;->b(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda5 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda5)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lads_mobile_sdk/ju2;->c(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda6 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda6)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/ju2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju2;->c(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ju2$$ExternalSyntheticLambda7 (ads_mobile_sdk.ju2$$ExternalSyntheticLambda7)
.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda7;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda7;->f$0:Lads_mobile_sdk/ju2;

    invoke-virtual {v0}, Lads_mobile_sdk/ju2;->c()V

    return-void
.end method
