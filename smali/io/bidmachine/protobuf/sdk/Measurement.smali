###### Class io.bidmachine.protobuf.sdk.Measurement (io.bidmachine.protobuf.sdk.Measurement)
.class public final Lio/bidmachine/protobuf/sdk/Measurement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Measurement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

.field public static final FAILURE_TIMEOUT_MS_FIELD_NUMBER:I = 0x4

.field public static final INTERVAL_MS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private failureTimeoutMs_:I

.field private intervalMs_:I

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 680
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 688
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Measurement$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 162
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_61

    .line 47
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0x8

    if-eq v2, v4, :cond_41

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3a

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2e

    .line 68
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_57

    :catch_2a
    move-exception p1

    goto :goto_48

    :catch_2c
    move-exception p1

    goto :goto_52

    .line 63
    :cond_2e
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->failureTimeoutMs_:I

    goto :goto_b

    .line 59
    :cond_3a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->intervalMs_:I

    goto :goto_b

    .line 54
    :cond_41
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->count_:I
    :try_end_47
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_47} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_47} :catch_2a
    .catchall {:try_start_d .. :try_end_47} :catchall_28

    goto :goto_b

    .line 79
    :goto_48
    :try_start_48
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 80
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 77
    :goto_52
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_28

    .line 82
    :goto_57
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 84
    throw p1

    .line 82
    :cond_61
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Measurement$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 162
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Measurement$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Measurement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->count_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Measurement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->intervalMs_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Measurement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->failureTimeoutMs_:I

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Measurement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    return p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/Measurement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 1

    .line 684
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 88
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 1

    .line 327
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Measurement;->toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 330
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Measurement;->toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 301
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 308
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 268
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 314
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 321
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 289
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 296
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 263
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 278
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 284
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Measurement;",
            ">;"
        }
    .end annotation

    .line 699
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 216
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Measurement;

    if-nez v1, :cond_d

    .line 217
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 219
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement;

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v1

    .line 222
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 223
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v1

    .line 224
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 225
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 226
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getFailureTimeoutMs()I

    move-result v1

    .line 228
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getFailureTimeoutMs()I

    move-result v2

    if-eq v1, v2, :cond_42

    return v3

    .line 230
    :cond_42
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    return v3

    :cond_4d
    return v0
.end method

.method public getCount()I
    .registers 2

    .line 113
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2

    .line 709
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    return-object v0
.end method

.method public getFailureTimeoutMs()I
    .registers 2

    .line 159
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->failureTimeoutMs_:I

    return v0
.end method

.method public getIntervalMs()I
    .registers 2

    .line 128
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->intervalMs_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Measurement;",
            ">;"
        }
    .end annotation

    .line 704
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 190
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 194
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->count_:I

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 196
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 198
    :goto_11
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->intervalMs_:I

    if-eqz v2, :cond_1b

    const/4 v3, 0x2

    .line 200
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 202
    :cond_1b
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    const/4 v1, 0x4

    .line 203
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement;->failureTimeoutMs_:I

    .line 204
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_28
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasFailureTimeoutMs()Z
    .registers 3

    .line 145
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 236
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 240
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 244
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v0

    add-int/2addr v1, v0

    .line 245
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v0

    if-eqz v0, :cond_37

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 247
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getFailureTimeoutMs()I

    move-result v0

    add-int/2addr v1, v0

    :cond_37
    mul-int/lit8 v1, v1, 0x1d

    .line 249
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 250
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 94
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Measurement;

    const-class v2, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 165
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 169
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 325
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->newBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 4

    .line 341
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Measurement$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 334
    sget-object v0, Lio/bidmachine/protobuf/sdk/Measurement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Measurement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 335
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Measurement$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Measurement$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

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

    .line 176
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->count_:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 177
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 179
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->intervalMs_:I

    if-eqz v0, :cond_10

    const/4 v2, 0x2

    .line 180
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 182
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    const/4 v0, 0x4

    .line 183
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Measurement;->failureTimeoutMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 185
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Measurement.AnonymousClass1 (io.bidmachine.protobuf.sdk.Measurement$1)
.class Lio/bidmachine/protobuf/sdk/Measurement$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Measurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Measurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Measurement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 688
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 694
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Measurement$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Measurement.Builder (io.bidmachine.protobuf.sdk.Measurement$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Measurement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Measurement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Measurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Measurement$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private failureTimeoutMs_:I

.field private intervalMs_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 366
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 371
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 372
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Measurement$1;)V
    .registers 3

    .line 347
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Measurement$1;)V
    .registers 2

    .line 347
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 353
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 376
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 457
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->build()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->build()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 3

    .line 404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Measurement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 406
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 4

    .line 413
    new-instance v0, Lio/bidmachine/protobuf/sdk/Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Measurement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Measurement$1;)V

    .line 414
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    .line 416
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->count_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/sdk/Measurement;->access$402(Lio/bidmachine/protobuf/sdk/Measurement;I)I

    .line 417
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->intervalMs_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/sdk/Measurement;->access$502(Lio/bidmachine/protobuf/sdk/Measurement;I)I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 419
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->failureTimeoutMs_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Measurement;->access$602(Lio/bidmachine/protobuf/sdk/Measurement;I)I

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 422
    :goto_1d
    invoke-static {v0, v2}, Lio/bidmachine/protobuf/sdk/Measurement;->access$702(Lio/bidmachine/protobuf/sdk/Measurement;I)I

    .line 423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 381
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->count_:I

    .line 384
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->intervalMs_:I

    .line 386
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->failureTimeoutMs_:I

    .line 387
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCount()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 551
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->count_:I

    .line 552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFailureTimeoutMs()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 656
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 657
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->failureTimeoutMs_:I

    .line 658
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 440
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public clearIntervalMs()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->intervalMs_:I

    .line 595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 445
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 429
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 522
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2

    .line 399
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 394
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFailureTimeoutMs()I
    .registers 2

    .line 626
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->failureTimeoutMs_:I

    return v0
.end method

.method public getIntervalMs()I
    .registers 2

    .line 567
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->intervalMs_:I

    return v0
.end method

.method public hasFailureTimeoutMs()Z
    .registers 3

    .line 612
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

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

    .line 359
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Measurement;

    const-class v2, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 360
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

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

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

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

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

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

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

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 497
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 503
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 499
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Measurement;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 500
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

    .line 503
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 505
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 461
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v0, :cond_b

    .line 462
    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1

    .line 464
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 470
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 471
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v0

    if-eqz v0, :cond_14

    .line 472
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setCount(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 474
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v0

    if-eqz v0, :cond_21

    .line 475
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setIntervalMs(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 477
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 478
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->getFailureTimeoutMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setFailureTimeoutMs(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 480
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Measurement;->access$800(Lio/bidmachine/protobuf/sdk/Measurement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 670
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public setCount(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 536
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->count_:I

    .line 537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFailureTimeoutMs(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 640
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->bitField0_:I

    .line 641
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->failureTimeoutMs_:I

    .line 642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 3

    .line 435
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public setIntervalMs(I)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 580
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->intervalMs_:I

    .line 581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 347
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 347
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 4

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 664
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object p1
.end method
