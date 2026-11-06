###### Class io.bidmachine.protobuf.sdk.OverlapMetric (io.bidmachine.protobuf.sdk.OverlapMetric)
.class public final Lio/bidmachine/protobuf/sdk/OverlapMetric;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "OverlapMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;,
        Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

.field public static final MAX_OVERLAP_PERCENTAGE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCOPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private maxOverlapPercentage_:D

.field private memoizedIsInitialized:B

.field private scope_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 745
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    .line 753
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 283
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>()V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 51
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2a

    .line 68
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_47

    :catch_26
    move-exception p1

    goto :goto_38

    :catch_28
    move-exception p1

    goto :goto_42

    .line 64
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->maxOverlapPercentage_:D

    goto :goto_b

    .line 57
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 59
    iput v2, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 79
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 80
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 77
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 82
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 84
    throw p1

    .line 82
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 283
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/OverlapMetric;)I
    .registers 1

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    return p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/OverlapMetric;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/OverlapMetric;D)D
    .registers 3

    .line 13
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->maxOverlapPercentage_:D

    return-wide p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 1

    .line 749
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 88
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 1

    .line 433
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 436
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 407
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 414
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 374
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 420
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 427
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 395
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 402
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 363
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 369
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 384
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 390
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
            ">;"
        }
    .end annotation

    .line 764
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 330
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    if-nez v1, :cond_d

    .line 331
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 333
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    .line 335
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    iget v2, p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 336
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 338
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v4

    .line 337
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2c

    return v3

    .line 339
    :cond_2c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    return v3

    :cond_37
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2

    .line 774
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0
.end method

.method public getMaxOverlapPercentage()D
    .registers 3

    .line 280
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->maxOverlapPercentage_:D

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
            ">;"
        }
    .end annotation

    .line 769
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getScope()Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 2

    .line 263
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->valueOf(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    if-nez v0, :cond_a

    .line 264
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    :cond_a
    return-object v0
.end method

.method public getScopeValue()I
    .registers 2

    .line 251
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 308
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 312
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    .line 313
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    .line 314
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 316
    :goto_19
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->maxOverlapPercentage_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_27

    const/4 v3, 0x2

    .line 318
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_27
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 345
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 349
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 351
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 354
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 353
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 355
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 356
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 94
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 286
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 431
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->newBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 4

    .line 447
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 440
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/OverlapMetric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 441
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 298
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->scope_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 300
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric;->maxOverlapPercentage_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x2

    .line 301
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 303
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.OverlapMetric.AnonymousClass1 (io.bidmachine.protobuf.sdk.OverlapMetric$1)
.class Lio/bidmachine/protobuf/sdk/OverlapMetric$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "OverlapMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OverlapMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 753
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 759
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 753
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OverlapMetric.Builder (io.bidmachine.protobuf.sdk.OverlapMetric$Builder)
.class public final Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "OverlapMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OverlapMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;"
    }
.end annotation


# instance fields
.field private maxOverlapPercentage_:D

.field private scope_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 475
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 607
    iput v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    .line 476
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 481
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    .line 482
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V
    .registers 3

    .line 457
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V
    .registers 2

    .line 457
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 463
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 486
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 558
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3

    .line 512
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 514
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 4

    .line 521
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/OverlapMetric$1;)V

    .line 522
    iget v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$402(Lio/bidmachine/protobuf/sdk/OverlapMetric;I)I

    .line 523
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maxOverlapPercentage_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$502(Lio/bidmachine/protobuf/sdk/OverlapMetric;D)D

    .line 524
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 491
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    const-wide/16 v0, 0x0

    .line 494
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maxOverlapPercentage_:D

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 541
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public clearMaxOverlapPercentage()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 722
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maxOverlapPercentage_:D

    .line 723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 546
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public clearScope()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 676
    iput v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    .line 677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 530
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 2

    .line 507
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 502
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxOverlapPercentage()D
    .registers 3

    .line 693
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maxOverlapPercentage_:D

    return-wide v0
.end method

.method public getScope()Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 2

    .line 645
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->valueOf(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    if-nez v0, :cond_a

    .line 646
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    :cond_a
    return-object v0
.end method

.method public getScopeValue()I
    .registers 2

    .line 617
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 469
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 470
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

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

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

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

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

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

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

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 595
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 601
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 597
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/OverlapMetric;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 598
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

    .line 601
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 603
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 562
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    if-eqz v0, :cond_b

    .line 563
    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1

    .line 565
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 6

    .line 571
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 572
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$400(Lio/bidmachine/protobuf/sdk/OverlapMetric;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 573
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getScopeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setScopeValue(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 575
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_25

    .line 576
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setMaxOverlapPercentage(D)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 578
    :cond_25
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->access$600(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 735
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 457
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 536
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public setMaxOverlapPercentage(D)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 3

    .line 707
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->maxOverlapPercentage_:D

    .line 708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 4

    .line 552
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

.method public setScope(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    .line 663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setScopeValue(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 630
    iput p1, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->scope_:I

    .line 631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 729
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.OverlapMetric.OverlapScope (io.bidmachine.protobuf.sdk.OverlapMetric$OverlapScope)
.class public final enum Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
.super Ljava/lang/Enum;
.source "OverlapMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OverlapMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlapScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field public static final enum ALL_VIEWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field public static final ALL_VIEWS_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field public static final enum VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field public static final VIEW_SIBLINGS_VALUE:I = 0x0

.field public static final enum WINDOWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

.field public static final WINDOWS_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 111
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    const-string v1, "VIEW_SIBLINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    .line 119
    new-instance v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    const-string v2, "ALL_VIEWS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->ALL_VIEWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    .line 127
    new-instance v2, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    const-string v3, "WINDOWS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->WINDOWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    .line 128
    new-instance v3, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    .line 102
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->$VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    .line 193
    new-instance v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 217
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->values()[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->WINDOWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object p0

    .line 182
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->ALL_VIEWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object p0

    .line 181
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 214
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->forNumber(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 3

    .line 221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 226
    sget-object p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object p0

    .line 228
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 222
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 2

    .line 102
    const-class v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 1

    .line 102
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->$VALUES:[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 210
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 158
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    if-eq p0, v0, :cond_7

    .line 162
    iget v0, p0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->value:I

    return v0

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 202
    sget-object v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    if-eq p0, v0, :cond_17

    .line 206
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 203
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.sdk.OverlapMetric.OverlapScope.AnonymousClass1 (io.bidmachine.protobuf.sdk.OverlapMetric$OverlapScope$1)
.class Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope$1;
.super Ljava/lang/Object;
.source "OverlapMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope$1;->findValueByNumber(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;
    .registers 2

    .line 196
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->forNumber(I)Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object p1

    return-object p1
.end method
