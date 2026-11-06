###### Class io.bidmachine.protobuf.sdk.SDK (io.bidmachine.protobuf.sdk.SDK)
.class public final Lio/bidmachine/protobuf/sdk/SDK;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SDK.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/SDKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/SDK$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

.field public static final OMIDPN_FIELD_NUMBER:I = 0x3

.field public static final OMIDPV_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x2

.field public static final SDK_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile omidpn_:Ljava/lang/Object;

.field private volatile omidpv_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1050
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/SDK;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    .line 1058
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/SDK$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 295
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/SDK;-><init>()V

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

    const/16 v4, 0xa

    if-eq v2, v4, :cond_47

    const/16 v4, 0x12

    if-eq v2, v4, :cond_40

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_39

    const/16 v4, 0x22

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 76
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    goto :goto_b

    .line 68
    :cond_39
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    goto :goto_b

    .line 62
    :cond_40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 64
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    goto :goto_b

    .line 56
    :cond_47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 58
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;
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

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/SDK$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 295
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/SDK;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/SDK$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

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

.method public static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/SDK;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 1

    .line 1054
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 100
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 1

    .line 462
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 465
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 436
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 443
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 403
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 449
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 456
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 424
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 431
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 392
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 413
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 419
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            ">;"
        }
    .end annotation

    .line 1069
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 352
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/SDK;

    if-nez v1, :cond_d

    .line 353
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 355
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK;

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 359
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 361
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpn()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 363
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpv()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    .line 365
    :cond_4c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    return v2

    :cond_57
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2

    .line 1079
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    return-object v0
.end method

.method public getOmidpn()Ljava/lang/String;
    .registers 3

    .line 215
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    .line 216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 217
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 219
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 221
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOmidpnBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 237
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    .line 238
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 239
    check-cast v0, Ljava/lang/String;

    .line 240
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 242
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    return-object v0

    .line 245
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOmidpv()Ljava/lang/String;
    .registers 3

    .line 261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    .line 262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 263
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 265
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 267
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 268
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOmidpvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 283
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    .line 284
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 285
    check-cast v0, Ljava/lang/String;

    .line 286
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 288
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    return-object v0

    .line 291
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
            "Lio/bidmachine/protobuf/sdk/SDK;",
            ">;"
        }
    .end annotation

    .line 1074
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    .line 124
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 125
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 127
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 145
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    .line 146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 147
    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 153
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 169
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    .line 170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 171
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 173
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 175
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 176
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 191
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    .line 192
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 193
    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 199
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 326
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 330
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 331
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 333
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 334
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_2b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpnBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x3

    .line 337
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    const/4 v1, 0x4

    .line 340
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_4f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 343
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

    .line 371
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 375
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 377
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 379
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 383
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 384
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 385
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 106
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/SDK;

    const-class v2, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 298
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/SDK;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilderForType()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilderForType()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 460
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 4

    .line 476
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/SDK$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/sdk/SDK;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/SDK;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 3

    .line 469
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDK;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/SDK;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 470
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;-><init>(Lio/bidmachine/protobuf/sdk/SDK$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;-><init>(Lio/bidmachine/protobuf/sdk/SDK$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

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

    .line 309
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 310
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 312
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 313
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 315
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpnBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    .line 316
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpn_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 318
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x4

    .line 319
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK;->omidpv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 321
    :cond_40
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.SDK.AnonymousClass1 (io.bidmachine.protobuf.sdk.SDK$1)
.class Lio/bidmachine/protobuf/sdk/SDK$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/SDK;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1058
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1064
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/SDK;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/SDK$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1058
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.SDK.Builder (io.bidmachine.protobuf.sdk.SDK$Builder)
.class public final Lio/bidmachine/protobuf/sdk/SDK$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SDK.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/SDKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/SDK$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/SDKOrBuilder;"
    }
.end annotation


# instance fields
.field private omidpn_:Ljava/lang/Object;

.field private omidpv_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 500
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 744
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 840
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 936
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 501
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 506
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 648
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 744
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 840
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 936
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 507
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/SDK$1;)V
    .registers 3

    .line 482
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/SDK$1;)V
    .registers 2

    .line 482
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 488
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 511
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 3

    .line 589
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3

    .line 541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 543
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 3

    .line 550
    new-instance v0, Lio/bidmachine/protobuf/sdk/SDK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/SDK;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/SDK$1;)V

    .line 551
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK;->access$402(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK;->access$502(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK;->access$602(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/SDK;->access$702(Lio/bidmachine/protobuf/sdk/SDK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clear()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clear()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clear()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clear()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 516
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 519
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 521
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 523
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 572
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public clearOmidpn()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 911
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 912
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOmidpv()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 1007
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 1008
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public clearSdk()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 719
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 815
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 561
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->clone()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2

    .line 536
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 531
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getOmidpn()Ljava/lang/String;
    .registers 3

    .line 850
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 851
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 852
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 854
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 855
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    return-object v0

    .line 858
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOmidpnBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 872
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 873
    check-cast v0, Ljava/lang/String;

    .line 874
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 876
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    return-object v0

    .line 879
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOmidpv()Ljava/lang/String;
    .registers 3

    .line 946
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 947
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 948
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 950
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 951
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    return-object v0

    .line 954
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOmidpvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 967
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 968
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 969
    check-cast v0, Ljava/lang/String;

    .line 970
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 972
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    return-object v0

    .line 975
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 658
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 659
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 660
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 662
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 663
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 666
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 679
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 680
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 681
    check-cast v0, Ljava/lang/String;

    .line 682
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 684
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 687
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 755
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 756
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 758
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 759
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 762
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 775
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 776
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 777
    check-cast v0, Ljava/lang/String;

    .line 778
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 780
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 783
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 494
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/SDK;

    const-class v2, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 495
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

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

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

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

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

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

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

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 636
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 642
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 638
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/SDK;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 639
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

    .line 642
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 644
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 3

    .line 593
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v0, :cond_b

    .line 594
    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1

    .line 596
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 3

    .line 602
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 603
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 604
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$400(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 607
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 608
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$500(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 611
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 612
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$600(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 615
    :cond_40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK;->getOmidpv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 616
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$700(Lio/bidmachine/protobuf/sdk/SDK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 619
    :cond_53
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$800(Lio/bidmachine/protobuf/sdk/SDK;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 1040
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 3

    .line 567
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public setOmidpn(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOmidpnBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 931
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpn_:Ljava/lang/Object;

    .line 932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOmidpv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 990
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOmidpvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 1023
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1027
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->omidpv_:Ljava/lang/Object;

    .line 1028
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 4

    .line 583
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 739
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdk_:Ljava/lang/Object;

    .line 740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 831
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/SDK;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 835
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/SDK$Builder;->sdkver_:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 1034
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object p1
.end method
