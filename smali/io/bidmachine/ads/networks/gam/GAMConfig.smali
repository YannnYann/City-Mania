###### Class io.bidmachine.ads.networks.gam.GAMConfig (io.bidmachine.ads.networks.gam.GAMConfig)
.class public Lio/bidmachine/ads/networks/gam/GAMConfig;
.super Lio/bidmachine/NetworkConfig;
.source "GAMConfig.java"


# virtual methods
.method public createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .registers 2

    .line 42
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>()V

    return-object v0
.end method
