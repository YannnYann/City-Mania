###### Class com.vungle.ads.internal.task.e (com.vungle.ads.internal.task.e)
.class public final Lcom/vungle/ads/internal/task/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:J

.field public d:Landroid/os/Bundle;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "jobTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/e;->a:Ljava/lang/String;

    .line 8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/e;->d:Landroid/os/Bundle;

    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lcom/vungle/ads/internal/task/e;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/task/e;
    .registers 4

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.task.JobInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/vungle/ads/internal/task/e;
    :try_end_b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot copy JobInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobInfo"

    invoke-static {v2, v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/vungle/ads/internal/task/e;
    .registers 3

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/task/e;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method public final a(Z)Lcom/vungle/ads/internal/task/e;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/task/e;->b:Z

    return-object p0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/e;->c:J

    return-wide v0
.end method

.method public final c()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/e;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/task/e;->e:I

    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/task/e;->b:Z

    return v0
.end method

.method public final g()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/vungle/ads/internal/task/e;->c:J

    return-void
.end method

.method public final h()Lcom/vungle/ads/internal/task/e;
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/vungle/ads/internal/task/e;->e:I

    return-object p0
.end method
