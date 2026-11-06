###### Class io.bidmachine.protobuf.sdk.Event (io.bidmachine.protobuf.sdk.Event)
.class public final Lio/bidmachine/protobuf/sdk/Event;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Event.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Event$Builder;,
        Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

.field public static final EXTRAS_PRIVATE_FIELD_NUMBER:I = 0x3

.field public static final MONITOR_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final READER_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private extrasPrivate_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1119
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Event;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    .line 1127
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Event$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v0, -0x1

    .line 265
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Event;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_b9

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_79

    const/16 v4, 0x12

    if-eq v2, v4, :cond_52

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_32

    .line 93
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_27
    move v1, v3

    goto :goto_b

    :catchall_29
    move-exception p1

    goto/16 :goto_af

    :catch_2c
    move-exception p1

    goto/16 :goto_a0

    :catch_2f
    move-exception p1

    goto/16 :goto_aa

    .line 81
    :cond_32
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_3a

    .line 82
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 84
    :cond_3a
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 86
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 87
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    goto :goto_b

    .line 67
    :cond_52
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 68
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Reader;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v5

    .line 71
    :cond_5f
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_76

    .line 73
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 74
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    .line 76
    :cond_76
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    goto :goto_b

    .line 53
    :cond_79
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    if-ne v2, v3, :cond_85

    .line 54
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Monitor;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Monitor;->toBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    move-result-object v5

    .line 57
    :cond_85
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_9c

    .line 59
    check-cast v2, Lio/bidmachine/protobuf/sdk/Monitor;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    .line 60
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    .line 62
    :cond_9c
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I
    :try_end_9e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_9e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_9e} :catch_2c
    .catchall {:try_start_d .. :try_end_9e} :catchall_29

    goto/16 :goto_b

    .line 104
    :goto_a0
    :try_start_a0
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 105
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 102
    :goto_aa
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_29

    .line 107
    :goto_af
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 109
    throw p1

    .line 107
    :cond_b9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Event$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 p1, -0x1

    .line 265
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Event;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Event$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Event;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Event;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/Event;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Event;
    .registers 1

    .line 1123
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 113
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 1

    .line 447
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Event;->toBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 450
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Event;->toBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 421
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 428
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 388
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 434
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 441
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 409
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 416
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 383
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 404
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Event;",
            ">;"
        }
    .end annotation

    .line 1138
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 319
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Event;

    if-nez v1, :cond_d

    .line 320
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 322
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Event;

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->hasExtrasPrivate()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->hasExtrasPrivate()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 325
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->hasExtrasPrivate()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 326
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 327
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 329
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getPayloadCase()Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getPayloadCase()Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v3

    .line 330
    :cond_3f
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    if-eq v1, v0, :cond_56

    const/4 v2, 0x2

    if-eq v1, v2, :cond_47

    goto :goto_65

    .line 336
    :cond_47
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getReader()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getReader()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    return v3

    .line 332
    :cond_56
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Monitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    return v3

    .line 342
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    return v3

    :cond_70
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;
    .registers 2

    .line 1148
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    return-object v0
.end method

.method public getExtrasPrivate()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 251
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExtrasPrivateOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 262
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;
    .registers 3

    .line 180
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 181
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    return-object v0

    .line 183
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorOrBuilder()Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;
    .registers 3

    .line 190
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 191
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    return-object v0

    .line 193
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Event;",
            ">;"
        }
    .end annotation

    .line 1143
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPayloadCase()Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 2

    .line 161
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3

    .line 211
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 212
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0

    .line 214
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getReaderOrBuilder()Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;
    .registers 3

    .line 221
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 222
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0

    .line 224
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 293
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 297
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 298
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    .line 299
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 301
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 302
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader;

    .line 303
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExtrasPrivate()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMonitor()Z
    .registers 3

    .line 172
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasReader()Z
    .registers 3

    .line 203
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 348
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 352
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 353
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->hasExtrasPrivate()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 355
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 357
    :cond_25
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    goto :goto_4b

    :cond_2e
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 364
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getReader()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader;->hashCode()I

    move-result v0

    :goto_3b
    add-int/2addr v1, v0

    goto :goto_4b

    :cond_3d
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 360
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Monitor;->hashCode()I

    move-result v0

    goto :goto_3b

    :goto_4b
    mul-int/lit8 v1, v1, 0x1d

    .line 369
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 370
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 119
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Event;

    const-class v2, Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 268
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Event;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 272
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Event;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 445
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->newBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 4

    .line 461
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Event$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/Event;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Event;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->toBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->toBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 454
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Event;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 455
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Event$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Event$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;

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

    .line 279
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 280
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 282
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 283
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 285
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 288
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Event.AnonymousClass1 (io.bidmachine.protobuf.sdk.Event$1)
.class Lio/bidmachine/protobuf/sdk/Event$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Event;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1127
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1133
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Event;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Event$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Event.AnonymousClass2 (io.bidmachine.protobuf.sdk.Event$2)
.class synthetic Lio/bidmachine/protobuf/sdk/Event$2;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 607
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->values()[Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/sdk/Event$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->MONITOR:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->READER:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->PAYLOAD_NOT_SET:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Event.Builder (io.bidmachine.protobuf.sdk.Event$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Event$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Event.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Event$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/EventOrBuilder;"
    }
.end annotation


# instance fields
.field private extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extrasPrivate_:Lcom/explorestack/protobuf/Struct;

.field private monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Monitor;",
            "Lio/bidmachine/protobuf/sdk/Monitor$Builder;",
            "Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader;",
            "Lio/bidmachine/protobuf/sdk/Reader$Builder;",
            "Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 485
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 648
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 486
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 491
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 648
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 492
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Event$1;)V
    .registers 3

    .line 467
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Event$1;)V
    .registers 2

    .line 467
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 473
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtrasPrivateFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1091
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1093
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1096
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 1098
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMonitorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Monitor;",
            "Lio/bidmachine/protobuf/sdk/Monitor$Builder;",
            "Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 790
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_f

    .line 791
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 793
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Monitor;

    .line 796
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 800
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 802
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getReaderFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader;",
            "Lio/bidmachine/protobuf/sdk/Reader$Builder;",
            "Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;",
            ">;"
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_25

    .line 931
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_f

    .line 932
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 934
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader;

    .line 937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 939
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 941
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 943
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 496
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 590
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->build()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->build()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Event;
    .registers 3

    .line 526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Event;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 528
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Event;
    .registers 4

    .line 535
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Event$1;)V

    .line 536
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 537
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 538
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$402(Lio/bidmachine/protobuf/sdk/Event;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 540
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$402(Lio/bidmachine/protobuf/sdk/Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_1c
    :goto_1c
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 544
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2b

    .line 545
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$402(Lio/bidmachine/protobuf/sdk/Event;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 547
    :cond_2b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$402(Lio/bidmachine/protobuf/sdk/Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_32
    :goto_32
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3c

    .line 551
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$502(Lio/bidmachine/protobuf/sdk/Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_45

    .line 553
    :cond_3c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$502(Lio/bidmachine/protobuf/sdk/Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 555
    :goto_45
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Event;->access$602(Lio/bidmachine/protobuf/sdk/Event;I)I

    .line 556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clear()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clear()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clear()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clear()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 501
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 502
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 503
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    goto :goto_f

    .line 505
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 506
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_f
    const/4 v0, 0x0

    .line 508
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 509
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearExtrasPrivate()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 1043
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1044
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 1045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1047
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 1048
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 573
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public clearMonitor()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 6

    .line 748
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    .line 749
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_12

    .line 750
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 751
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 755
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1b

    .line 756
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 757
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 759
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 578
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public clearPayload()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 657
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReader()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 6

    .line 889
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    .line 890
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_12

    .line 891
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 892
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 896
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1b

    .line 897
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    .line 898
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 900
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 562
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->clone()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Event;
    .registers 2

    .line 521
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 516
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExtrasPrivate()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 969
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 970
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 972
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtrasPrivateBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 1062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1063
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getExtrasPrivateFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtrasPrivateOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 1073
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1074
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 1076
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 1077
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;
    .registers 4

    .line 680
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 681
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_e

    .line 682
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    return-object v0

    .line 684
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    return-object v0

    .line 686
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_1e

    .line 687
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    return-object v0

    .line 689
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Builder;
    .registers 2

    .line 767
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getMonitorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    return-object v0
.end method

.method public getMonitorOrBuilder()Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;
    .registers 4

    .line 774
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 775
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MonitorOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 778
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    return-object v0

    .line 780
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCase()Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 2

    .line 652
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 4

    .line 821
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_13

    .line 822
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_e

    .line 823
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0

    .line 825
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0

    .line 827
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_1e

    .line 828
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0

    .line 830
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getReaderBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 908
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->getReaderFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object v0
.end method

.method public getReaderOrBuilder()Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;
    .registers 4

    .line 915
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 916
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 919
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0

    .line 921
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public hasExtrasPrivate()Z
    .registers 2

    .line 958
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

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

.method public hasMonitor()Z
    .registers 3

    .line 672
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasReader()Z
    .registers 3

    .line 813
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 479
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Event;

    const-class v2, Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 480
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

.method public mergeExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 1021
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1022
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 1024
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 1026
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 1028
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1030
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Event$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Event$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 637
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 643
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 639
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Event;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 640
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

    .line 643
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 645
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 594
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Event;

    if-eqz v0, :cond_b

    .line 595
    check-cast p1, Lio/bidmachine/protobuf/sdk/Event;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1

    .line 597
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Event;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 4

    .line 603
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 604
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->hasExtrasPrivate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getExtrasPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 607
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getPayloadCase()Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    goto :goto_36

    .line 613
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getReader()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeReader(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    goto :goto_36

    .line 609
    :cond_2f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Event;->getMonitor()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeMonitor(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 620
    :goto_36
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Event;->access$700(Lio/bidmachine/protobuf/sdk/Event;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 621
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMonitor(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 5

    .line 726
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 727
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 728
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 729
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Monitor;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Monitor;->newBuilder(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    move-result-object v0

    .line 730
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    goto :goto_26

    .line 732
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 734
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 736
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_31

    .line 737
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 739
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 741
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public mergeReader(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 5

    .line 867
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    .line 868
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 869
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 870
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    goto :goto_26

    .line 873
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 875
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 877
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_31

    .line 878
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 880
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 882
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 1109
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public setExtrasPrivate(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 1004
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1005
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 1006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1008
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 983
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->extrasPrivate_:Lcom/explorestack/protobuf/Struct;

    .line 988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 990
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 568
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public setMonitor(Lio/bidmachine/protobuf/sdk/Monitor$Builder;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 713
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 714
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 717
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x1

    .line 719
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setMonitor(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 696
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->monitorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 701
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 703
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x1

    .line 705
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setReader(Lio/bidmachine/protobuf/sdk/Reader$Builder;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 854
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 855
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 858
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x2

    .line 860
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setReader(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 3

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->readerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 839
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payload_:Ljava/lang/Object;

    .line 842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 844
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x2

    .line 846
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Event$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 4

    .line 584
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Event$Builder;
    .registers 2

    .line 1103
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Event$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Event.PayloadCase (io.bidmachine.protobuf.sdk.Event$PayloadCase)
.class public final enum Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/Event$PayloadCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

.field public static final enum MONITOR:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

.field public static final enum READER:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 129
    new-instance v0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    const-string v1, "MONITOR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->MONITOR:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    .line 130
    new-instance v1, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    const-string v4, "READER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->READER:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    .line 131
    new-instance v3, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    const-string v4, "PAYLOAD_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->PAYLOAD_NOT_SET:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    .line 126
    filled-new-array {v0, v1, v3}, [Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->READER:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-object p0

    .line 148
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->MONITOR:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-object p0

    .line 150
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->PAYLOAD_NOT_SET:Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 2

    .line 126
    const-class v0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/Event$PayloadCase;
    .registers 1

    .line 126
    sget-object v0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/Event$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 155
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Event$PayloadCase;->value:I

    return v0
.end method
