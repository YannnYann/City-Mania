###### Class io.bidmachine.protobuf.RequestTokenPayloadOrBuilder (io.bidmachine.protobuf.RequestTokenPayloadOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;
.super Ljava/lang/Object;
.source "RequestTokenPayloadOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomData(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdType()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAppData()Lio/bidmachine/protobuf/sdk/App;
.end method

.method public abstract getAppDataOrBuilder()Lio/bidmachine/protobuf/sdk/AppOrBuilder;
.end method

.method public abstract getCustomData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomDataCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDeviceData()Lio/bidmachine/protobuf/sdk/Device;
.end method

.method public abstract getDeviceDataOrBuilder()Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;
.end method

.method public abstract getExt()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
.end method

.method public abstract getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHbPlacementOrBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPlacement()Lio/bidmachine/protobuf/sdk/Placement;
.end method

.method public abstract getPlacementData()Lio/bidmachine/protobuf/sdk/SDK;
.end method

.method public abstract getPlacementDataOrBuilder()Lio/bidmachine/protobuf/sdk/SDKOrBuilder;
.end method

.method public abstract getPlacementOrBuilder()Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;
.end method

.method public abstract getRegsData()Lio/bidmachine/protobuf/sdk/Regs;
.end method

.method public abstract getRegsDataOrBuilder()Lio/bidmachine/protobuf/sdk/RegsOrBuilder;
.end method

.method public abstract getSession()Lio/bidmachine/protobuf/sdk/Session;
.end method

.method public abstract getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSessionDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSessionOrBuilder()Lio/bidmachine/protobuf/sdk/SessionOrBuilder;
.end method

.method public abstract getTokenHashValue()Ljava/lang/String;
.end method

.method public abstract getTokenHashValueBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getUserData()Lio/bidmachine/protobuf/sdk/User;
.end method

.method public abstract getUserDataOrBuilder()Lio/bidmachine/protobuf/sdk/UserOrBuilder;
.end method

.method public abstract hasAppData()Z
.end method

.method public abstract hasDeviceData()Z
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasHbPlacement()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasPlacement()Z
.end method

.method public abstract hasPlacementData()Z
.end method

.method public abstract hasRegsData()Z
.end method

.method public abstract hasSession()Z
.end method

.method public abstract hasSessionData()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasUserData()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
