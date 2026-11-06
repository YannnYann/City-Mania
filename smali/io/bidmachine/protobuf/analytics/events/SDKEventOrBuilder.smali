###### Class io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder (io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/analytics/events/SDKEventOrBuilder;
.super Ljava/lang/Object;
.source "SDKEventOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getAdType()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getAdTypeOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getBillable()Z
.end method

.method public abstract getContext()Ljava/lang/String;
.end method

.method public abstract getContextBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCustomParams()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getCustomParamsOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getError()Lio/bidmachine/protobuf/sdk/Error;
.end method

.method public abstract getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
.end method

.method public abstract getFinishTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getFinishTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract getNetwork()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getNetworkOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getPrice()D
.end method

.method public abstract getStartTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getStartTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract hasAdType()Z
.end method

.method public abstract hasBillable()Z
.end method

.method public abstract hasCustomParams()Z
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasFinishTime()Z
.end method

.method public abstract hasNetwork()Z
.end method

.method public abstract hasStartTime()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
