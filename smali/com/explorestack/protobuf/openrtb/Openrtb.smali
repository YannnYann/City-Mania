###### Class com.explorestack.protobuf.openrtb.Openrtb (com.explorestack.protobuf.openrtb.Openrtb)
.class public final Lcom/explorestack/protobuf/openrtb/Openrtb;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;,
        Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

.field public static final DOMAINSPEC_FIELD_NUMBER:I = 0x2

.field public static final DOMAINVER_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final VER_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile domainspec_:Ljava/lang/Object;

.field private volatile domainver_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private volatile ver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1529
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 1537
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v0, -0x1

    .line 414
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_b7

    .line 56
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    const/16 v4, 0xa

    if-eq v2, v4, :cond_96

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8e

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_86

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5f

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_38

    .line 108
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2f
    move v1, v3

    goto :goto_b

    :catchall_31
    move-exception p1

    goto/16 :goto_ad

    :catch_34
    move-exception p1

    goto :goto_9e

    :catch_36
    move-exception p1

    goto :goto_a8

    .line 95
    :cond_38
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_45

    .line 96
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v5

    .line 99
    :cond_45
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_5c

    .line 101
    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 102
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    .line 104
    :cond_5c
    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    goto :goto_b

    .line 81
    :cond_5f
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6c

    .line 82
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v5

    .line 85
    :cond_6c
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_83

    .line 87
    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 88
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    .line 90
    :cond_83
    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    goto :goto_b

    .line 74
    :cond_86
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 76
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 68
    :cond_8e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 62
    :cond_96
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 64
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;
    :try_end_9c
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_9c} :catch_36
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_9c} :catch_34
    .catchall {:try_start_d .. :try_end_9c} :catchall_31

    goto/16 :goto_b

    .line 119
    :goto_9e
    :try_start_9e
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 120
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 117
    :goto_a8
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_31

    .line 122
    :goto_ad
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 124
    throw p1

    .line 122
    :cond_b7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 23
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 p1, -0x1

    .line 414
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 16
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
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

    .line 16
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

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 16
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/explorestack/protobuf/openrtb/Openrtb;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    return p1
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 1

    .line 1533
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 128
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 1

    .line 610
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 613
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 584
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 591
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 597
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 604
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 572
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 579
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation

    .line 1548
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 479
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    if-nez v1, :cond_d

    .line 480
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 482
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 484
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 486
    :cond_1f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 488
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 490
    :cond_3d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    .line 491
    :cond_4c
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_64

    const/4 v3, 0x5

    if-eq v1, v3, :cond_55

    goto :goto_73

    .line 497
    :cond_55
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v1

    .line 498
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    return v2

    .line 493
    :cond_64
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v1

    .line 494
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Request;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    return v2

    .line 503
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    return v2

    :cond_7e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2

    .line 1558
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0
.end method

.method public getDomainspec()Ljava/lang/String;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 241
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 243
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 263
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 264
    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 267
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 270
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDomainver()Ljava/lang/String;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    .line 288
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 289
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 291
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 294
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDomainverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    .line 311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 312
    check-cast v0, Ljava/lang/String;

    .line 313
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 315
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 318
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
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation

    .line 1553
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 2

    .line 176
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/explorestack/protobuf/openrtb/Request;
    .registers 3

    .line 347
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 348
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 350
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRequestOrBuilder()Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
    .registers 3

    .line 362
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 363
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 365
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/explorestack/protobuf/openrtb/Response;
    .registers 3

    .line 393
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 394
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 396
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
    .registers 3

    .line 408
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 409
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 411
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 448
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 452
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 453
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 455
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 456
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_2b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x3

    .line 459
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_3d
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4b

    .line 462
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Request;

    .line 463
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_4b
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_59

    .line 466
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Response;

    .line 467
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    :cond_59
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 193
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 194
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 196
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 216
    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 219
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object v0

    .line 222
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasRequest()Z
    .registers 3

    .line 334
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponse()Z
    .registers 3

    .line 380
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 509
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 513
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 519
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 520
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_55

    const/4 v2, 0x5

    if-eq v0, v2, :cond_46

    goto :goto_63

    :cond_46
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->hashCode()I

    move-result v0

    :goto_53
    add-int/2addr v1, v0

    goto :goto_63

    :cond_55
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->hashCode()I

    move-result v0

    goto :goto_53

    :goto_63
    mul-int/lit8 v1, v1, 0x1d

    .line 532
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 533
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 134
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 417
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 421
    :cond_a
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 608
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 4

    .line 624
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 35
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 617
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 618
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 429
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 431
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 432
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 434
    :cond_20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    .line 435
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 437
    :cond_30
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    .line 438
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 440
    :cond_3c
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_48

    .line 441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 443
    :cond_48
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class com.explorestack.protobuf.openrtb.Openrtb.AnonymousClass1 (com.explorestack.protobuf.openrtb.Openrtb$1)
.class Lcom/explorestack/protobuf/openrtb/Openrtb$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Openrtb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1537
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1543
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.openrtb.Openrtb.AnonymousClass2 (com.explorestack.protobuf.openrtb.Openrtb$2)
.class synthetic Lcom/explorestack/protobuf/openrtb/Openrtb$2;
.super Ljava/lang/Object;
.source "Openrtb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 784
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.explorestack.protobuf.openrtb.Openrtb.Builder (com.explorestack.protobuf.openrtb.Openrtb$Builder)
.class public final Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;"
    }
.end annotation


# instance fields
.field private domainspec_:Ljava/lang/Object;

.field private domainver_:Ljava/lang/Object;

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 655
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 841
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 937
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1038
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 656
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 661
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 825
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 841
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 937
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1038
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .registers 3

    .line 637
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .registers 2

    .line 637
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 643
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_25

    .line 1310
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_f

    .line 1311
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1313
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request;

    .line 1316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1318
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1320
    :cond_25
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1322
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_25

    .line 1496
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_f

    .line 1497
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1499
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response;

    .line 1502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1504
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1506
    :cond_25
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1508
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 666
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 758
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 3

    .line 696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 698
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 4

    .line 705
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    .line 706
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$402(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$502(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$602(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2b

    .line 710
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_24

    .line 711
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 713
    :cond_24
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_2b
    :goto_2b
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_41

    .line 717
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3a

    .line 718
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 720
    :cond_3a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_41
    :goto_41
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$802(Lcom/explorestack/protobuf/openrtb/Openrtb;I)I

    .line 724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 671
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 674
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 676
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDomainspec()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1012
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDomainver()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1113
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 741
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 746
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public clearPayload()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 834
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 835
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRequest()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 6

    .line 1253
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_13

    .line 1254
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_12

    .line 1255
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1256
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1260
    :cond_13
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1b

    .line 1261
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1262
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1264
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearResponse()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 6

    .line 1439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_13

    .line 1440
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_12

    .line 1441
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1442
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1446
    :cond_13
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1b

    .line 1447
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1448
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1450
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearVer()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 912
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 730
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .registers 2

    .line 691
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 686
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDomainspec()Ljava/lang/String;
    .registers 3

    .line 948
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 949
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 950
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 952
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 953
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 956
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 970
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 972
    check-cast v0, Ljava/lang/String;

    .line 973
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 975
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 978
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDomainver()Ljava/lang/String;
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1050
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1051
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1053
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1054
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1057
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1073
    check-cast v0, Ljava/lang/String;

    .line 1074
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1076
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1079
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 2

    .line 829
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/explorestack/protobuf/openrtb/Request;
    .registers 4

    .line 1165
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_13

    .line 1166
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_e

    .line 1167
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1169
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0

    .line 1171
    :cond_13
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_1e

    .line 1172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1174
    :cond_1e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .registers 2

    .line 1277
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object v0
.end method

.method public getRequestOrBuilder()Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
    .registers 4

    .line 1289
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1290
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1293
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1295
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/explorestack/protobuf/openrtb/Response;
    .registers 4

    .line 1351
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_13

    .line 1352
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_e

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1355
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_13
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_1e

    .line 1358
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1360
    :cond_1e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .registers 2

    .line 1463
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
    .registers 4

    .line 1475
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1476
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1479
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1481
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 852
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 853
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 855
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 856
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 859
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 874
    check-cast v0, Ljava/lang/String;

    .line 875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 877
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 880
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasRequest()Z
    .registers 3

    .line 1152
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponse()Z
    .registers 3

    .line 1338
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 649
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 650
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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 820
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 816
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 817
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

    .line 820
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 822
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 762
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    if-eqz v0, :cond_b

    .line 763
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1

    .line 765
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 4

    .line 771
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 772
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 773
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$400(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 776
    :cond_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 777
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$500(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 780
    :cond_2d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 781
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$600(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 784
    :cond_40
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_53

    goto :goto_62

    .line 790
    :cond_53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    goto :goto_62

    .line 786
    :cond_5b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 797
    :goto_62
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$900(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 798
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 5

    .line 1226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_2a

    .line 1227
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1228
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1229
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_26

    .line 1232
    :cond_24
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1234
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1236
    :cond_2a
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_31

    .line 1237
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1239
    :cond_31
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1241
    :goto_36
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 5

    .line 1412
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_2a

    .line 1413
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1414
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1415
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    .line 1416
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_26

    .line 1418
    :cond_24
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1420
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1422
    :cond_2a
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_31

    .line 1423
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1425
    :cond_31
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1427
    :goto_36
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1519
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setDomainspec(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainspecBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1033
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainver(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1099
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainverBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1134
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 736
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 637
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 637
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 4

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setRequest(Lcom/explorestack/protobuf/openrtb/Request$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 1208
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1209
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1212
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x4

    .line 1214
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 1186
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1193
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x4

    .line 1195
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setResponse(Lcom/explorestack/protobuf/openrtb/Response$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 1394
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1395
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1398
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x5

    .line 1400
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 3

    .line 1372
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1379
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x5

    .line 1381
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 1513
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .registers 2

    .line 928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 932
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class com.explorestack.protobuf.openrtb.Openrtb.PayloadCase (com.explorestack.protobuf.openrtb.Openrtb$PayloadCase)
.class public final enum Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
.super Ljava/lang/Enum;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 144
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const/4 v1, 0x4

    const-string v2, "REQUEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 145
    new-instance v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const/4 v2, 0x1

    const/4 v4, 0x5

    const-string v5, "RESPONSE"

    invoke-direct {v1, v5, v2, v4}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 146
    new-instance v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const-string v4, "PAYLOAD_NOT_SET"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 141
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_a
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 163
    :cond_d
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 165
    :cond_10
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 2

    .line 141
    const-class v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .registers 1

    .line 141
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return v0
.end method
