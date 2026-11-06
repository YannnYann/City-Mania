###### Class com.vungle.ads.internal.task.o (com.vungle.ads.internal.task.o)
.class public final Lcom/vungle/ads/internal/task/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/task/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/util/PathProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/o;->b:Lcom/vungle/ads/internal/util/PathProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 5
    const-string v0, "CleanupJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p1, Lcom/vungle/ads/internal/task/b;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/o;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/b;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V

    return-object p1

    .line 6
    :cond_1d
    const-string v0, "ResendTpatJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance p1, Lcom/vungle/ads/internal/task/l;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/o;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/l;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V

    return-object p1

    .line 7
    :cond_2f
    new-instance v0, Lcom/vungle/ads/internal/task/n;

    .line 8
    const-string v1, "Unknown Job Type "

    invoke-static {v1, p1}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/task/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3b
    new-instance p1, Lcom/vungle/ads/internal/task/n;

    const-string v0, "Job tag is null"

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/task/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method
