###### Class io.bidmachine.ads.networks.vast.VastConfig (io.bidmachine.ads.networks.vast.VastConfig)
.class public final Lio/bidmachine/ads/networks/vast/VastConfig;
.super Lio/bidmachine/NetworkConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "vast"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/vast/VastAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/vast/VastAdapter;-><init>()V

    return-object v0
.end method
