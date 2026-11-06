###### Class com.vungle.ads.internal.executor.f (com.vungle.ads.internal.executor.f)
.class public final Lcom/vungle/ads/internal/executor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/executor/h;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/executor/f;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/vungle/ads/internal/executor/f;->b:Ljava/lang/Runnable;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/f;->a:Ljava/lang/Runnable;

    instance-of v1, v0, Lcom/vungle/ads/internal/task/i;

    if-eqz v1, :cond_12

    .line 2
    check-cast v0, Lcom/vungle/ads/internal/task/i;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/task/i;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .registers 3

    .line 1
    sget v0, Lcom/vungle/ads/internal/executor/j;->b:I

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/f;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/vungle/ads/internal/executor/f;->b:Ljava/lang/Runnable;

    .line 2
    :try_start_6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    .line 4
    :catch_a
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
