###### Class io.bidmachine.protobuf.sdk.OSLog (io.bidmachine.protobuf.sdk.OSLog)
.class public final Lio/bidmachine/protobuf/sdk/OSLog;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "OSLog.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OSLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/OSLog$Builder;,
        Lio/bidmachine/protobuf/sdk/OSLog$Record;,
        Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private records_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2102
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    .line 2110
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OSLog$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1502
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_62

    .line 48
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    const/16 v5, 0xa

    if-eq v3, v5, :cond_27

    .line 63
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_1f
    move v1, v4

    goto :goto_c

    :catchall_21
    move-exception p1

    goto :goto_4e

    :catch_23
    move-exception p1

    goto :goto_3f

    :catch_25
    move-exception p1

    goto :goto_49

    :cond_27
    if-nez v2, :cond_31

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    move v2, v4

    .line 58
    :cond_31
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    .line 59
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_3e} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3e} :catch_23
    .catchall {:try_start_e .. :try_end_3e} :catchall_21

    goto :goto_c

    .line 74
    :goto_3f
    :try_start_3f
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 75
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 72
    :goto_49
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_21

    :goto_4e
    if-eqz v2, :cond_58

    .line 78
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    .line 80
    :cond_58
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 82
    throw p1

    :cond_62
    if-eqz v2, :cond_6c

    .line 78
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    .line 80
    :cond_6c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1502
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1800()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/sdk/OSLog;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2100()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2200(Lio/bidmachine/protobuf/sdk/OSLog;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 1

    .line 2106
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 86
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 1

    .line 1642
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1645
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1615
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1616
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1622
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1623
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1583
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1589
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1628
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1629
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1635
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1636
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1603
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1604
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1610
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1611
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1572
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1578
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1593
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1599
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog;",
            ">;"
        }
    .end annotation

    .line 2121
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1542
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/OSLog;

    if-nez v1, :cond_d

    .line 1543
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1545
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog;

    .line 1547
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->getRecordsList()Ljava/util/List;

    move-result-object v1

    .line 1548
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->getRecordsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1549
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2

    .line 2131
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog;",
            ">;"
        }
    .end annotation

    .line 2126
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRecords(I)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3

    .line 1491
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p1
.end method

.method public getRecordsCount()I
    .registers 2

    .line 1484
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation

    .line 1469
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    return-object v0
.end method

.method public getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;
    .registers 3

    .line 1499
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;

    return-object p1
.end method

.method public getRecordsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1524
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 1528
    :goto_8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1529
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    .line 1530
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1532
    :cond_21
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1533
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1555
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1559
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->getRecordsCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1562
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->getRecordsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 1564
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1565
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 92
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OSLog;

    const-class v2, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1505
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/OSLog;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1509
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1640
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1656
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/sdk/OSLog;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1649
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1650
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1516
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1517
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog;->records_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1519
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.AnonymousClass1 (io.bidmachine.protobuf.sdk.OSLog$1)
.class Lio/bidmachine/protobuf/sdk/OSLog$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "OSLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/OSLog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2110
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2116
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2110
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.Builder (io.bidmachine.protobuf.sdk.OSLog$Builder)
.class public final Lio/bidmachine/protobuf/sdk/OSLog$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "OSLog.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OSLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/OSLog$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/OSLogOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;",
            "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private records_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1680
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1845
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1681
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1686
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1845
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1687
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 3

    .line 1662
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 2

    .line 1662
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;-><init>()V

    return-void
.end method

.method private ensureRecordsIsMutable()V
    .registers 3

    .line 1847
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1849
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1668
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;",
            "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 2073
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2077
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2078
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2079
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 2081
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1691
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1692
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllRecords(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/OSLog$Builder;"
        }
    .end annotation

    .line 1983
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1984
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1985
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1989
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(ILio/bidmachine/protobuf/sdk/OSLog$Record$Builder;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1969
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1970
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1971
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1974
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(ILio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1938
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1940
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1942
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1944
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1946
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1955
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1956
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1957
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1960
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1921
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1925
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1926
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1929
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecordsBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 2051
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2052
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v1

    .line 2051
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object v0
.end method

.method public addRecordsBuilder(I)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 4

    .line 2059
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2060
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v1

    .line 2059
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1774
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 3

    .line 1720
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    .line 1721
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1722
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 4

    .line 1729
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/OSLog;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    .line 1730
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    .line 1731
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_24

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    .line 1733
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1734
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    .line 1736
    :cond_1e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2002(Lio/bidmachine/protobuf/sdk/OSLog;Ljava/util/List;)Ljava/util/List;

    goto :goto_2b

    .line 1738
    :cond_24
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2002(Lio/bidmachine/protobuf/sdk/OSLog;Ljava/util/List;)Ljava/util/List;

    .line 1740
    :goto_2b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1697
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1698
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1699
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1700
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    return-object p0

    .line 1702
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1757
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1762
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public clearRecords()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1997
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1998
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1999
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    .line 2000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2002
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 1746
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog;
    .registers 2

    .line 1715
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1710
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRecords(I)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3

    .line 1880
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1881
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p1

    .line 1883
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p1
.end method

.method public getRecordsBuilder(I)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 2024
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public getRecordsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;",
            ">;"
        }
    .end annotation

    .line 2067
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsCount()I
    .registers 2

    .line 1870
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1873
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRecordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1861
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1863
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;
    .registers 3

    .line 2031
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2032
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;

    return-object p1

    .line 2033
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;

    return-object p1
.end method

.method public getRecordsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2041
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2042
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2044
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1674
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OSLog;

    const-class v2, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    .line 1675
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1831
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1837
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1833
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/OSLog;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1834
    :try_start_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 1837
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    .line 1839
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1778
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/OSLog;

    if-eqz v0, :cond_b

    .line 1779
    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1

    .line 1781
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1787
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1788
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3a

    .line 1789
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1790
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1791
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1792
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    goto :goto_36

    .line 1794
    :cond_2a
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1795
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1797
    :goto_36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_76

    .line 1800
    :cond_3a
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1801
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1802
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1803
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1804
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    .line 1805
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->bitField0_:I

    .line 1807
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1808
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6a
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_76

    .line 1810
    :cond_6d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2000(Lio/bidmachine/protobuf/sdk/OSLog;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1814
    :cond_76
    :goto_76
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog;->access$2200(Lio/bidmachine/protobuf/sdk/OSLog;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    .line 1815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 2092
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public removeRecords(I)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 2010
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2011
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 2012
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2015
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1662
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 3

    .line 1752
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public setRecords(ILio/bidmachine/protobuf/sdk/OSLog$Record$Builder;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1908
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1909
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1910
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1913
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRecords(ILio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1891
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1893
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1895
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->ensureRecordsIsMutable()V

    .line 1896
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1899
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1662
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1662
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 4

    .line 1768
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1662
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;
    .registers 2

    .line 2086
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.Record (io.bidmachine.protobuf.sdk.OSLog$Record)
.class public final Lio/bidmachine/protobuf/sdk/OSLog$Record;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "OSLog.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

.field public static final LEVEL_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x4

.field public static final TAG_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile level_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile message_:Ljava/lang/Object;

.field private volatile source_:Ljava/lang/Object;

.field private volatile tag_:Ljava/lang/Object;

.field private timestamp_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1428
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    .line 1436
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 208
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 524
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->memoizedIsInitialized:B

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    .line 210
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    .line 211
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    .line 212
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>()V

    .line 233
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_8d

    .line 240
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    const/16 v4, 0xa

    if-eq v2, v4, :cond_52

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_44

    const/16 v4, 0x22

    if-eq v2, v4, :cond_3d

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_36

    .line 283
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2e
    move v1, v3

    goto :goto_b

    :catchall_30
    move-exception p1

    goto :goto_83

    :catch_32
    move-exception p1

    goto :goto_74

    :catch_34
    move-exception p1

    goto :goto_7e

    .line 277
    :cond_36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 279
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    goto :goto_b

    .line 271
    :cond_3d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 273
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    goto :goto_b

    .line 265
    :cond_44
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 267
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    goto :goto_b

    .line 259
    :cond_4b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 261
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    goto :goto_b

    .line 247
    :cond_52
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_5b

    .line 248
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v2

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    .line 250
    :goto_5c
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_b

    .line 252
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 253
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;
    :try_end_73
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_73} :catch_34
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_73} :catch_32
    .catchall {:try_start_d .. :try_end_73} :catchall_30

    goto :goto_b

    .line 294
    :goto_74
    :try_start_74
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 295
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 292
    :goto_7e
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_30

    .line 297
    :goto_83
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 299
    throw p1

    .line 297
    :cond_8d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 524
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 3

    .line 199
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 199
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 199
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/OSLog$Record;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 199
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;
    .registers 1

    .line 199
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;
    .registers 1

    .line 199
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;
    .registers 1

    .line 199
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;
    .registers 1

    .line 199
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 1

    .line 1432
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 303
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 1

    .line 707
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 710
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 681
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 688
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 694
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 701
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 669
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 676
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 637
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 658
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 664
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation

    .line 1447
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 588
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    if-nez v1, :cond_d

    .line 589
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 591
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->hasTimestamp()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 594
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 595
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 596
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 598
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v3

    .line 600
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevel()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v3

    .line 602
    :cond_4e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    return v3

    .line 604
    :cond_5d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    return v3

    .line 606
    :cond_6c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    return v3

    :cond_77
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2

    .line 1457
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 3

    .line 398
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    .line 399
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 400
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 402
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 404
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 405
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLevelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 420
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    .line 421
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 422
    check-cast v0, Ljava/lang/String;

    .line 423
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 425
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    return-object v0

    .line 428
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 490
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    .line 491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 492
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 494
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 496
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 497
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 512
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    .line 513
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 514
    check-cast v0, Ljava/lang/String;

    .line 515
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 517
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    return-object v0

    .line 520
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
            ">;"
        }
    .end annotation

    .line 1452
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 558
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 562
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 566
    :goto_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTagBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x2

    .line 567
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x3

    .line 570
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSourceBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x4

    .line 573
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessageBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    const/4 v1, 0x5

    .line 576
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_5d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 3

    .line 444
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    .line 445
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 446
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 448
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 451
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSourceBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 466
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    .line 467
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 468
    check-cast v0, Ljava/lang/String;

    .line 469
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 471
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    return-object v0

    .line 474
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 352
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    .line 353
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 354
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 356
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 358
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTagBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 374
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    .line 375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 376
    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 379
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    return-object v0

    .line 382
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 330
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 337
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .line 322
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 612
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 616
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 619
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 622
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 624
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 628
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 629
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 630
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 309
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    const-class v2, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 527
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 531
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 705
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 4

    .line 721
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 219
    new-instance p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 714
    sget-object v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OSLog$Record;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 715
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 539
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 541
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTagBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    .line 542
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->tag_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 544
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    .line 545
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->level_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 547
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSourceBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x4

    .line 548
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->source_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 550
    :cond_3c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessageBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x5

    .line 551
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record;->message_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 553
    :cond_4c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.Record.AnonymousClass1 (io.bidmachine.protobuf.sdk.OSLog$Record$1)
.class Lio/bidmachine/protobuf/sdk/OSLog$Record$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "OSLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/OSLog$Record;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1436
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1442
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.Record.Builder (io.bidmachine.protobuf.sdk.OSLog$Record$Builder)
.class public final Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "OSLog.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;"
    }
.end annotation


# instance fields
.field private level_:Ljava/lang/Object;

.field private message_:Ljava/lang/Object;

.field private source_:Ljava/lang/Object;

.field private tag_:Ljava/lang/Object;

.field private timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 745
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1026
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1122
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1218
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1314
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 746
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 751
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1026
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1122
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1218
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1314
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 752
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 3

    .line 727
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/OSLog$1;)V
    .registers 2

    .line 727
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 733
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1016
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1018
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1021
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 1023
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 756
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 845
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3

    .line 792
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 794
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 3

    .line 801
    new-instance v0, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OSLog$1;)V

    .line 802
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 803
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$402(Lio/bidmachine/protobuf/sdk/OSLog$Record;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 805
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$402(Lio/bidmachine/protobuf/sdk/OSLog$Record;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 807
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$502(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$602(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$702(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$802(Lio/bidmachine/protobuf/sdk/OSLog$Record;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 761
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 762
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 763
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_f

    .line 765
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 766
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 768
    :goto_f
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 770
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 772
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 774
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 828
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public clearLevel()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1193
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1194
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMessage()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1385
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 833
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public clearSource()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1289
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTag()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1097
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 980
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 981
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 984
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 985
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 817
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OSLog$Record;
    .registers 2

    .line 787
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 782
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 3

    .line 1132
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1133
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1134
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1136
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1137
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    return-object v0

    .line 1140
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLevelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1153
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1155
    check-cast v0, Ljava/lang/String;

    .line 1156
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1158
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    return-object v0

    .line 1161
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 1324
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 1325
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1326
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1328
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1329
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    return-object v0

    .line 1332
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1345
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 1346
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1347
    check-cast v0, Ljava/lang/String;

    .line 1348
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1350
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    return-object v0

    .line 1353
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 3

    .line 1228
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1229
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1230
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1232
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1233
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    return-object v0

    .line 1236
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1249
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1250
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1251
    check-cast v0, Ljava/lang/String;

    .line 1252
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1254
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    return-object v0

    .line 1257
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 1036
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1037
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1038
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1040
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1041
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    return-object v0

    .line 1044
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1057
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1059
    check-cast v0, Ljava/lang/String;

    .line 1060
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1062
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    return-object v0

    .line 1065
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 922
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 923
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 925
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getTimestampBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 996
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->getTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1003
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 1005
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 1006
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .line 915
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 739
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    const-class v2, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    .line 740
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 895
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 901
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 897
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/OSLog$Record;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 898
    :try_start_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 901
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    .line 903
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 849
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    if-eqz v0, :cond_b

    .line 850
    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1

    .line 852
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 858
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 859
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 860
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    .line 862
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 863
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$500(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 866
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 867
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$600(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 870
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 871
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$700(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 874
    :cond_4d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 875
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$800(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 878
    :cond_60
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$900(Lio/bidmachine/protobuf/sdk/OSLog$Record;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    .line 879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 962
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 963
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 965
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 967
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 969
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 971
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1418
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 823
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public setLevel(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLevelBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1213
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->level_:Ljava/lang/Object;

    .line 1214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1371
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 1372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1403
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1405
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->message_:Ljava/lang/Object;

    .line 1406
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 727
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 727
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 4

    .line 839
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

.method public setSource(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1275
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSourceBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1307
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1309
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->source_:Ljava/lang/Object;

    .line 1310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1080
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTagBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1115
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1117
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->tag_:Ljava/lang/Object;

    .line 1118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 949
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 950
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 953
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 3

    .line 932
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 934
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 939
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;
    .registers 2

    .line 1412
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OSLog.RecordOrBuilder (io.bidmachine.protobuf.sdk.OSLog$RecordOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/OSLog$RecordOrBuilder;
.super Ljava/lang/Object;
.source "OSLog.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getLevel()Ljava/lang/String;
.end method

.method public abstract getLevelBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getMessageBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTagBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTimestamp()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
