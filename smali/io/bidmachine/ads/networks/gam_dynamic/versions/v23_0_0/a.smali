###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a)
.class public Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;,
        Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/AdSize;

.field public b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;Lcom/google/android/gms/ads/AdSize;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V

    move-object p1, p0

    .line 3
    iput-object p6, p1, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->a:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    .line 4
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    :cond_f
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance p2, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;

    invoke-direct {p2, p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 7
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 8
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/e;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a.C1106a (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a$a)
.class public abstract synthetic Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a.b (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a$b)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;

.field public final b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "versionBannerAd",
            "loadListener"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;

    .line 4
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a.c (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.a$c)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionBannerAd"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;->a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a$c;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/a;)V

    return-void
.end method
