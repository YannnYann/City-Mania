###### Class io.bidmachine.protobuf.rendering.WatermarkConfiguration (io.bidmachine.protobuf.rendering.WatermarkConfiguration)
.class public final Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "WatermarkConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/WatermarkConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final ALGORITHM_FIELD_NUMBER:I = 0x1

.field public static final BASE_COLOR_RGB_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

.field public static final LOCATION_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_TYPE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private algorithm_:I

.field private volatile baseColorRgb_:Ljava/lang/Object;

.field private location_:I

.field private memoizedIsInitialized:B

.field private payloadType_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 847
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    .line 855
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 216
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    .line 22
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_67

    .line 50
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    const/16 v4, 0x8

    if-eq v2, v4, :cond_47

    const/16 v4, 0x10

    if-eq v2, v4, :cond_40

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_39

    const/16 v4, 0x20

    if-eq v2, v4, :cond_32

    .line 80
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2a
    move v1, v3

    goto :goto_b

    :catchall_2c
    move-exception p1

    goto :goto_5d

    :catch_2e
    move-exception p1

    goto :goto_4e

    :catch_30
    move-exception p1

    goto :goto_58

    .line 74
    :cond_32
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 76
    iput v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    goto :goto_b

    .line 68
    :cond_39
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    goto :goto_b

    .line 62
    :cond_40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 64
    iput v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    goto :goto_b

    .line 56
    :cond_47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 58
    iput v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I
    :try_end_4d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_4d} :catch_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4d} :catch_2e
    .catchall {:try_start_d .. :try_end_4d} :catchall_2c

    goto :goto_b

    .line 91
    :goto_4e
    :try_start_4e
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 92
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 89
    :goto_58
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_2c

    .line 94
    :goto_5d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 96
    throw p1

    .line 94
    :cond_67
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 216
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

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

.method public static synthetic access$400(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    return p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    return p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    return p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    return p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    return p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    return p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 1

    .line 851
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 100
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_WatermarkConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 1

    .line 383
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->toBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 386
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->toBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 357
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 364
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 370
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 377
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 345
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 352
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 313
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;",
            ">;"
        }
    .end annotation

    .line 866
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 276
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    if-nez v1, :cond_d

    .line 277
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 279
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    .line 281
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    iget v2, p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 282
    :cond_17
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    iget v2, p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    if-eq v1, v2, :cond_1e

    return v3

    .line 283
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgb()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v3

    .line 285
    :cond_2d
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    iget v2, p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    if-eq v1, v2, :cond_34

    return v3

    .line 286
    :cond_34
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    return v3

    :cond_3f
    return v0
.end method

.method public getAlgorithm()Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;
    .registers 2

    .line 126
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    move-result-object v0

    if-nez v0, :cond_a

    .line 127
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    :cond_a
    return-object v0
.end method

.method public getAlgorithmValue()I
    .registers 2

    .line 118
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    return v0
.end method

.method public getBaseColorRgb()Ljava/lang/String;
    .registers 3

    .line 162
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 164
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 166
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 168
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBaseColorRgbBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 185
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    .line 186
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 190
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    return-object v0

    .line 193
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2

    .line 876
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    return-object v0
.end method

.method public getLocation()Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 2

    .line 212
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object v0

    if-nez v0, :cond_a

    .line 213
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    :cond_a
    return-object v0
.end method

.method public getLocationValue()I
    .registers 2

    .line 204
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;",
            ">;"
        }
    .end annotation

    .line 871
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPayloadType()Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;
    .registers 2

    .line 145
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 146
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    :cond_a
    return-object v0
.end method

.method public getPayloadTypeValue()I
    .registers 2

    .line 137
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 247
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 251
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->WM_ALGO_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    .line 252
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    .line 253
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 255
    :goto_19
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    sget-object v2, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->WM_PAYLOAD_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2b

    const/4 v1, 0x2

    .line 256
    iget v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    .line 257
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_2b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgbBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x3

    .line 260
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_3d
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    sget-object v2, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4f

    const/4 v1, 0x4

    .line 263
    iget v2, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    .line 264
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_4f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 292
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 296
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 298
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 300
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 304
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 305
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 306
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 106
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_WatermarkConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    const-class v2, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 219
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 381
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->newBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 4

    .line 397
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->toBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->toBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 390
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 391
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

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

    .line 230
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->WM_ALGO_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->algorithm_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 233
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->WM_PAYLOAD_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_20

    const/4 v0, 0x2

    .line 234
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->payloadType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 236
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgbBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    .line 237
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->baseColorRgb_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 239
    :cond_30
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_40

    const/4 v0, 0x4

    .line 240
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->location_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 242
    :cond_40
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.rendering.WatermarkConfiguration.AnonymousClass1 (io.bidmachine.protobuf.rendering.WatermarkConfiguration$1)
.class Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "WatermarkConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 855
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 861
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.WatermarkConfiguration.Builder (io.bidmachine.protobuf.rendering.WatermarkConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "WatermarkConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/WatermarkConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/rendering/WatermarkConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private algorithm_:I

.field private baseColorRgb_:Ljava/lang/Object;

.field private location_:I

.field private payloadType_:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 421
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 566
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 620
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 674
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 775
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    .line 422
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 427
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 566
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 620
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 775
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    .line 428
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V
    .registers 3

    .line 403
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V
    .registers 2

    .line 403
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 409
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_WatermarkConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 432
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 510
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->build()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->build()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3

    .line 462
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 464
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 3

    .line 471
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$1;)V

    .line 472
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$402(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I

    .line 473
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$502(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I

    .line 474
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$602(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$702(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;I)I

    .line 476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clear()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clear()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clear()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clear()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 437
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 440
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 442
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 444
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    return-object p0
.end method

.method public clearAlgorithm()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBaseColorRgb()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 749
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 493
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public clearLocation()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 824
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    .line 825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 498
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public clearPayloadType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 482
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->clone()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;
    .registers 2

    .line 592
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    move-result-object v0

    if-nez v0, :cond_a

    .line 593
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;

    :cond_a
    return-object v0
.end method

.method public getAlgorithmValue()I
    .registers 2

    .line 572
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    return v0
.end method

.method public getBaseColorRgb()Ljava/lang/String;
    .registers 3

    .line 685
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 686
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 687
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 689
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 690
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    return-object v0

    .line 693
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBaseColorRgbBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 707
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 709
    check-cast v0, Ljava/lang/String;

    .line 710
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 712
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    return-object v0

    .line 715
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    .registers 2

    .line 457
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 452
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_WatermarkConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLocation()Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 2

    .line 801
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object v0

    if-nez v0, :cond_a

    .line 802
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    :cond_a
    return-object v0
.end method

.method public getLocationValue()I
    .registers 2

    .line 781
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    return v0
.end method

.method public getPayloadType()Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;
    .registers 2

    .line 646
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 647
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;

    :cond_a
    return-object v0
.end method

.method public getPayloadTypeValue()I
    .registers 2

    .line 626
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_WatermarkConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    const-class v2, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 416
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

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

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

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

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

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

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

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 554
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 556
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 557
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

    .line 560
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 562
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 514
    instance-of v0, p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    if-eqz v0, :cond_b

    .line 515
    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 517
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 523
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 524
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$400(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 525
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getAlgorithmValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setAlgorithmValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 527
    :cond_14
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$500(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 528
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getPayloadTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setPayloadTypeValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 530
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getBaseColorRgb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 531
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$600(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 534
    :cond_34
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$700(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 535
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->getLocationValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setLocationValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 537
    :cond_41
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$800(Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    .line 538
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 837
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public setAlgorithm(Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkAlgorithm;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAlgorithmValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 581
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->algorithm_:I

    .line 582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBaseColorRgb(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 731
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBaseColorRgbBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 770
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->baseColorRgb_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 403
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 3

    .line 488
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public setLocation(Lio/bidmachine/protobuf/rendering/WatermarkLocation;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    .line 815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLocationValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 790
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->location_:I

    .line 791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPayloadType(Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/WatermarkPayloadType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPayloadTypeValue(I)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 635
    iput p1, p0, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->payloadType_:I

    .line 636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 403
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 403
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 4

    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;
    .registers 2

    .line 831
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/WatermarkConfiguration$Builder;

    return-object p1
.end method
