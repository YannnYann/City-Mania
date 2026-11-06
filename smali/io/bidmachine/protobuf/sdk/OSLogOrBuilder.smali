###### Class io.bidmachine.protobuf.sdk.OSLogOrBuilder (io.bidmachine.protobuf.sdk.OSLogOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/OSLogOrBuilder;
.super Ljava/lang/Object;
.source "OSLogOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getRecords(I)Lio/bidmachine/protobuf/sdk/OSLog$Record;
.end method

.method public abstract getRecordsCount()I
.end method

.method public abstract getRecordsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;
.end method

.method public abstract getRecordsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
