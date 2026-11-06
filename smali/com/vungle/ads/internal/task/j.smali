###### Class com.vungle.ads.internal.task.j (com.vungle.ads.internal.task.j)
.class public abstract Lcom/vungle/ads/internal/task/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/vungle/ads/internal/task/e;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/e;

    const-string v1, "ResendTpatJob"

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/vungle/ads/internal/task/e;->e:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/vungle/ads/internal/task/e;->b:Z

    return-object v0
.end method
