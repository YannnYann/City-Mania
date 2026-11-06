###### Class com.vungle.ads.internal.task.a (com.vungle.ads.internal.task.a)
.class public final Lcom/vungle/ads/internal/task/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;I)Lcom/vungle/ads/internal/task/e;
    .registers 5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 2
    :cond_d
    const-string p2, "staleAdDirs"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance p2, Lcom/vungle/ads/internal/task/e;

    const-string v0, "CleanupJob"

    invoke-direct {p2, v0}, Lcom/vungle/ads/internal/task/e;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Lcom/vungle/ads/internal/task/e;->h()Lcom/vungle/ads/internal/task/e;

    move-result-object p2

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_29

    .line 188
    const-string v1, "AD_ID_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-nez p0, :cond_35

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "STALE_DIRS_KEY"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    :cond_35
    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/task/e;->a(Landroid/os/Bundle;)Lcom/vungle/ads/internal/task/e;

    move-result-object p1

    if-nez p0, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    .line 200
    :goto_3e
    invoke-virtual {p1, p0}, Lcom/vungle/ads/internal/task/e;->a(Z)Lcom/vungle/ads/internal/task/e;

    move-result-object p0

    return-object p0
.end method
