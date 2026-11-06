###### Class io.bidmachine.protobuf.sdk.User (io.bidmachine.protobuf.sdk.User)
.class public final Lio/bidmachine/protobuf/sdk/User;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "User.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/User$Builder;
    }
.end annotation


# static fields
.field public static final CCPA_FIELD_NUMBER:I = 0x3

.field public static final CONSENT_FIELD_NUMBER:I = 0x1

.field public static final COPPA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

.field public static final GDPR_FIELD_NUMBER:I = 0x2

.field public static final GPP_FIELD_NUMBER:I = 0x4

.field public static final GPP_SID_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile ccpa_:Ljava/lang/Object;

.field private volatile consent_:Ljava/lang/Object;

.field private coppa_:Z

.field private gdpr_:Z

.field private gppSidMemoizedSerializedSize:I

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private volatile gpp_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1266
    new-instance v0, Lio/bidmachine/protobuf/sdk/User;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/User;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    .line 1274
    new-instance v0, Lio/bidmachine/protobuf/sdk/User$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/User$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 331
    iput v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSidMemoizedSerializedSize:I

    .line 348
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/User;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_c7

    .line 51
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    const/16 v5, 0xa

    if-eq v3, v5, :cond_9f

    const/16 v5, 0x10

    if-eq v3, v5, :cond_97

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8f

    const/16 v5, 0x22

    if-eq v3, v5, :cond_87

    const/16 v5, 0x28

    if-eq v3, v5, :cond_74

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_49

    const/16 v5, 0x30

    if-eq v3, v5, :cond_42

    .line 106
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_37
    move v1, v4

    goto :goto_c

    :catchall_39
    move-exception p1

    goto/16 :goto_b6

    :catch_3c
    move-exception p1

    goto/16 :goto_a7

    :catch_3f
    move-exception p1

    goto/16 :goto_b1

    .line 102
    :cond_42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/User;->coppa_:Z

    goto :goto_c

    .line 88
    :cond_49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 89
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    if-nez v2, :cond_60

    .line 90
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_60

    .line 91
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 94
    :cond_60
    :goto_60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_70

    .line 95
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_60

    .line 97
    :cond_70
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_c

    :cond_74
    if-nez v2, :cond_7d

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 84
    :cond_7d
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_c

    .line 74
    :cond_87
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 76
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 68
    :cond_8f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 70
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 64
    :cond_97
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/User;->gdpr_:Z

    goto/16 :goto_c

    .line 57
    :cond_9f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 59
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;
    :try_end_a5
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_a5} :catch_3f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_a5} :catch_3c
    .catchall {:try_start_e .. :try_end_a5} :catchall_39

    goto/16 :goto_c

    .line 117
    :goto_a7
    :try_start_a7
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 118
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 115
    :goto_b1
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_b6
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_39

    :goto_b6
    if-eqz v2, :cond_bd

    .line 121
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 123
    :cond_bd
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 125
    throw p1

    :cond_c7
    if-eqz v2, :cond_ce

    .line 121
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 123
    :cond_ce
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/User$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 331
    iput p1, p0, Lio/bidmachine/protobuf/sdk/User;->gppSidMemoizedSerializedSize:I

    .line 348
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/User;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/User$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/User;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/User;->coppa_:Z

    return p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$1400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1500(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1600()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$1700(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$300()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/User;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/User;->gdpr_:Z

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/User;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;
    .registers 1

    .line 1270
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 129
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 1

    .line 557
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 560
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 531
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 538
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 504
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 544
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 551
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 519
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 526
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 493
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/User;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 508
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 514
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/User;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/User;",
            ">;"
        }
    .end annotation

    .line 1285
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 435
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/User;

    if-nez v1, :cond_d

    .line 436
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 438
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/User;

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getConsent()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getConsent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 442
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGdpr()Z

    move-result v1

    .line 443
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGdpr()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 444
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCcpa()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getCcpa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    .line 446
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGpp()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGpp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    .line 448
    :cond_48
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppSidList()Ljava/util/List;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGppSidList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    .line 450
    :cond_57
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCoppa()Z

    move-result v1

    .line 451
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getCoppa()Z

    move-result v3

    if-eq v1, v3, :cond_62

    return v2

    .line 452
    :cond_62
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    return v2

    :cond_6d
    return v0
.end method

.method public getCcpa()Ljava/lang/String;
    .registers 3

    .line 213
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    .line 214
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 215
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 217
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 219
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 220
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCcpaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    .line 236
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 237
    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 240
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 243
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .registers 3

    .line 152
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    .line 153
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 154
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 156
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 159
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 174
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    .line 175
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 176
    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 179
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    return-object v0

    .line 182
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCoppa()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User;->coppa_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;
    .registers 2

    .line 1295
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    return-object v0
.end method

.method public getGdpr()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User;->gdpr_:Z

    return v0
.end method

.method public getGpp()Ljava/lang/String;
    .registers 3

    .line 259
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    .line 260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 261
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 263
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 265
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 266
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGppBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 281
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    .line 282
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 283
    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 286
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    return-object v0

    .line 289
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 329
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 317
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGppSidList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/User;",
            ">;"
        }
    .end annotation

    .line 1290
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 390
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 394
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 395
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 397
    :goto_1a
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/User;->gdpr_:Z

    if-eqz v2, :cond_24

    const/4 v3, 0x2

    .line 399
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 401
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCcpaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x3

    .line 402
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    :cond_36
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v2, 0x4

    .line 405
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_48
    move v2, v1

    .line 409
    :goto_49
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5f

    .line 410
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 411
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5f
    add-int/2addr v0, v2

    .line 414
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppSidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    add-int/lit8 v0, v0, 0x1

    .line 417
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_71
    iput v2, p0, Lio/bidmachine/protobuf/sdk/User;->gppSidMemoizedSerializedSize:I

    .line 421
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/User;->coppa_:Z

    if-eqz v1, :cond_7d

    const/4 v2, 0x6

    .line 423
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_7d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
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

    .line 458
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 462
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getConsent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGdpr()Z

    move-result v0

    .line 466
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCcpa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 471
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGpp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 472
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppSidCount()I

    move-result v0

    if-lez v0, :cond_61

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 478
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCoppa()Z

    move-result v0

    .line 477
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 479
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 480
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 135
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/User;

    const-class v2, Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 351
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/User;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 355
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/User;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->newBuilderForType()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->newBuilderForType()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 555
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->newBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 4

    .line 571
    new-instance v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/User$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/sdk/User;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/User;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 564
    sget-object v0, Lio/bidmachine/protobuf/sdk/User;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/User;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 565
    new-instance v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/User$Builder;-><init>(Lio/bidmachine/protobuf/sdk/User$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/User$Builder;-><init>(Lio/bidmachine/protobuf/sdk/User$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

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

    .line 362
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getSerializedSize()I

    .line 363
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User;->consent_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 366
    :cond_13
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User;->gdpr_:Z

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 367
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 369
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getCcpaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x3

    .line 370
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User;->ccpa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 372
    :cond_2b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x4

    .line 373
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User;->gpp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 375
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4f

    const/16 v0, 0x2a

    .line 376
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 377
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User;->gppSidMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_4f
    const/4 v0, 0x0

    .line 379
    :goto_50
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 380
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 382
    :cond_64
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User;->coppa_:Z

    if-eqz v0, :cond_6c

    const/4 v1, 0x6

    .line 383
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 385
    :cond_6c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.User.AnonymousClass1 (io.bidmachine.protobuf.sdk.User$1)
.class Lio/bidmachine/protobuf/sdk/User$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1274
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1280
    new-instance v0, Lio/bidmachine/protobuf/sdk/User;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/User;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/User$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1274
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.User.Builder (io.bidmachine.protobuf.sdk.User$Builder)
.class public final Lio/bidmachine/protobuf/sdk/User$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "User.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/User$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/UserOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccpa_:Ljava/lang/Object;

.field private consent_:Ljava/lang/Object;

.field private coppa_:Z

.field private gdpr_:Z

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private gpp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 595
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 906
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 1002
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1098
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$1600()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 596
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 601
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 767
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 906
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 1002
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1098
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$1600()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 602
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/User$1;)V
    .registers 3

    .line 577
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/User$1;)V
    .registers 2

    .line 577
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;-><init>()V

    return-void
.end method

.method private ensureGppSidIsMutable()V
    .registers 2

    .line 1100
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_14

    .line 1101
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/User;->access$1700(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1102
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 583
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 606
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllGppSid(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/User$Builder;"
        }
    .end annotation

    .line 1184
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->ensureGppSidIsMutable()V

    .line 1185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addGppSid(I)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 1168
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->ensureGppSidIsMutable()V

    .line 1169
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 1170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 695
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/User;
    .registers 3

    .line 640
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 642
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/User;
    .registers 3

    .line 649
    new-instance v0, Lio/bidmachine/protobuf/sdk/User;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/User$1;)V

    .line 651
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$502(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gdpr_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$602(Lio/bidmachine/protobuf/sdk/User;Z)Z

    .line 653
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$702(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$802(Lio/bidmachine/protobuf/sdk/User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    .line 656
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 657
    iget v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    .line 659
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$902(Lio/bidmachine/protobuf/sdk/User;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 660
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->coppa_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/User;->access$1002(Lio/bidmachine/protobuf/sdk/User;Z)Z

    .line 661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clear()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clear()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clear()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clear()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 611
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 612
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 614
    iput-boolean v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gdpr_:Z

    .line 616
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 618
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 620
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$300()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 621
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    .line 622
    iput-boolean v1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->coppa_:Z

    return-object p0
.end method

.method public clearCcpa()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 977
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->getCcpa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConsent()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 838
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->getConsent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCoppa()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1243
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->coppa_:Z

    .line 1244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 678
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public clearGdpr()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gdpr_:Z

    .line 902
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGpp()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1073
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->getGpp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGppSid()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1199
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$1800()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1200
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    .line 1201
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 683
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 667
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->clone()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcpa()Ljava/lang/String;
    .registers 3

    .line 916
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 917
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 918
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 920
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 921
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 924
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCcpaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 937
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 938
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 939
    check-cast v0, Ljava/lang/String;

    .line 940
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 942
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 945
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .registers 3

    .line 777
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 778
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 779
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 781
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 782
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    return-object v0

    .line 785
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 799
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 800
    check-cast v0, Ljava/lang/String;

    .line 801
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 803
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    return-object v0

    .line 806
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCoppa()Z
    .registers 2

    .line 1216
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->coppa_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/User;
    .registers 2

    .line 635
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 630
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGdpr()Z
    .registers 2

    .line 874
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gdpr_:Z

    return v0
.end method

.method public getGpp()Ljava/lang/String;
    .registers 3

    .line 1012
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1013
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1014
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1016
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1017
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    return-object v0

    .line 1020
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGppBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1033
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1034
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1035
    check-cast v0, Ljava/lang/String;

    .line 1036
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1038
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    return-object v0

    .line 1041
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 1139
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 1127
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGppSidList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1115
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 1116
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 589
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/User;

    const-class v2, Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 590
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

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/User$Builder;

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

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User$Builder;

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

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/User$Builder;

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

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 754
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->access$1200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 756
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/User;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 757
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

    .line 760
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 762
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 699
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/User;

    if-eqz v0, :cond_b

    .line 700
    check-cast p1, Lio/bidmachine/protobuf/sdk/User;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1

    .line 702
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 4

    .line 708
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 709
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getConsent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 710
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$500(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 711
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 713
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGdpr()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 714
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGdpr()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setGdpr(Z)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 716
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getCcpa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 717
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$700(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 720
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getGpp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 721
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$800(Lio/bidmachine/protobuf/sdk/User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 724
    :cond_4d
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$900(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 725
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 726
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$900(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 727
    iget v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->bitField0_:I

    goto :goto_78

    .line 729
    :cond_6c
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->ensureGppSidIsMutable()V

    .line 730
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$900(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    :goto_78
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 734
    :cond_7b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getCoppa()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 735
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User;->getCoppa()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setCoppa(Z)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 737
    :cond_88
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$1100(Lio/bidmachine/protobuf/sdk/User;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1256
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public setCcpa(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCcpaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 993
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 997
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->ccpa_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setConsent(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setConsentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 858
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->consent_:Ljava/lang/Object;

    .line 859
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCoppa(Z)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1229
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->coppa_:Z

    .line 1230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 577
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/User$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 3

    .line 673
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public setGdpr(Z)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 887
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gdpr_:Z

    .line 888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGpp(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGppBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1089
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/User;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1093
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gpp_:Ljava/lang/Object;

    .line 1094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGppSid(II)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 4

    .line 1153
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/User$Builder;->ensureGppSidIsMutable()V

    .line 1154
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/User$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 1155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 577
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/User$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 577
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/User$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 4

    .line 689
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 577
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1250
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object p1
.end method
