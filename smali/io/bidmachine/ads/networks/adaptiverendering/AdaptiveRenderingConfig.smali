###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;
.super Lio/bidmachine/NetworkConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;->Companion:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "adaptive_rendering"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;-><init>()V

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig.Companion (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig$Companion)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig$Companion;-><init>()V

    return-void
.end method
