###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAd (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd)
.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "HeaderBiddingAd.java"

# interfaces
.implements Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;,
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final BIDDER_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_PARAMS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_PARAMS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile bidder_:Ljava/lang/Object;

.field private clientParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private serverParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1189
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-direct {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 1197
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 375
    iput-byte v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_a9

    .line 52
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_88

    const/16 v5, 0x12

    if-eq v3, v5, :cond_5c

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_30

    .line 90
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto/16 :goto_9f

    :catch_2c
    move-exception p1

    goto :goto_90

    :catch_2e
    move-exception p1

    goto :goto_9a

    :cond_30
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3e

    .line 78
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x2

    .line 83
    :cond_3e
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 84
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 83
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 85
    iget-object v4, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 85
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_5c
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6a

    .line 65
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x1

    .line 70
    :cond_6a
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 71
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 70
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 72
    iget-object v4, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 73
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 72
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 58
    :cond_88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 60
    iput-object v3, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;
    :try_end_8e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_8e} :catch_2e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8e} :catch_2c
    .catchall {:try_start_e .. :try_end_8e} :catchall_29

    goto/16 :goto_c

    .line 101
    :goto_90
    :try_start_90
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 102
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 99
    :goto_9a
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_29

    .line 104
    :goto_9f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 106
    throw p1

    .line 104
    :cond_a9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 375
    iput-byte p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 13
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 13
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 1

    .line 1193
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetClientParams()Lcom/explorestack/protobuf/MapField;
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

    .line 197
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 198
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetServerParams()Lcom/explorestack/protobuf/MapField;
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

    .line 294
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 295
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 1

    .line 556
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 559
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 530
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 537
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 497
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 503
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 543
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 550
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 518
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 525
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 486
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 492
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 507
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 513
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation

    .line 1208
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsClientParams(Ljava/lang/String;)Z
    .registers 3

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsServerParams(Ljava/lang/String;)Z
    .registers 3

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

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

    .line 446
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    if-nez v1, :cond_d

    .line 447
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 449
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 453
    :cond_1f
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 454
    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 453
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 455
    :cond_2e
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 456
    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 455
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 457
    :cond_3d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    return v2

    :cond_48
    return v0
.end method

.method public getBidder()Ljava/lang/String;
    .registers 3

    .line 147
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    .line 148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 149
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 151
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 153
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBidderBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 169
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    .line 170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 171
    check-cast v0, Ljava/lang/String;

    .line 172
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 177
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClientParams()Ljava/util/Map;
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

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClientParamsCount()I
    .registers 2

    .line 205
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getClientParamsMap()Ljava/util/Map;
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

    .line 239
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 256
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

.method public getClientParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 272
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 275
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 273
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2

    .line 1218
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation

    .line 1213
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 409
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 413
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 414
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 417
    :goto_19
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

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

    .line 419
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 420
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 421
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x2

    .line 424
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_29

    .line 427
    :cond_56
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 429
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 430
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 431
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x3

    .line 434
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_66

    .line 436
    :cond_93
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getServerParams()Ljava/util/Map;
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

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getServerParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerParamsCount()I
    .registers 2

    .line 302
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getServerParamsMap()Ljava/util/Map;
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

    .line 336
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 353
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

.method public getServerParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 369
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 372
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 370
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 463
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 467
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 470
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 472
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 474
    :cond_3c
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 476
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_59
    mul-int/lit8 v1, v1, 0x1d

    .line 478
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 479
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 130
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const-class v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 121
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 123
    :cond_b
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

    .line 119
    :cond_22
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .registers 3

    .line 378
    iget-byte v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 554
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 4

    .line 570
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 563
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 564
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 389
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 390
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 395
    :cond_10
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x2

    .line 393
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 401
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x3

    .line 399
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 404
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.AnonymousClass1 (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$1)
.class Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "HeaderBiddingAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1197
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1203
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.Builder (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$Builder)
.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "HeaderBiddingAd.java"

# interfaces
.implements Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;"
    }
.end annotation


# instance fields
.field private bidder_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 624
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 625
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 630
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 763
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 631
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .registers 3

    .line 580
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .registers 2

    .line 580
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 586
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetClientParams()Lcom/explorestack/protobuf/MapField;
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

    .line 863
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 864
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;
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

    .line 871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 872
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 873
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    .line 876
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 877
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    .line 879
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1028
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 1029
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    .line 1032
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1033
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    .line 1035
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetServerParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1019
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 1020
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 635
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 711
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 663
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3

    .line 670
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    .line 672
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$402(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$502(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 674
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$500(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 675
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$602(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 676
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$600(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 640
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 641
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 643
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 644
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    return-object p0
.end method

.method public clearBidder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 834
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 835
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClientParams()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 957
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 958
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 694
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 699
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public clearServerParams()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 1113
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1114
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 683
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsClientParams(Ljava/lang/String;)Z
    .registers 3

    .line 896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsServerParams(Ljava/lang/String;)Z
    .registers 3

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBidder()Ljava/lang/String;
    .registers 3

    .line 773
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 774
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 775
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 777
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 778
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 781
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBidderBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 794
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 795
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 796
    check-cast v0, Ljava/lang/String;

    .line 797
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 799
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 802
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClientParams()Ljava/util/Map;
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

    .line 905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getClientParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClientParamsCount()I
    .registers 2

    .line 883
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getClientParamsMap()Ljava/util/Map;
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

    .line 917
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 931
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 934
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

.method public getClientParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 950
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 953
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 951
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 2

    .line 656
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 651
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutableClientParams()Ljava/util/Map;
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

    .line 982
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMutableServerParams()Ljava/util/Map;
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

    .line 1138
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerParams()Ljava/util/Map;
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

    .line 1061
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getServerParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerParamsCount()I
    .registers 2

    .line 1039
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getServerParamsMap()Ljava/util/Map;
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

    .line 1073
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1090
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

.method public getServerParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1106
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1109
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1107
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 618
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const-class v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 619
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 596
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 598
    :cond_b
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

    .line 594
    :cond_22
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 609
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 611
    :cond_b
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

    .line 607
    :cond_22
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
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

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 750
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 756
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 752
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 753
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

    .line 756
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 758
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 715
    instance-of v0, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    if-eqz v0, :cond_b

    .line 716
    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1

    .line 718
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 4

    .line 724
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 725
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 726
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$400(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 729
    :cond_1a
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 730
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$700(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 731
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 732
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 731
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 733
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$900(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 1179
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;"
        }
    .end annotation

    .line 1010
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1011
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putAllServerParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;"
        }
    .end annotation

    .line 1166
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1167
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putClientParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 4

    .line 994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 997
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putServerParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 4

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1153
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeClientParams(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 973
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeServerParams(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1129
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBidder(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBidderBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 854
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 580
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 3

    .line 689
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 580
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 580
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 4

    .line 705
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 580
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .registers 2

    .line 1173
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ClientParamsDefaultEntryHolder (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$ClientParamsDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "HeaderBiddingAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientParamsDefaultEntryHolder"
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

    .line 184
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 186
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ServerParamsDefaultEntryHolder (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$ServerParamsDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "HeaderBiddingAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerParamsDefaultEntryHolder"
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

    .line 281
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 283
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
