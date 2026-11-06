###### Class com.vungle.ads.internal.util.a0$$ExternalSyntheticApiModelOutline2 (com.vungle.ads.internal.util.a0$$ExternalSyntheticApiModelOutline2)
.class public final synthetic Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;I)Landroid/app/usage/StorageStats;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0
.end method
