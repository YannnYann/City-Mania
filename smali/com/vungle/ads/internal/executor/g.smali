###### Class com.vungle.ads.internal.executor.g (com.vungle.ads.internal.executor.g)
.class public final Lcom/vungle/ads/internal/executor/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/vungle/ads/internal/executor/h;
    .registers 3

    .line 1
    sget v0, Lcom/vungle/ads/internal/executor/j;->b:I

    .line 2
    instance-of v0, p0, Lcom/vungle/ads/internal/task/i;

    if-eqz v0, :cond_c

    .line 3
    new-instance v0, Lcom/vungle/ads/internal/executor/e;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/executor/e;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0

    .line 21
    :cond_c
    new-instance v0, Lcom/vungle/ads/internal/executor/f;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/executor/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static final a(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 3

    const-string v0, "$command"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$failFallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :try_start_a
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    .line 25
    :catch_f
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic a(Ljava/util/concurrent/Callable;Lcom/vungle/ads/internal/executor/i;)Ljava/util/concurrent/Callable;
    .registers 2

    .line 22
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/executor/g;->b(Ljava/util/concurrent/Callable;Lcom/vungle/ads/internal/executor/i;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Callable;Lcom/vungle/ads/internal/executor/i;)Ljava/util/concurrent/Callable;
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

###### Class com.vungle.ads.internal.executor.g$$ExternalSyntheticLambda0 (com.vungle.ads.internal.executor.g$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Callable;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lcom/vungle/ads/internal/executor/g$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
