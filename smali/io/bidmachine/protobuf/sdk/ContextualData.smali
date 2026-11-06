###### Class io.bidmachine.protobuf.sdk.ContextualData (io.bidmachine.protobuf.sdk.ContextualData)
.class public final Lio/bidmachine/protobuf/sdk/ContextualData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ContextualData.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/ContextualData$Builder;,
        Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;,
        Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

.field public static final MEDIATOR_NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

.field private volatile mediatorName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile placement_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2852
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    .line 2860
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2138
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_77

    .line 48
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0xa

    if-eq v2, v4, :cond_57

    const/16 v4, 0x12

    if-eq v2, v4, :cond_50

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2e

    .line 79
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_6d

    :catch_2a
    move-exception p1

    goto :goto_5e

    :catch_2c
    move-exception p1

    goto :goto_68

    .line 67
    :cond_2e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v2, :cond_37

    .line 68
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v2

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 70
    :goto_38
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v2, :cond_b

    .line 72
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 73
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    goto :goto_b

    .line 60
    :cond_50
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 62
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    goto :goto_b

    .line 54
    :cond_57
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 56
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;
    :try_end_5d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_5d} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_5d} :catch_2a
    .catchall {:try_start_d .. :try_end_5d} :catchall_28

    goto :goto_b

    .line 90
    :goto_5e
    :try_start_5e
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 91
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 88
    :goto_68
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_28

    .line 93
    :goto_6d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 94
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 95
    throw p1

    .line 93
    :cond_77
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 94
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2138
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2500()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2700(Lio/bidmachine/protobuf/sdk/ContextualData;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/sdk/ContextualData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2800(Lio/bidmachine/protobuf/sdk/ContextualData;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2802(Lio/bidmachine/protobuf/sdk/ContextualData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2902(Lio/bidmachine/protobuf/sdk/ContextualData;Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p1
.end method

.method public static synthetic access$3000(Lio/bidmachine/protobuf/sdk/ContextualData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3100()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$3200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 1

    .line 2856
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 99
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 1

    .line 2301
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2304
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2274
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2275
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2281
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2282
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2242
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2248
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2287
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2288
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2294
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2295
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2262
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2263
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2269
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2270
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2231
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2237
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2252
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2258
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation

    .line 2871
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2190
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    if-nez v1, :cond_d

    .line 2191
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2193
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    .line 2195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacement()Ljava/lang/String;

    move-result-object v1

    .line 2196
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 2197
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorName()Ljava/lang/String;

    move-result-object v1

    .line 2198
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 2199
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->hasData()Z

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 2200
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->hasData()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2201
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v1

    .line 2202
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    .line 2204
    :cond_4e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2

    .line 2124
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDataOrBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;
    .registers 2

    .line 2135
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2

    .line 2881
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object v0
.end method

.method public getMediatorName()Ljava/lang/String;
    .registers 3

    .line 2066
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    .line 2067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2068
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2070
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2072
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2073
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMediatorNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2088
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    .line 2089
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2090
    check-cast v0, Ljava/lang/String;

    .line 2091
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2093
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    return-object v0

    .line 2096
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
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation

    .line 2876
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .registers 3

    .line 2020
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    .line 2021
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2022
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2024
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2026
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2027
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlacementBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2042
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    .line 2043
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2044
    check-cast v0, Ljava/lang/String;

    .line 2045
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2047
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    return-object v0

    .line 2050
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2166
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2170
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacementBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2171
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2173
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 2174
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2176
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v1, :cond_39

    const/4 v1, 0x3

    .line 2178
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2180
    :cond_39
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2181
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    .line 2112
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2210
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2214
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2218
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_43

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 2221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_43
    mul-int/lit8 v1, v1, 0x1d

    .line 2223
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2224
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 105
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ContextualData;

    const-class v2, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2141
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2145
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2299
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 4

    .line 2315
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2308
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2309
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

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

    .line 2152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacementBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 2153
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->placement_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2155
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 2156
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->mediatorName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2158
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    .line 2159
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2161
    :cond_2c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.AnonymousClass1 (io.bidmachine.protobuf.sdk.ContextualData$1)
.class Lio/bidmachine/protobuf/sdk/ContextualData$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "ContextualData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/ContextualData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2860
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2866
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2860
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.Builder (io.bidmachine.protobuf.sdk.ContextualData$Builder)
.class public final Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ContextualData.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;"
    }
.end annotation


# instance fields
.field private dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

.field private mediatorName_:Ljava/lang/Object;

.field private placement_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2339
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2487
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2583
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2340
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2345
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2487
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2583
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2346
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 3

    .line 2321
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 2

    .line 2321
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;-><init>()V

    return-void
.end method

.method private getDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2824
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2826
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v1

    .line 2827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2828
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2829
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2831
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2327
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2350
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2433
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3

    .line 2382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    .line 2383
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2384
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3

    .line 2391
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    .line 2392
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2702(Lio/bidmachine/protobuf/sdk/ContextualData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2393
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2802(Lio/bidmachine/protobuf/sdk/ContextualData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1a

    .line 2395
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2902(Lio/bidmachine/protobuf/sdk/ContextualData;Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    goto :goto_23

    .line 2397
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2902(Lio/bidmachine/protobuf/sdk/ContextualData;Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2399
    :goto_23
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2355
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2356
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2358
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2360
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 2361
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0

    .line 2363
    :cond_11
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2364
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearData()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2776
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2777
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2780
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2781
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2416
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public clearMediatorName()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2654
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2421
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public clearPlacement()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2558
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2559
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2405
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2

    .line 2702
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2703
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2705
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object v0
.end method

.method public getDataBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 2795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2796
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object v0
.end method

.method public getDataOrBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;
    .registers 2

    .line 2806
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2807
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;

    return-object v0

    .line 2809
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-nez v0, :cond_13

    .line 2810
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 2

    .line 2377
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2372
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMediatorName()Ljava/lang/String;
    .registers 3

    .line 2593
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2594
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2595
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2597
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2598
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    return-object v0

    .line 2601
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMediatorNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2614
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2615
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2616
    check-cast v0, Ljava/lang/String;

    .line 2617
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2619
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    return-object v0

    .line 2622
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .registers 3

    .line 2497
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2498
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2499
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2501
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2502
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    return-object v0

    .line 2505
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2518
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2519
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2520
    check-cast v0, Ljava/lang/String;

    .line 2521
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2523
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    return-object v0

    .line 2526
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    .line 2691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

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

    .line 2333
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ContextualData;

    const-class v2, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2334
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

.method public mergeData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2755
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v0, :cond_17

    .line 2757
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilder(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    goto :goto_19

    .line 2759
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2761
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2763
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

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

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

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

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

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

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

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2475
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$3100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2481
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2477
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/ContextualData;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2478
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

    .line 2481
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2483
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2437
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    if-eqz v0, :cond_b

    .line 2438
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1

    .line 2440
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2446
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2447
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2448
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2700(Lio/bidmachine/protobuf/sdk/ContextualData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2449
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2451
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getMediatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2452
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$2800(Lio/bidmachine/protobuf/sdk/ContextualData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2455
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2456
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->getData()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2458
    :cond_3a
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$3000(Lio/bidmachine/protobuf/sdk/ContextualData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2842
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public setData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2737
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2738
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2741
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2716
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->dataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2720
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->data_:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 2721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2723
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2321
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 2411
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public setMediatorName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2640
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMediatorNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2672
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2674
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->mediatorName_:Ljava/lang/Object;

    .line 2675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlacement(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2544
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlacementBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2576
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData;->access$3200(Lcom/explorestack/protobuf/ByteString;)V

    .line 2578
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->placement_:Ljava/lang/Object;

    .line 2579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2321
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2321
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 4

    .line 2427
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2321
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 2

    .line 2836
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.ImpressionData (io.bidmachine.protobuf.sdk.ContextualData$ImpressionData)
.class public final Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ContextualData.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImpressionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    }
.end annotation


# static fields
.field public static final AGENCY_FIELD_NUMBER:I = 0x8

.field public static final BUNDLE_FIELD_NUMBER:I = 0x6

.field public static final CLCURL_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

.field public static final IMAGENCY_FIELD_NUMBER:I = 0x7

.field public static final IMBUNDLE_FIELD_NUMBER:I = 0x5

.field public static final IMCURL_FIELD_NUMBER:I = 0x9

.field public static final IMD_FIELD_NUMBER:I = 0x2

.field public static final IMIMD_FIELD_NUMBER:I = 0x1

.field public static final IMWP_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
            ">;"
        }
    .end annotation
.end field

.field public static final WP_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile agency_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private volatile clcurl_:Ljava/lang/Object;

.field private volatile imagency_:Ljava/lang/Object;

.field private volatile imbundle_:Ljava/lang/Object;

.field private volatile imcurl_:Ljava/lang/Object;

.field private imd_:I

.field private imimd_:I

.field private imwp_:F

.field private memoizedIsInitialized:B

.field private wp_:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1974
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 1982
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 286
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 749
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->memoizedIsInitialized:B

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    .line 288
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    .line 289
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    .line 290
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    .line 291
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    .line 292
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>()V

    .line 313
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_82

    .line 320
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_8c

    .line 382
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1b
    move v1, v3

    goto :goto_b

    :catchall_1d
    move-exception p1

    goto :goto_78

    :catch_1f
    move-exception p1

    goto :goto_69

    :catch_21
    move-exception p1

    goto :goto_73

    .line 376
    :sswitch_23
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 378
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    goto :goto_b

    .line 370
    :sswitch_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 372
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    goto :goto_b

    .line 364
    :sswitch_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 366
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    goto :goto_b

    .line 358
    :sswitch_38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 360
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    goto :goto_b

    .line 352
    :sswitch_3f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 354
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    goto :goto_b

    .line 346
    :sswitch_46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 348
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    goto :goto_b

    .line 342
    :sswitch_4d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->wp_:F

    goto :goto_b

    .line 337
    :sswitch_54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imwp_:F

    goto :goto_b

    .line 332
    :sswitch_5b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imd_:I

    goto :goto_b

    .line 327
    :sswitch_62
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imimd_:I
    :try_end_68
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_68} :catch_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_68} :catch_1f
    .catchall {:try_start_d .. :try_end_68} :catchall_1d

    goto :goto_b

    .line 393
    :goto_69
    :try_start_69
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 394
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 391
    :goto_73
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_1d

    .line 396
    :goto_78
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 398
    throw p1

    .line 396
    :cond_82
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1b
        0x8 -> :sswitch_62
        0x10 -> :sswitch_5b
        0x1d -> :sswitch_54
        0x25 -> :sswitch_4d
        0x2a -> :sswitch_46
        0x32 -> :sswitch_3f
        0x3a -> :sswitch_38
        0x42 -> :sswitch_31
        0x4a -> :sswitch_2a
        0x52 -> :sswitch_23
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 284
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 749
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 3

    .line 277
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 277
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 277
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;I)I
    .registers 2

    .line 277
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imimd_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;I)I
    .registers 2

    .line 277
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imd_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;F)F
    .registers 2

    .line 277
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imwp_:F

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;F)F
    .registers 2

    .line 277
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->wp_:F

    return p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;
    .registers 1

    .line 277
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 1

    .line 1978
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 402
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 1

    .line 984
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 987
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 958
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 965
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 925
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 931
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 971
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 978
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 946
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 953
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 914
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 920
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 935
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 941
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
            ">;"
        }
    .end annotation

    .line 1993
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 846
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-nez v1, :cond_d

    .line 847
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 849
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImimd()I

    move-result v1

    .line 852
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImimd()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 853
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImd()I

    move-result v1

    .line 854
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImd()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 855
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImwp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 857
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImwp()F

    move-result v2

    .line 856
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_39

    return v3

    .line 858
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getWp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 860
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getWp()F

    move-result v2

    .line 859
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4c

    return v3

    .line 861
    :cond_4c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundle()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v3

    .line 863
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v3

    .line 865
    :cond_6a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagency()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    return v3

    .line 867
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgency()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    return v3

    .line 869
    :cond_88
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurl()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    return v3

    .line 871
    :cond_97
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurl()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    return v3

    .line 873
    :cond_a6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b1

    return v3

    :cond_b1
    return v0
.end method

.method public getAgency()Ljava/lang/String;
    .registers 3

    .line 623
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    .line 624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 625
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 627
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 629
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 630
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAgencyBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 645
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    .line 646
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 647
    check-cast v0, Ljava/lang/String;

    .line 648
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 650
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    return-object v0

    .line 653
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    .line 532
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 533
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 535
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 537
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 538
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 553
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    .line 554
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 555
    check-cast v0, Ljava/lang/String;

    .line 556
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 558
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 561
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClcurl()Ljava/lang/String;
    .registers 3

    .line 715
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    .line 716
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 717
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 719
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 721
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 722
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getClcurlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 737
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    .line 738
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 739
    check-cast v0, Ljava/lang/String;

    .line 740
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 742
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    return-object v0

    .line 745
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2

    .line 2003
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    return-object v0
.end method

.method public getImagency()Ljava/lang/String;
    .registers 3

    .line 577
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    .line 578
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 579
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 581
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 583
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 584
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    return-object v0
.end method

.method public getImagencyBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 599
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    .line 600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 601
    check-cast v0, Ljava/lang/String;

    .line 602
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 604
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    return-object v0

    .line 607
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImbundle()Ljava/lang/String;
    .registers 3

    .line 485
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    .line 486
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 487
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 489
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 491
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 492
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getImbundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 507
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 509
    check-cast v0, Ljava/lang/String;

    .line 510
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 512
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    return-object v0

    .line 515
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImcurl()Ljava/lang/String;
    .registers 3

    .line 669
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    .line 670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 671
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 673
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 675
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 676
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getImcurlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    .line 692
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 693
    check-cast v0, Ljava/lang/String;

    .line 694
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 696
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    return-object v0

    .line 699
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImd()I
    .registers 2

    .line 440
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imd_:I

    return v0
.end method

.method public getImimd()I
    .registers 2

    .line 425
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imimd_:I

    return v0
.end method

.method public getImwp()F
    .registers 2

    .line 455
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imwp_:F

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
            ">;"
        }
    .end annotation

    .line 1998
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 798
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 802
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imimd_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 804
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 806
    :goto_11
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imd_:I

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 808
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    :cond_1b
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imwp_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_28

    const/4 v3, 0x3

    .line 812
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_28
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->wp_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_34

    const/4 v2, 0x4

    .line 816
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    const/4 v1, 0x5

    .line 819
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_46
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    const/4 v1, 0x6

    .line 822
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    :cond_58
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    const/4 v1, 0x7

    .line 825
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 827
    :cond_6a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    const/16 v1, 0x8

    .line 828
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 830
    :cond_7d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    const/16 v1, 0x9

    .line 831
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    const/16 v1, 0xa

    .line 834
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    :cond_a3
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWp()F
    .registers 2

    .line 470
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->wp_:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 879
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 883
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 885
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImimd()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 887
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImd()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 890
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImwp()F

    move-result v0

    .line 889
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getWp()F

    move-result v0

    .line 892
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 895
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 897
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 903
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 906
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 907
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 408
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    const-class v2, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 752
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 756
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 982
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 4

    .line 998
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 299
    new-instance p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 3

    .line 991
    sget-object v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 992
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

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

    .line 763
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imimd_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 764
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 766
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imd_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 767
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 769
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imwp_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1b

    const/4 v2, 0x3

    .line 770
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 772
    :cond_1b
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->wp_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_25

    const/4 v1, 0x4

    .line 773
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 775
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x5

    .line 776
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imbundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 778
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x6

    .line 779
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 781
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    const/4 v0, 0x7

    .line 782
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imagency_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 784
    :cond_55
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    const/16 v0, 0x8

    .line 785
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->agency_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 787
    :cond_66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    const/16 v0, 0x9

    .line 788
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->imcurl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 790
    :cond_77
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    const/16 v0, 0xa

    .line 791
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->clcurl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 793
    :cond_88
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.AnonymousClass1 (io.bidmachine.protobuf.sdk.ContextualData$ImpressionData$1)
.class Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "ContextualData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1982
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1988
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1982
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.Builder (io.bidmachine.protobuf.sdk.ContextualData$ImpressionData$Builder)
.class public final Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ContextualData.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private agency_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private clcurl_:Ljava/lang/Object;

.field private imagency_:Ljava/lang/Object;

.field private imbundle_:Ljava/lang/Object;

.field private imcurl_:Ljava/lang/Object;

.field private imd_:I

.field private imimd_:I

.field private imwp_:F

.field private wp_:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1022
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1380
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1476
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1572
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1668
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1764
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1860
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1023
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1028
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1380
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1476
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1572
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1668
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1764
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1860
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1029
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 3

    .line 1004
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/ContextualData$1;)V
    .registers 2

    .line 1004
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1010
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1033
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 3

    .line 1129
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3

    .line 1075
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1077
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 3

    .line 1084
    new-instance v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ContextualData$1;)V

    .line 1085
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imimd_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$402(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;I)I

    .line 1086
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imd_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$502(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;I)I

    .line 1087
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imwp_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$602(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;F)F

    .line 1088
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->wp_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$702(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;F)F

    .line 1089
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$802(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$902(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1002(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1102(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1202(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1302(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clear()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1038
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imimd_:I

    .line 1041
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imd_:I

    const/4 v0, 0x0

    .line 1043
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imwp_:F

    .line 1045
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->wp_:F

    .line 1047
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1049
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1051
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1053
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1055
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1057
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAgency()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1739
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBundle()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1547
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClcurl()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1931
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1112
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public clearImagency()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1643
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImbundle()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1451
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1452
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImcurl()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1835
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImd()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1289
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imd_:I

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImimd()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1246
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imimd_:I

    .line 1247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImwp()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1332
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imwp_:F

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1117
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public clearWp()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1375
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->wp_:F

    .line 1376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1101
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clone()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAgency()Ljava/lang/String;
    .registers 3

    .line 1678
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1679
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1680
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1682
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1683
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    return-object v0

    .line 1686
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAgencyBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1699
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1700
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1701
    check-cast v0, Ljava/lang/String;

    .line 1702
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1704
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    return-object v0

    .line 1707
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 1486
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1487
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1488
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1490
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1491
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1494
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1507
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1509
    check-cast v0, Ljava/lang/String;

    .line 1510
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1512
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1515
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClcurl()Ljava/lang/String;
    .registers 3

    .line 1870
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1871
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1872
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1874
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1875
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    return-object v0

    .line 1878
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClcurlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1891
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1892
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1893
    check-cast v0, Ljava/lang/String;

    .line 1894
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1896
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    return-object v0

    .line 1899
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    .registers 2

    .line 1070
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1065
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getImagency()Ljava/lang/String;
    .registers 3

    .line 1582
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1583
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1584
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1586
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1587
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    return-object v0

    .line 1590
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImagencyBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1603
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1604
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1605
    check-cast v0, Ljava/lang/String;

    .line 1606
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1608
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    return-object v0

    .line 1611
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImbundle()Ljava/lang/String;
    .registers 3

    .line 1390
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1391
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1392
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1394
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1395
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    return-object v0

    .line 1398
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImbundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1411
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1412
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1413
    check-cast v0, Ljava/lang/String;

    .line 1414
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1416
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    return-object v0

    .line 1419
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImcurl()Ljava/lang/String;
    .registers 3

    .line 1774
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1775
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1776
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1778
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1779
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    return-object v0

    .line 1782
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImcurlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1795
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1796
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1797
    check-cast v0, Ljava/lang/String;

    .line 1798
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1800
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    return-object v0

    .line 1803
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getImd()I
    .registers 2

    .line 1262
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imd_:I

    return v0
.end method

.method public getImimd()I
    .registers 2

    .line 1219
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imimd_:I

    return v0
.end method

.method public getImwp()F
    .registers 2

    .line 1305
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imwp_:F

    return v0
.end method

.method public getWp()F
    .registers 2

    .line 1348
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->wp_:F

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1016
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    const-class v2, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1017
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

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

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

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

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

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

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

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1196
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1202
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1198
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1199
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

    .line 1202
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1204
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 3

    .line 1133
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    if-eqz v0, :cond_b

    .line 1134
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1

    .line 1136
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 4

    .line 1142
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1143
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImimd()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1144
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImimd()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImimd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1146
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImd()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1147
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImd()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1149
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImwp()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_31

    .line 1150
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImwp()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImwp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1152
    :cond_31
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getWp()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    .line 1153
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getWp()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setWp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1155
    :cond_40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImbundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1156
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$800(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1159
    :cond_53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 1160
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$900(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1163
    :cond_66
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImagency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 1164
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1000(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1167
    :cond_79
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getAgency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1168
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1100(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1171
    :cond_8c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getImcurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1172
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1200(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1175
    :cond_9f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->getClcurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1176
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1300(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1179
    :cond_b2
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1400(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 1180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1964
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public setAgency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1725
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAgencyBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1757
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1759
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->agency_:Ljava/lang/Object;

    .line 1760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1565
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1567
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->bundle_:Ljava/lang/Object;

    .line 1568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setClcurl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1917
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setClcurlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1949
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$2100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1951
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->clcurl_:Ljava/lang/Object;

    .line 1952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1004
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 3

    .line 1107
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public setImagency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1629
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImagencyBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1661
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1800(Lcom/explorestack/protobuf/ByteString;)V

    .line 1663
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imagency_:Ljava/lang/Object;

    .line 1664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImbundle(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1437
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImbundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1469
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1471
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imbundle_:Ljava/lang/Object;

    .line 1472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImcurl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1818
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1821
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImcurlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1853
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1855
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imcurl_:Ljava/lang/Object;

    .line 1856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1275
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imd_:I

    .line 1276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImimd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1232
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imimd_:I

    .line 1233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setImwp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1318
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->imwp_:F

    .line 1319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1004
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1004
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 4

    .line 1123
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1958
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    return-object p1
.end method

.method public setWp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 2

    .line 1361
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->wp_:F

    .line 1362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder (io.bidmachine.protobuf.sdk.ContextualData$ImpressionDataOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionDataOrBuilder;
.super Ljava/lang/Object;
.source "ContextualData.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ContextualData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImpressionDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAgency()Ljava/lang/String;
.end method

.method public abstract getAgencyBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getBundle()Ljava/lang/String;
.end method

.method public abstract getBundleBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getClcurl()Ljava/lang/String;
.end method

.method public abstract getClcurlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getImagency()Ljava/lang/String;
.end method

.method public abstract getImagencyBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getImbundle()Ljava/lang/String;
.end method

.method public abstract getImbundleBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getImcurl()Ljava/lang/String;
.end method

.method public abstract getImcurlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getImd()I
.end method

.method public abstract getImimd()I
.end method

.method public abstract getImwp()F
.end method

.method public abstract getWp()F
.end method

.method public abstract synthetic isInitialized()Z
.end method
