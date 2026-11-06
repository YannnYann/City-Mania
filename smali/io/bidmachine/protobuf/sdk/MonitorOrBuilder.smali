###### Class io.bidmachine.protobuf.sdk.MonitorOrBuilder (io.bidmachine.protobuf.sdk.MonitorOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;
.super Ljava/lang/Object;
.source "MonitorOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getRecords(I)Lio/bidmachine/protobuf/sdk/Monitor$Record;
.end method

.method public abstract getRecordsCount()I
.end method

.method public abstract getRecordsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Monitor$Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/Monitor$RecordOrBuilder;
.end method

.method public abstract getRecordsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Monitor$RecordOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
