###### Class io.bidmachine.protobuf.sdk.ConfigurationOrBuilder (io.bidmachine.protobuf.sdk.ConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "ConfigurationOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getBpk()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getBpkOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getMonitors(I)Lio/bidmachine/protobuf/sdk/Monitor$Configuration;
.end method

.method public abstract getMonitorsCount()I
.end method

.method public abstract getMonitorsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Monitor$Configuration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitorsOrBuilder(I)Lio/bidmachine/protobuf/sdk/Monitor$ConfigurationOrBuilder;
.end method

.method public abstract getMonitorsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Monitor$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReaders(I)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
.end method

.method public abstract getReadersCount()I
.end method

.method public abstract getReadersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReadersOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;
.end method

.method public abstract getReadersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBpk()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
