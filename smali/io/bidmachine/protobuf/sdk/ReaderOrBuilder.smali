###### Class io.bidmachine.protobuf.sdk.ReaderOrBuilder (io.bidmachine.protobuf.sdk.ReaderOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;
.super Ljava/lang/Object;
.source "ReaderOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getRecords(I)Lio/bidmachine/protobuf/sdk/Reader$Record;
.end method

.method public abstract getRecordsCount()I
.end method

.method public abstract getRecordsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;
.end method

.method public abstract getRecordsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
