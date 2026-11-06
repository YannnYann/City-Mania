###### Class io.bidmachine.protobuf.sdk.GeometryMetric (io.bidmachine.protobuf.sdk.GeometryMetric)
.class public final Lio/bidmachine/protobuf/sdk/GeometryMetric;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "GeometryMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

.field public static final MIN_ALPHA_FIELD_NUMBER:I = 0x6

.field public static final MIN_HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final MIN_WIDTH_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBLE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private minAlpha_:D

.field private minHeight_:I

.field private minWidth_:I

.field private visible_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 825
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    .line 833
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 207
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_78

    .line 51
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    const/16 v4, 0x8

    if-eq v2, v4, :cond_53

    const/16 v4, 0x10

    if-eq v2, v4, :cond_46

    const/16 v4, 0x18

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x31

    if-eq v2, v4, :cond_32

    .line 77
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2a
    move v1, v3

    goto :goto_b

    :catchall_2c
    move-exception p1

    goto :goto_6e

    :catch_2e
    move-exception p1

    goto :goto_5f

    :catch_30
    move-exception p1

    goto :goto_69

    .line 72
    :cond_32
    iget v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    .line 73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minAlpha_:D

    goto :goto_b

    .line 68
    :cond_3f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->visible_:Z

    goto :goto_b

    .line 62
    :cond_46
    iget v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    .line 63
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minHeight_:I

    goto :goto_b

    .line 57
    :cond_53
    iget v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minWidth_:I
    :try_end_5e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_5e} :catch_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_5e} :catch_2e
    .catchall {:try_start_d .. :try_end_5e} :catchall_2c

    goto :goto_b

    .line 88
    :goto_5f
    :try_start_5f
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 89
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 86
    :goto_69
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_2c

    .line 91
    :goto_6e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 93
    throw p1

    .line 91
    :cond_78
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 207
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minWidth_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minHeight_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/GeometryMetric;Z)Z
    .registers 2

    .line 13
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->visible_:Z

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/GeometryMetric;D)D
    .registers 3

    .line 13
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minAlpha_:D

    return-wide p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    return p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 1

    .line 829
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 97
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 1

    .line 396
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 399
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 370
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 377
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 337
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 343
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 383
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 390
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 358
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 365
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 332
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 347
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 353
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
            ">;"
        }
    .end annotation

    .line 844
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 268
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    if-nez v1, :cond_d

    .line 269
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 271
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    .line 273
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 274
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinWidth()I

    move-result v1

    .line 276
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinWidth()I

    move-result v2

    if-eq v1, v2, :cond_2c

    return v3

    .line 278
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v2

    if-eq v1, v2, :cond_37

    return v3

    .line 279
    :cond_37
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinHeight()I

    move-result v1

    .line 281
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinHeight()I

    move-result v2

    if-eq v1, v2, :cond_48

    return v3

    .line 283
    :cond_48
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v1

    .line 284
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v2

    if-eq v1, v2, :cond_53

    return v3

    .line 285
    :cond_53
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v2

    if-eq v1, v2, :cond_5e

    return v3

    .line 286
    :cond_5e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 287
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinAlpha()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 289
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinAlpha()D

    move-result-wide v4

    .line 288
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_79

    return v3

    .line 291
    :cond_79
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    return v3

    :cond_84
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2

    .line 854
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0
.end method

.method public getMinAlpha()D
    .registers 3

    .line 204
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minAlpha_:D

    return-wide v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 160
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minHeight_:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 133
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minWidth_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
            ">;"
        }
    .end annotation

    .line 849
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 238
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 242
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 243
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minWidth_:I

    .line 244
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 246
    :goto_14
    iget v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    .line 247
    iget v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minHeight_:I

    .line 248
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_21
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->visible_:Z

    if-eqz v1, :cond_2b

    const/4 v2, 0x3

    .line 252
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_2b
    iget v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_39

    const/4 v1, 0x6

    .line 255
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minAlpha_:D

    .line 256
    invoke-static {v1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_39
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->visible_:Z

    return v0
.end method

.method public hasMinAlpha()Z
    .registers 2

    .line 191
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinHeight()Z
    .registers 2

    .line 148
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinWidth()Z
    .registers 3

    .line 121
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 297
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 301
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v0

    if-eqz v0, :cond_21

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 306
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v0

    if-eqz v0, :cond_32

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 308
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinHeight()I

    move-result v0

    add-int/2addr v1, v0

    :cond_32
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 312
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v0

    .line 311
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 313
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v0

    if-eqz v0, :cond_5a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 316
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinAlpha()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 315
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5a
    mul-int/lit8 v1, v1, 0x1d

    .line 318
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 319
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 103
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 210
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 394
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->newBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 4

    .line 410
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 403
    sget-object v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/GeometryMetric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 404
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

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

    .line 221
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 222
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minWidth_:I

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 224
    :cond_b
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 225
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minHeight_:I

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 227
    :cond_16
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->visible_:Z

    if-eqz v0, :cond_1e

    const/4 v1, 0x3

    .line 228
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 230
    :cond_1e
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    const/4 v0, 0x6

    .line 231
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric;->minAlpha_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 233
    :cond_2a
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.GeometryMetric.AnonymousClass1 (io.bidmachine.protobuf.sdk.GeometryMetric$1)
.class Lio/bidmachine/protobuf/sdk/GeometryMetric$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "GeometryMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/GeometryMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 833
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 839
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.GeometryMetric.Builder (io.bidmachine.protobuf.sdk.GeometryMetric$Builder)
.class public final Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "GeometryMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/GeometryMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private minAlpha_:D

.field private minHeight_:I

.field private minWidth_:I

.field private visible_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 438
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 439
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 444
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 445
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V
    .registers 3

    .line 420
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V
    .registers 2

    .line 420
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 426
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 449
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 539
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3

    .line 479
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 481
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 6

    .line 488
    new-instance v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/GeometryMetric$1;)V

    .line 489
    iget v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_13

    .line 492
    iget v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minWidth_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$402(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1f

    .line 496
    iget v3, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minHeight_:I

    invoke-static {v0, v3}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$502(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I

    or-int/lit8 v2, v2, 0x2

    .line 499
    :cond_1f
    iget-boolean v3, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->visible_:Z

    invoke-static {v0, v3}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$602(Lio/bidmachine/protobuf/sdk/GeometryMetric;Z)Z

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    .line 501
    iget-wide v3, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minAlpha_:D

    invoke-static {v0, v3, v4}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$702(Lio/bidmachine/protobuf/sdk/GeometryMetric;D)D

    or-int/lit8 v2, v2, 0x4

    .line 504
    :cond_2f
    invoke-static {v0, v2}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$802(Lio/bidmachine/protobuf/sdk/GeometryMetric;I)I

    .line 505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 5

    .line 454
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 455
    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minWidth_:I

    .line 456
    iget v1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    .line 457
    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minHeight_:I

    .line 459
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->visible_:Z

    const-wide/16 v2, 0x0

    .line 461
    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minAlpha_:D

    and-int/lit8 v0, v1, -0x8

    .line 462
    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 522
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public clearMinAlpha()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 801
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 802
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minAlpha_:D

    .line 803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinHeight()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 699
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 700
    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minHeight_:I

    .line 701
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinWidth()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 644
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 645
    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minWidth_:I

    .line 646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 527
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public clearVisible()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 743
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->visible_:Z

    .line 744
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 511
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 2

    .line 474
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 469
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMinAlpha()D
    .registers 3

    .line 773
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minAlpha_:D

    return-wide v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 673
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minHeight_:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 618
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minWidth_:I

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 716
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->visible_:Z

    return v0
.end method

.method public hasMinAlpha()Z
    .registers 2

    .line 760
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinHeight()Z
    .registers 2

    .line 661
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinWidth()Z
    .registers 3

    .line 606
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 432
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 433
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

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

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

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

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

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

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

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 582
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 588
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 584
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/GeometryMetric;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 585
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

    .line 588
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 590
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 543
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    if-eqz v0, :cond_b

    .line 544
    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1

    .line 546
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 4

    .line 552
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 553
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 554
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setMinWidth(I)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 556
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 557
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setMinHeight(I)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 559
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 560
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setVisible(Z)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 562
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 563
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinAlpha()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setMinAlpha(D)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 565
    :cond_3b
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->access$900(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 815
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 517
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public setMinAlpha(D)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 4

    .line 786
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    .line 787
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minAlpha_:D

    .line 788
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinHeight(I)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 685
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    .line 686
    iput p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minHeight_:I

    .line 687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinWidth(I)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 3

    .line 630
    iget v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->bitField0_:I

    .line 631
    iput p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->minWidth_:I

    .line 632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 420
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 420
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 4

    .line 533
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 809
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object p1
.end method

.method public setVisible(Z)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 729
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->visible_:Z

    .line 730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
