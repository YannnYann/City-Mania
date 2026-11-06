###### Class io.bidmachine.ads.networks.gam.versions.v22_0_0.c (io.bidmachine.ads.networks.gam.versions.v22_0_0.c)
.class public Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;
.super Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/AdSize;

.field public b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    .line 3
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->a:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    :cond_a
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalLoadListener;Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 7
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamLoader()Lio/bidmachine/ads/networks/gam/GAMLoader;

    move-result-object p2

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/a;->a(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.versions.v22_0_0.c.a (io.bidmachine.ads.networks.gam.versions.v22_0_0.c$a)
.class public abstract synthetic Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam.versions.v22_0_0.c.b (io.bidmachine.ads.networks.gam.versions.v22_0_0.c$b)
.class public final Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

.field public final b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalGAMAd",
            "loadListener"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 4
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;->b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalLoadListener;Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/c$b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    return-void
.end method
