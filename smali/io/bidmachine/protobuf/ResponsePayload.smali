###### Class io.bidmachine.protobuf.ResponsePayload (io.bidmachine.protobuf.ResponsePayload)
.class public final Lio/bidmachine/protobuf/ResponsePayload;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ResponsePayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/ResponsePayload$Builder;,
        Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    }
.end annotation


# static fields
.field public static final CACHE_TIME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ITEM_SPEC_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_CACHE_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CACHE_URL_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private cacheTime_:Lcom/explorestack/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1345
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    invoke-direct {v0}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    .line 1353
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/ResponsePayload$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v0, -0x1

    .line 335
    iput-byte v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_c1

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_87

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7d

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_56

    const/16 v4, 0x22

    if-eq v2, v4, :cond_36

    .line 98
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2b
    move v1, v3

    goto :goto_b

    :catchall_2d
    move-exception p1

    goto/16 :goto_b7

    :catch_30
    move-exception p1

    goto/16 :goto_a8

    :catch_33
    move-exception p1

    goto/16 :goto_b2

    .line 86
    :cond_36
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v2, :cond_3e

    .line 87
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v5

    .line 89
    :cond_3e
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement;

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v5, :cond_b

    .line 91
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 92
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_b

    .line 72
    :cond_56
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_63

    .line 73
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v5

    .line 76
    :cond_63
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_7a

    .line 78
    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 79
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 81
    :cond_7a
    iput v3, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    goto :goto_b

    .line 65
    :cond_7d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 66
    iput v3, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 67
    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    goto :goto_b

    .line 53
    :cond_87
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_8f

    .line 54
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 56
    :cond_8f
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_b

    .line 58
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 59
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;
    :try_end_a6
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_a6} :catch_33
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_a6} :catch_30
    .catchall {:try_start_d .. :try_end_a6} :catchall_2d

    goto/16 :goto_b

    .line 109
    :goto_a8
    :try_start_a8
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 110
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 107
    :goto_b2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_b7
    .catchall {:try_start_a8 .. :try_end_b7} :catchall_2d

    .line 112
    :goto_b7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 114
    throw p1

    .line 112
    :cond_c1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 129
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 p1, -0x1

    .line 335
    iput-byte p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/ResponsePayload;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    return p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/ResponsePayload;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;
    .registers 1

    .line 1349
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 118
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 1

    .line 532
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 535
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 506
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 513
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 473
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 479
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 519
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 526
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 494
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 501
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 462
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 468
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 483
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 489
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation

    .line 1364
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 395
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/ResponsePayload;

    if-nez v1, :cond_d

    .line 396
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 398
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;

    .line 400
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 401
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 403
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 405
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 406
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 407
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 408
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 410
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v3

    .line 411
    :cond_5f
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_77

    const/4 v2, 0x3

    if-eq v1, v2, :cond_68

    goto :goto_86

    .line 417
    :cond_68
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/openrtb/Openrtb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    return v3

    .line 413
    :cond_77
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    return v3

    .line 423
    :cond_86
    :goto_86
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v3

    :cond_91
    return v0
.end method

.method public getCacheTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 194
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCacheTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2

    .line 1374
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation

    .line 1369
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 2

    .line 166
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 236
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRequestItemSpecOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .registers 2

    .line 249
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3

    .line 319
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 320
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 322
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheOrBuilder()Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;
    .registers 3

    .line 329
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 330
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 332
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheUrl()Ljava/lang/String;
    .registers 4

    .line 266
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 267
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    goto :goto_a

    .line 266
    :cond_8
    const-string v0, ""

    .line 269
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 270
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 272
    :cond_11
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 274
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1d

    .line 276
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method

.method public getResponseCacheUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 288
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 289
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    goto :goto_a

    .line 288
    :cond_8
    const-string v0, ""

    .line 291
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 292
    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 295
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1a

    .line 296
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 300
    :cond_1b
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 366
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 370
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 374
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 375
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_21
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 378
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 379
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_2f
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v1, :cond_3d

    const/4 v1, 0x4

    .line 383
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_3d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCacheTime()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRequestItemSpec()Z
    .registers 2

    .line 222
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponseCache()Z
    .registers 3

    .line 311
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponseCacheUrl()Z
    .registers 3

    .line 258
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

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

    .line 429
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 433
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 434
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 436
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 438
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 442
    :cond_3a
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_52

    const/4 v2, 0x3

    if-eq v0, v2, :cond_43

    goto :goto_60

    :cond_43
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->hashCode()I

    move-result v0

    :goto_50
    add-int/2addr v1, v0

    goto :goto_60

    :cond_52
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 445
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_50

    :goto_60
    mul-int/lit8 v1, v1, 0x1d

    .line 454
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 455
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 124
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/ResponsePayload;

    const-class v2, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 338
    iget-byte v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 342
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 530
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 4

    .line 546
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/ResponsePayload;

    invoke-direct {p1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 539
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 540
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 349
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 352
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 353
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 355
    :cond_16
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 356
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 358
    :cond_22
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    .line 359
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 361
    :cond_2e
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.ResponsePayload.AnonymousClass1 (io.bidmachine.protobuf.ResponsePayload$1)
.class Lio/bidmachine/protobuf/ResponsePayload$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "ResponsePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/ResponsePayload;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1353
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1359
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1353
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.ResponsePayload.AnonymousClass2 (io.bidmachine.protobuf.ResponsePayload$2)
.class synthetic Lio/bidmachine/protobuf/ResponsePayload$2;
.super Ljava/lang/Object;
.source "ResponsePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 702
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->values()[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.protobuf.ResponsePayload.Builder (io.bidmachine.protobuf.ResponsePayload$Builder)
.class public final Lio/bidmachine/protobuf/ResponsePayload$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ResponsePayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/ResponsePayload$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private cacheTime_:Lcom/explorestack/protobuf/Timestamp;

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

.field private responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 570
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 745
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 571
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 576
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 745
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 577
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .registers 3

    .line 552
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .registers 2

    .line 552
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>()V

    return-void
.end method

.method private getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 905
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 906
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 908
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 913
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 558
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1079
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 1082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1086
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_25

    .line 1312
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 1313
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1315
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 1318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1320
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1322
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1324
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 581
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 682
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/ResponsePayload;
    .registers 3

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 619
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/ResponsePayload;
    .registers 4

    .line 626
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    .line 627
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 628
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 630
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 632
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 633
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_2c

    .line 635
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    .line 637
    :goto_2c
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    .line 638
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_36
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4c

    .line 641
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_45

    .line 642
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 644
    :cond_45
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_4c
    :goto_4c
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$702(Lio/bidmachine/protobuf/ResponsePayload;I)I

    .line 648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 586
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 587
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 588
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_f

    .line 590
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 591
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 593
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 594
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1a

    .line 596
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 597
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1a
    const/4 v0, 0x0

    .line 599
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 600
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCacheTime()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 858
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 859
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 862
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 863
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 665
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 670
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public clearPayloadOneof()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 754
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRequestItemSpec()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1025
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1026
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1029
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1030
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearResponseCache()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 6

    .line 1270
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_13

    .line 1271
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 1272
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1273
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1277
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 1278
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1279
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1281
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearResponseCacheUrl()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1162
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1163
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 1164
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 654
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 784
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 785
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 787
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getCacheTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 877
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 878
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getCacheTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 888
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 889
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 891
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 892
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;
    .registers 2

    .line 612
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 607
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 2

    .line 749
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 943
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 944
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_c
    return-object v0

    .line 946
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public getRequestItemSpecBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .registers 2

    .line 1046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1047
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public getRequestItemSpecOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .registers 2

    .line 1059
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1060
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;

    return-object v0

    .line 1062
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_13

    .line 1063
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 4

    .line 1202
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_13

    .line 1203
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 1204
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1206
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0

    .line 1208
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 1209
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1211
    :cond_1e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1289
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object v0
.end method

.method public getResponseCacheOrBuilder()Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;
    .registers 4

    .line 1296
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1297
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1300
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1302
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheUrl()Ljava/lang/String;
    .registers 4

    .line 1104
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1105
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_a

    .line 1104
    :cond_8
    const-string v0, ""

    .line 1107
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1108
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1110
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1111
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1a

    .line 1112
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1116
    :cond_1b
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCacheUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 1127
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1128
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_a

    .line 1127
    :cond_8
    const-string v0, ""

    .line 1130
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1131
    check-cast v0, Ljava/lang/String;

    .line 1132
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1134
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1a

    .line 1135
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1139
    :cond_1b
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasCacheTime()Z
    .registers 2

    .line 773
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasRequestItemSpec()Z
    .registers 2

    .line 930
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

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

.method public hasResponseCache()Z
    .registers 3

    .line 1194
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponseCacheUrl()Z
    .registers 3

    .line 1095
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

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

    .line 564
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/ResponsePayload;

    const-class v2, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 565
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

.method public mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 836
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 839
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 841
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 843
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 845
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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 734
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 740
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 736
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 737
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

    .line 740
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 742
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 686
    instance-of v0, p1, Lio/bidmachine/protobuf/ResponsePayload;

    if-eqz v0, :cond_b

    .line 687
    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1

    .line 689
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 5

    .line 695
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 696
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 697
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 699
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 700
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 702
    :cond_21
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3c

    if-eq v0, v2, :cond_34

    goto :goto_47

    .line 710
    :cond_34
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    goto :goto_47

    .line 704
    :cond_3c
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 705
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$600(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 717
    :goto_47
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$800(Lio/bidmachine/protobuf/ResponsePayload;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1001
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_17

    .line 1004
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_19

    .line 1006
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1008
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1010
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 5

    .line 1248
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_2a

    .line 1249
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1250
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1251
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    .line 1252
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 1254
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1256
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1258
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 1259
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1261
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1263
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 1335
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 819
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 820
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 823
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 805
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 660
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 4

    .line 676
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 982
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 983
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 984
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 986
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 959
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 966
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1235
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1236
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1239
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x3

    .line 1241
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1218
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1225
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x3

    .line 1227
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCacheUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 1152
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1153
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setResponseCacheUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 3

    .line 1177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    const/4 v0, 0x2

    .line 1180
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1181
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1182
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .registers 2

    .line 1329
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.ResponsePayload.PayloadOneofCase (io.bidmachine.protobuf.ResponsePayload$PayloadOneofCase)
.class public final enum Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
.super Ljava/lang/Enum;
.source "ResponsePayload.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 134
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const-string v1, "RESPONSE_CACHE_URL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 135
    new-instance v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "RESPONSE_CACHE"

    invoke-direct {v1, v6, v4, v5}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 136
    new-instance v4, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const-string v5, "PAYLOADONEOF_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 131
    filled-new-array {v0, v1, v4}, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0

    .line 153
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0

    .line 155
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 2

    .line 131
    const-class v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .registers 1

    .line 131
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 160
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->value:I

    return v0
.end method
