###### Class io.bidmachine.nativead.NativeAd (io.bidmachine.nativead.NativeAd)
.class public final Lio/bidmachine/nativead/NativeAd;
.super Lio/bidmachine/BidMachineAd;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/NativePublicData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/BidMachineAd<",
        "Lio/bidmachine/nativead/NativeAd;",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/NativeAdObject;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        "Lio/bidmachine/nativead/NativeListener;",
        ">;",
        "Lio/bidmachine/nativead/NativePublicData;"
    }
.end annotation


# virtual methods
.method public bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/nativead/NativeAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/nativead/NativeAdObject;

    move-result-object p1

    return-object p1
.end method

.method public createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/nativead/NativeAdObject;
    .registers 12

    .line 2
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_8
    new-instance v0, Lio/bidmachine/nativead/NativeAdObject;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/nativead/NativeAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedNativeAd;)V

    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAd;->hasLoadedObject()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAd;->hasLoadedObject()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasLoadedObject()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2
    const-string v0, "not loaded, please load ads first"

    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public hasVideo()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAd;->hasLoadedObject()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isDuplicateShowDisabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
