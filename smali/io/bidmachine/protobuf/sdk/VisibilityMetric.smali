###### Class io.bidmachine.protobuf.sdk.VisibilityMetric (io.bidmachine.protobuf.sdk.VisibilityMetric)
.class public final Lio/bidmachine/protobuf/sdk/VisibilityMetric;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "VisibilityMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;,
        Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

.field public static final MIN_VISIBLE_PERCENTAGE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCOPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private minVisiblePercentage_:D

.field private scope_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 721
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    .line 729
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 279
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>()V

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

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->minVisiblePercentage_:D

    goto :goto_b

    .line 57
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 59
    iput v2, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I
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

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 279
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)I
    .registers 1

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    return p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/VisibilityMetric;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/VisibilityMetric;D)D
    .registers 3

    .line 13
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->minVisiblePercentage_:D

    return-wide p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 1

    .line 725
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 88
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 1

    .line 429
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 432
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 403
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 410
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 416
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 423
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 391
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 398
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
            ">;"
        }
    .end annotation

    .line 740
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 326
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    if-nez v1, :cond_d

    .line 327
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 329
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    .line 331
    iget v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    iget v2, p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 332
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 334
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v4

    .line 333
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2c

    return v3

    .line 335
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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2

    .line 750
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0
.end method

.method public getMinVisiblePercentage()D
    .registers 3

    .line 276
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->minVisiblePercentage_:D

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
            ">;"
        }
    .end annotation

    .line 745
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getScope()Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 2

    .line 259
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->valueOf(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    if-nez v0, :cond_a

    .line 260
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    :cond_a
    return-object v0
.end method

.method public getScopeValue()I
    .registers 2

    .line 251
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 304
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 308
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    .line 309
    iget v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    .line 310
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 312
    :goto_19
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->minVisiblePercentage_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_27

    const/4 v3, 0x2

    .line 314
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_27
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 317
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

    .line 341
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 345
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 347
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 350
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 349
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 351
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 352
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 94
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 282
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 286
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 427
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->newBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 4

    .line 443
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 436
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 437
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

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

    .line 293
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 294
    iget v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->scope_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 296
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->minVisiblePercentage_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x2

    .line 297
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 299
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.VisibilityMetric.AnonymousClass1 (io.bidmachine.protobuf.sdk.VisibilityMetric$1)
.class Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "VisibilityMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/VisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 735
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.VisibilityMetric.Builder (io.bidmachine.protobuf.sdk.VisibilityMetric$Builder)
.class public final Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "VisibilityMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/VisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;"
    }
.end annotation


# instance fields
.field private minVisiblePercentage_:D

.field private scope_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 471
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 603
    iput v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    .line 472
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 603
    iput p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    .line 478
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V
    .registers 3

    .line 453
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V
    .registers 2

    .line 453
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 459
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 482
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 554
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3

    .line 508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 510
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 4

    .line 517
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/VisibilityMetric$1;)V

    .line 518
    iget v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$402(Lio/bidmachine/protobuf/sdk/VisibilityMetric;I)I

    .line 519
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->minVisiblePercentage_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$502(Lio/bidmachine/protobuf/sdk/VisibilityMetric;D)D

    .line 520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 487
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    const-wide/16 v0, 0x0

    .line 490
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->minVisiblePercentage_:D

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 537
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public clearMinVisiblePercentage()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 698
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->minVisiblePercentage_:D

    .line 699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 542
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public clearScope()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 652
    iput v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    .line 653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 526
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 2

    .line 503
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 498
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMinVisiblePercentage()D
    .registers 3

    .line 669
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->minVisiblePercentage_:D

    return-wide v0
.end method

.method public getScope()Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 2

    .line 629
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->valueOf(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    if-nez v0, :cond_a

    .line 630
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    :cond_a
    return-object v0
.end method

.method public getScopeValue()I
    .registers 2

    .line 609
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 465
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 466
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

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

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

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

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

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

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

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 591
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 597
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 593
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 594
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

    .line 597
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 599
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 558
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    if-eqz v0, :cond_b

    .line 559
    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1

    .line 561
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 6

    .line 567
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 568
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$400(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 569
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getScopeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setScopeValue(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 571
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_25

    .line 572
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setMinVisiblePercentage(D)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 574
    :cond_25
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->access$600(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 711
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 532
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public setMinVisiblePercentage(D)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 3

    .line 683
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->minVisiblePercentage_:D

    .line 684
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 4

    .line 548
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

.method public setScope(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    .line 643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setScopeValue(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 618
    iput p1, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->scope_:I

    .line 619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 705
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.VisibilityMetric.VisibilityScope (io.bidmachine.protobuf.sdk.VisibilityMetric$VisibilityScope)
.class public final enum Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
.super Ljava/lang/Enum;
.source "VisibilityMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/VisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisibilityScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field public static final enum PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field public static final PARENT_VIEW_VALUE:I = 0x0

.field public static final enum SAFE_AREA:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field public static final SAFE_AREA_VALUE:I = 0x2

.field public static final enum SCREEN:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field public static final SCREEN_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 115
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    const-string v1, "PARENT_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    .line 123
    new-instance v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    const-string v2, "SCREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SCREEN:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    .line 131
    new-instance v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    const-string v3, "SAFE_AREA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SAFE_AREA:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    .line 132
    new-instance v3, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    .line 106
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->$VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    .line 197
    new-instance v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 221
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->values()[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput p3, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SAFE_AREA:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object p0

    .line 186
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SCREEN:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object p0

    .line 185
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 218
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->forNumber(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 230
    sget-object p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object p0

    .line 232
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 226
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 2

    .line 106
    const-class v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 1

    .line 106
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->$VALUES:[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 214
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 162
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    if-eq p0, v0, :cond_7

    .line 166
    iget v0, p0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->value:I

    return v0

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 206
    sget-object v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    if-eq p0, v0, :cond_17

    .line 210
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 207
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.sdk.VisibilityMetric.VisibilityScope.AnonymousClass1 (io.bidmachine.protobuf.sdk.VisibilityMetric$VisibilityScope$1)
.class Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope$1;
.super Ljava/lang/Object;
.source "VisibilityMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 198
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope$1;->findValueByNumber(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;
    .registers 2

    .line 200
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->forNumber(I)Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object p1

    return-object p1
.end method
