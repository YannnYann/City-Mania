###### Class com.vungle.ads.internal.load.m (com.vungle.ads.internal.load.m)
.class public final Lcom/vungle/ads/internal/load/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .registers 3

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/m;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "adm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/m;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->d(Ljava/lang/String;)V

    return-void
.end method
