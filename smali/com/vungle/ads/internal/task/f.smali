###### Class com.vungle.ads.internal.task.f (com.vungle.ads.internal.task.f)
.class public final Lcom/vungle/ads/internal/task/f;
.super Lcom/vungle/ads/internal/task/i;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "f"


# instance fields
.field public final a:Lcom/vungle/ads/internal/task/e;

.field public final b:Lcom/vungle/ads/internal/task/d;

.field public final c:Lcom/vungle/ads/internal/task/g;

.field public final d:Lcom/vungle/ads/internal/task/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/task/e;Lcom/vungle/ads/internal/task/d;Lcom/vungle/ads/internal/task/g;Lcom/vungle/ads/internal/task/m;)V
    .registers 6

    const-string v0, "jobinfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobRunner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/i;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/task/f;->b:Lcom/vungle/ads/internal/task/d;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/task/f;->c:Lcom/vungle/ads/internal/task/g;

    .line 5
    iput-object p4, p0, Lcom/vungle/ads/internal/task/f;->d:Lcom/vungle/ads/internal/task/m;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    .line 2
    iget v0, v0, Lcom/vungle/ads/internal/task/e;->e:I

    return v0
.end method

.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->d:Lcom/vungle/ads/internal/task/m;

    const-string v1, "TAG"

    if-eqz v0, :cond_47

    .line 3
    :try_start_6
    iget-object v2, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    check-cast v0, Lcom/vungle/ads/internal/task/h;

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/task/h;->a(Lcom/vungle/ads/internal/task/e;)I

    move-result v0

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 6
    sget-object v2, Lcom/vungle/ads/internal/task/f;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting process thread prio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/task/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    goto :goto_47

    .line 13
    :catchall_3b
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object v0, Lcom/vungle/ads/internal/task/f;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Error on setting process thread priority"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_47
    :goto_47
    :try_start_47
    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/task/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/task/e;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 19
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object v3, Lcom/vungle/ads/internal/task/f;->e:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v4, p0, Lcom/vungle/ads/internal/task/f;->b:Lcom/vungle/ads/internal/task/d;

    check-cast v4, Lcom/vungle/ads/internal/task/o;

    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/task/o;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;

    move-result-object v4

    .line 21
    iget-object v5, p0, Lcom/vungle/ads/internal/task/f;->c:Lcom/vungle/ads/internal/task/g;

    invoke-interface {v4, v2, v5}, Lcom/vungle/ads/internal/task/c;->a(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/g;)I

    move-result v2

    .line 22
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On job finished "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with result "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v2, v0, :cond_d4

    .line 24
    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->a:Lcom/vungle/ads/internal/task/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b3} :catch_b4

    goto :goto_d4

    :catch_b4
    move-exception v0

    .line 32
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object v2, Lcom/vungle/ads/internal/task/f;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create job"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    return-void
.end method
