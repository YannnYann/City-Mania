###### Class com.vungle.ads.internal.task.i (com.vungle.ads.internal.task.i)
.class public abstract Lcom/vungle/ads/internal/task/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/executor/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/vungle/ads/internal/task/i;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/task/i;->a()I

    move-result v0

    .line 3
    check-cast p1, Lcom/vungle/ads/internal/task/i;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/i;->a()I

    move-result p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method
