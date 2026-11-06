###### Class io.bidmachine.protobuf.sdk.AppOrBuilder (io.bidmachine.protobuf.sdk.AppOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AppOrBuilder;
.super Ljava/lang/Object;
.source "AppOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getAppVer()Ljava/lang/String;
.end method

.method public abstract getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getFirstLaunchTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getFmwname()Ljava/lang/String;
.end method

.method public abstract getFmwnameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getInstallBeginServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getInstallReferrerClickServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getInstallReferrerClickTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getInstallReferrerUrl()Ljava/lang/String;
.end method

.method public abstract getInstallReferrerUrlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getInstallTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getInstallVersion()Ljava/lang/String;
.end method

.method public abstract getInstallVersionBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getIsGooglePlayInstant()Z
.end method

.method public abstract getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;
.end method

.method public abstract getReleaseOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;
.end method

.method public abstract getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getSdkInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getStorecat()Ljava/lang/String;
.end method

.method public abstract getStorecatBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStoresubcat(I)Ljava/lang/String;
.end method

.method public abstract getStoresubcatBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStoresubcatCount()I
.end method

.method public abstract getStoresubcatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFirstLaunchTime()Z
.end method

.method public abstract hasInstallBeginServerTimestamp()Z
.end method

.method public abstract hasInstallReferrerClickServerTimestamp()Z
.end method

.method public abstract hasInstallReferrerClickTimestamp()Z
.end method

.method public abstract hasInstallTime()Z
.end method

.method public abstract hasRelease()Z
.end method

.method public abstract hasSdkInstallTime()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
