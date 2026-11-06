###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder (io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;
.super Ljava/lang/Object;
.source "HeaderBiddingAdOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsClientParams(Ljava/lang/String;)Z
.end method

.method public abstract containsServerParams(Ljava/lang/String;)Z
.end method

.method public abstract getBidder()Ljava/lang/String;
.end method

.method public abstract getBidderBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getClientParams()Ljava/util/Map;
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

.method public abstract getClientParamsCount()I
.end method

.method public abstract getClientParamsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getClientParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getServerParams()Ljava/util/Map;
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

.method public abstract getServerParamsCount()I
.end method

.method public abstract getServerParamsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getServerParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic isInitialized()Z
.end method
