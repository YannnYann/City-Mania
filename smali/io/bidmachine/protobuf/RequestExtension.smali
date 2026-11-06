###### Class io.bidmachine.protobuf.RequestExtension (io.bidmachine.protobuf.RequestExtension)
.class public final Lio/bidmachine/protobuf/RequestExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestExtension$Builder;,
        Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final BM_IFV_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

.field public static final HEADER_BIDDING_TYPE_FIELD_NUMBER:I = 0x3

.field public static final IFV_FIELD_NUMBER:I = 0x4

.field public static final INTEGRATION_TYPE_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELLER_DATA_FIELD_NUMBER:I = 0x2

.field public static final SELLER_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile bmIfv_:Ljava/lang/Object;

.field private headerBiddingType_:I

.field private volatile ifv_:Ljava/lang/Object;

.field private volatile integrationType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private sellerData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sellerId_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1614
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    .line 1622
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 489
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestExtension;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_ac

    .line 53
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    const/16 v5, 0xa

    if-eq v3, v5, :cond_8b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_62

    const/16 v5, 0x18

    if-eq v3, v5, :cond_5b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_54

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_4d

    const/16 v5, 0x32

    if-eq v3, v5, :cond_46

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_3f

    .line 108
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_37
    move v1, v4

    goto :goto_c

    :catchall_39
    move-exception p1

    goto :goto_a2

    :catch_3b
    move-exception p1

    goto :goto_93

    :catch_3d
    move-exception p1

    goto :goto_9d

    .line 102
    :cond_3f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 104
    iput-object v3, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    goto :goto_c

    .line 96
    :cond_46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 98
    iput-object v3, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    goto :goto_c

    .line 90
    :cond_4d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 92
    iput-object v3, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    goto :goto_c

    .line 84
    :cond_54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 86
    iput-object v3, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    goto :goto_c

    .line 78
    :cond_5b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 80
    iput v3, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    goto :goto_c

    :cond_62
    if-nez v2, :cond_6d

    .line 66
    sget-object v2, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v2}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerData_:Lcom/explorestack/protobuf/MapField;

    move v2, v4

    .line 71
    :cond_6d
    sget-object v3, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 72
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 71
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 73
    iget-object v4, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 74
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 59
    :cond_8b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 61
    iput-object v3, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;
    :try_end_91
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_91} :catch_3d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_91} :catch_3b
    .catchall {:try_start_e .. :try_end_91} :catchall_39

    goto/16 :goto_c

    .line 119
    :goto_93
    :try_start_93
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 120
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 117
    :goto_9d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_a2
    .catchall {:try_start_93 .. :try_end_a2} :catchall_39

    .line 122
    :goto_a2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 124
    throw p1

    .line 122
    :cond_ac
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 489
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestExtension;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestExtension$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$1800(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$400(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerData_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/RequestExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerData_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/RequestExtension;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    return p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/RequestExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;
    .registers 1

    .line 1618
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 128
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetSellerData()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 206
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 1

    .line 698
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->toBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 701
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->toBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 672
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 679
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 639
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 645
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 685
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 692
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 660
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 667
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 628
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 634
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 649
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 655
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestExtension;",
            ">;"
        }
    .end annotation

    .line 1633
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsSellerData(Ljava/lang/String;)Z
    .registers 3

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 575
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestExtension;

    if-nez v1, :cond_d

    .line 576
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 578
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 582
    :cond_1f
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 583
    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 582
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 584
    :cond_2e
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    iget v3, p1, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    if-eq v1, v3, :cond_35

    return v2

    .line 585
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    .line 587
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    .line 589
    :cond_53
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    .line 591
    :cond_62
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationType()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    return v2

    .line 593
    :cond_71
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    return v2

    :cond_7c
    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 363
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    .line 364
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 365
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 367
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 369
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 370
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 385
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    .line 386
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 387
    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 390
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 393
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;
    .registers 2

    .line 1643
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    return-object v0
.end method

.method public getHeaderBiddingType()Lio/bidmachine/protobuf/HeaderBiddingType;
    .registers 2

    .line 301
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/HeaderBiddingType;->valueOf(I)Lio/bidmachine/protobuf/HeaderBiddingType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 302
    sget-object v0, Lio/bidmachine/protobuf/HeaderBiddingType;->UNRECOGNIZED:Lio/bidmachine/protobuf/HeaderBiddingType;

    :cond_a
    return-object v0
.end method

.method public getHeaderBiddingTypeValue()I
    .registers 2

    .line 293
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    return v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 317
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    .line 318
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 319
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 321
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 323
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 324
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 339
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    .line 340
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 341
    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 344
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 347
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIntegrationType()Ljava/lang/String;
    .registers 3

    .line 455
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    .line 456
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 457
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 459
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 461
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 462
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIntegrationTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 477
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    .line 478
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 479
    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 482
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    return-object v0

    .line 485
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
            "Lio/bidmachine/protobuf/RequestExtension;",
            ">;"
        }
    .end annotation

    .line 1638
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSellerData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerDataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataCount()I
    .registers 2

    .line 213
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSellerDataMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 264
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getSellerDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 280
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 281
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSellerId()Ljava/lang/String;
    .registers 3

    .line 159
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 161
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 163
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 165
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 177
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    .line 178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 179
    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 185
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 532
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 536
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 540
    :goto_19
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 542
    sget-object v3, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x2

    .line 547
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_29

    .line 549
    :cond_56
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    sget-object v2, Lio/bidmachine/protobuf/HeaderBiddingType;->HEADER_BIDDING_TYPE_INVALID:Lio/bidmachine/protobuf/HeaderBiddingType;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/HeaderBiddingType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_68

    const/4 v1, 0x3

    .line 550
    iget v2, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    .line 551
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_68
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    const/4 v1, 0x4

    .line 554
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8c

    const/4 v1, 0x5

    .line 557
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_8c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9e

    const/4 v1, 0x6

    .line 560
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    :cond_9e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b0

    const/4 v1, 0x7

    .line 563
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_b0
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 409
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    .line 410
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 411
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 413
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 415
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 416
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 431
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    .line 432
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 433
    check-cast v0, Ljava/lang/String;

    .line 434
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 436
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 439
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 599
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 603
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 605
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 606
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 608
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3c
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 611
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 615
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 619
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 620
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 621
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 146
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestExtension;

    const-class v2, Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 137
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 139
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 492
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 496
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->newBuilderForType()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->newBuilderForType()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 696
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->newBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 4

    .line 712
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 31
    new-instance p1, Lio/bidmachine/protobuf/RequestExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestExtension;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->toBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->toBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 705
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 706
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lio/bidmachine/protobuf/RequestExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lio/bidmachine/protobuf/RequestExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 503
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 504
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->sellerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 509
    :cond_10
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x2

    .line 507
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 512
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    sget-object v1, Lio/bidmachine/protobuf/HeaderBiddingType;->HEADER_BIDDING_TYPE_INVALID:Lio/bidmachine/protobuf/HeaderBiddingType;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/HeaderBiddingType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2a

    const/4 v0, 0x3

    .line 513
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension;->headerBiddingType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 515
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x4

    .line 516
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->ifv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 518
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x5

    .line 519
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 521
    :cond_4a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    const/4 v0, 0x6

    .line 522
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 524
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x7

    .line 525
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension;->integrationType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 527
    :cond_6a
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.RequestExtension.AnonymousClass1 (io.bidmachine.protobuf.RequestExtension$1)
.class Lio/bidmachine/protobuf/RequestExtension$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "RequestExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/RequestExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1622
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1628
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1622
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.RequestExtension.Builder (io.bidmachine.protobuf.RequestExtension$Builder)
.class public final Lio/bidmachine/protobuf/RequestExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private headerBiddingType_:I

.field private ifv_:Ljava/lang/Object;

.field private integrationType_:Ljava/lang/Object;

.field private sellerData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 758
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 926
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1158
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1212
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1308
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1404
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1500
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 759
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 764
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 926
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1158
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1212
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1308
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1404
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1500
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 765
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestExtension$1;)V
    .registers 3

    .line 718
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/RequestExtension$1;)V
    .registers 2

    .line 718
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 724
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1015
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 1016
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 1019
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1020
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 1022
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetSellerData()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 1007
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 769
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 857
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestExtension;
    .registers 3

    .line 804
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 806
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestExtension;
    .registers 3

    .line 813
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestExtension$1;)V

    .line 815
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$402(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$502(Lio/bidmachine/protobuf/RequestExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 817
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestExtension;->access$500(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 818
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$602(Lio/bidmachine/protobuf/RequestExtension;I)I

    .line 819
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$702(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$802(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$902(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$1002(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 774
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 777
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->clear()V

    const/4 v1, 0x0

    .line 778
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 780
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 782
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 784
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 786
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1379
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 840
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public clearHeaderBiddingType()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1207
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1283
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIntegrationType()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1571
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 1572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 845
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public clearSellerData()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1100
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1101
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearSellerId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 981
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1475
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 829
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsSellerData(Ljava/lang/String;)Z
    .registers 3

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1040
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 1318
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1319
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1320
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1322
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1323
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1326
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1339
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1340
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1341
    check-cast v0, Ljava/lang/String;

    .line 1342
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1344
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1347
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;
    .registers 2

    .line 799
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 794
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeaderBiddingType()Lio/bidmachine/protobuf/HeaderBiddingType;
    .registers 2

    .line 1184
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/HeaderBiddingType;->valueOf(I)Lio/bidmachine/protobuf/HeaderBiddingType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1185
    sget-object v0, Lio/bidmachine/protobuf/HeaderBiddingType;->UNRECOGNIZED:Lio/bidmachine/protobuf/HeaderBiddingType;

    :cond_a
    return-object v0
.end method

.method public getHeaderBiddingTypeValue()I
    .registers 2

    .line 1164
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    return v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 1222
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1223
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1224
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1226
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1227
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1230
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1243
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1244
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1245
    check-cast v0, Ljava/lang/String;

    .line 1246
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1248
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1251
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIntegrationType()Ljava/lang/String;
    .registers 3

    .line 1510
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 1511
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1512
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1514
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1515
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    return-object v0

    .line 1518
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIntegrationTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1531
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 1532
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1533
    check-cast v0, Ljava/lang/String;

    .line 1534
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1536
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    return-object v0

    .line 1539
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMutableSellerData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1048
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getSellerDataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataCount()I
    .registers 2

    .line 1026
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSellerDataMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1060
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1077
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getSellerDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1093
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1096
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1094
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSellerId()Ljava/lang/String;
    .registers 3

    .line 932
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 933
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 934
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 936
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 937
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 940
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 949
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 950
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 951
    check-cast v0, Ljava/lang/String;

    .line 952
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 954
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 957
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 1414
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1415
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1416
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1418
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1419
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1422
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1435
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1436
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1437
    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1440
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1443
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 752
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestExtension;

    const-class v2, Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 753
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 732
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 734
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 743
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 745
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 913
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 919
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 915
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 916
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

    .line 919
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 921
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 861
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestExtension;

    if-eqz v0, :cond_b

    .line 862
    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1

    .line 864
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 4

    .line 870
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 871
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 872
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$400(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 875
    :cond_1a
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 876
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1100(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 875
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 877
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$600(Lio/bidmachine/protobuf/RequestExtension;)I

    move-result v0

    if-eqz v0, :cond_32

    .line 878
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getHeaderBiddingTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 880
    :cond_32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 881
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$700(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 884
    :cond_45
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 885
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$800(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 886
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 888
    :cond_58
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 889
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$900(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 892
    :cond_6b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIntegrationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 893
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1000(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 896
    :cond_7e
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1200(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1604
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public putAllSellerData(Ljava/util/Map;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestExtension$Builder;"
        }
    .end annotation

    .line 1153
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1154
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putSellerData(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 4

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1139
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1140
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeSellerData(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1115
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1116
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1365
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1397
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1399
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 3

    .line 835
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public setHeaderBiddingType(Lio/bidmachine/protobuf/HeaderBiddingType;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    invoke-virtual {p1}, Lio/bidmachine/protobuf/HeaderBiddingType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1173
    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1301
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1303
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIntegrationType(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1557
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 1558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIntegrationTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1589
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1800(Lcom/explorestack/protobuf/ByteString;)V

    .line 1591
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->integrationType_:Ljava/lang/Object;

    .line 1592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 4

    .line 851
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 968
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 993
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 997
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1461
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1493
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1495
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .registers 2

    .line 1598
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.RequestExtension.SellerDataDefaultEntryHolder (io.bidmachine.protobuf.RequestExtension$SellerDataDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;
.super Ljava/lang/Object;
.source "RequestExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SellerDataDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/explorestack/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 192
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 194
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
