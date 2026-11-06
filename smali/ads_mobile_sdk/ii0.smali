###### Class ads_mobile_sdk.ii0 (ads_mobile_sdk.ii0)
.class public final Lads_mobile_sdk/ii0;
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

.field public i:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 2699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2700
    iput-object p1, p0, Lads_mobile_sdk/ii0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;
    .registers 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/ii0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;
    .registers 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/ii0;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    return-object p0
.end method

.method public final a()Lads_mobile_sdk/cz2;
    .registers 11

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ii0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/ii0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/ii0;->d:Lads_mobile_sdk/j53;

    const-class v1, Lads_mobile_sdk/j53;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/ii0;->e:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/ii0;->f:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/ii0;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/ii0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/ii0;->i:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    const-class v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    new-instance v2, Lads_mobile_sdk/ji0;

    iget-object v3, p0, Lads_mobile_sdk/ii0;->a:Lads_mobile_sdk/vf0;

    iget-object v4, p0, Lads_mobile_sdk/ii0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v5, p0, Lads_mobile_sdk/ii0;->d:Lads_mobile_sdk/j53;

    iget-object v6, p0, Lads_mobile_sdk/ii0;->e:Ljava/lang/Boolean;

    iget-object v7, p0, Lads_mobile_sdk/ii0;->f:Ljava/lang/Boolean;

    iget-object v8, p0, Lads_mobile_sdk/ii0;->h:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    iget-object v9, p0, Lads_mobile_sdk/ii0;->i:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    invoke-direct/range {v2 .. v9}, Lads_mobile_sdk/ji0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;)V

    return-object v2
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 2704
    sget-object p1, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 2705
    iput-object p1, p0, Lads_mobile_sdk/ii0;->d:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/ii0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/ii0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ii0;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ii0;->e:Ljava/lang/Boolean;

    return-object p0
.end method
