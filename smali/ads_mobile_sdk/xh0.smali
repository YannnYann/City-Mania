###### Class ads_mobile_sdk.xh0 (ads_mobile_sdk.xh0)
.class public final Lads_mobile_sdk/xh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bz2;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public d:Lads_mobile_sdk/j53;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

.field public h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    iput-object p1, p0, Lads_mobile_sdk/xh0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;
    .registers 2

    .line 1792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1793
    iput-object p1, p0, Lads_mobile_sdk/xh0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;
    .registers 2

    .line 1795
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1796
    iput-object p1, p0, Lads_mobile_sdk/xh0;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    return-object p0
.end method

.method public final a()Lads_mobile_sdk/cz2;
    .registers 10

    .line 1780
    iget-object v0, p0, Lads_mobile_sdk/xh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1781
    iget-object v0, p0, Lads_mobile_sdk/xh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1782
    iget-object v0, p0, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    const-class v1, Lads_mobile_sdk/j53;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1783
    iget-object v0, p0, Lads_mobile_sdk/xh0;->e:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1784
    iget-object v0, p0, Lads_mobile_sdk/xh0;->f:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1785
    iget-object v0, p0, Lads_mobile_sdk/xh0;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1786
    iget-object v0, p0, Lads_mobile_sdk/xh0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1787
    new-instance v2, Lads_mobile_sdk/yh0;

    iget-object v3, p0, Lads_mobile_sdk/xh0;->a:Lads_mobile_sdk/vf0;

    iget-object v4, p0, Lads_mobile_sdk/xh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v5, p0, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    iget-object v6, p0, Lads_mobile_sdk/xh0;->e:Ljava/lang/Boolean;

    iget-object v7, p0, Lads_mobile_sdk/xh0;->f:Ljava/lang/Boolean;

    iget-object v8, p0, Lads_mobile_sdk/xh0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/yh0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)V

    return-object v2
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 3507
    sget-object p1, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 3508
    iput-object p1, p0, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;
    .registers 2

    .line 1789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1790
    iput-object p1, p0, Lads_mobile_sdk/xh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .registers 2

    .line 1798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1799
    iput-object p1, p0, Lads_mobile_sdk/xh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 1801
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xh0;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xh0;->e:Ljava/lang/Boolean;

    return-object p0
.end method
