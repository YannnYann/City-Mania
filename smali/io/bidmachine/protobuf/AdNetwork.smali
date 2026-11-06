###### Class io.bidmachine.protobuf.AdNetwork (io.bidmachine.protobuf.AdNetwork)
.class public final Lio/bidmachine/protobuf/AdNetwork;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdNetwork.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdNetwork$Builder;,
        Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnit;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    }
.end annotation


# static fields
.field public static final AD_UNITS_FIELD_NUMBER:I = 0x4

.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile className_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
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

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2184
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    .line 2192
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1221
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 21
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_ad

    .line 50
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    const/16 v5, 0xa

    if-eq v3, v5, :cond_81

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4e

    const/16 v5, 0x22

    if-eq v3, v5, :cond_33

    .line 90
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2b
    move v1, v4

    goto :goto_c

    :catchall_2d
    move-exception p1

    goto :goto_97

    :catch_2f
    move-exception p1

    goto :goto_88

    :catch_31
    move-exception p1

    goto :goto_92

    :cond_33
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_40

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 85
    :cond_40
    iget-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 86
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4e
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5c

    .line 69
    sget-object v3, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x1

    .line 74
    :cond_5c
    sget-object v3, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 75
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 74
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 76
    iget-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 77
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 76
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 62
    :cond_7a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 64
    iput-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    goto :goto_c

    .line 56
    :cond_81
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 58
    iput-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;
    :try_end_87
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_87} :catch_31
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_87} :catch_2f
    .catchall {:try_start_e .. :try_end_87} :catchall_2d

    goto :goto_c

    .line 101
    :goto_88
    :try_start_88
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 102
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 99
    :goto_92
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_2d

    :goto_97
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_a3

    .line 105
    iget-object p2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 107
    :cond_a3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 109
    throw p1

    :cond_ad
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_b9

    .line 105
    iget-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 107
    :cond_b9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1221
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1300()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1500(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1700(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/AdNetwork;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;
    .registers 1

    .line 2188
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 113
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1116
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 1117
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 1

    .line 1403
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1406
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1377
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1383
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1384
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1344
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1350
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1390
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1397
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1365
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1372
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1333
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1339
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1354
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1360
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 2203
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 1133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 1289
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdNetwork;

    if-nez v1, :cond_d

    .line 1290
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1292
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    .line 1294
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1296
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1298
    :cond_2e
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1299
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 1298
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 1300
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v1

    .line 1301
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    .line 1302
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

.method public getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3

    .line 1210
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1
.end method

.method public getAdUnitsCount()I
    .registers 2

    .line 1203
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdUnitsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object v0
.end method

.method public getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    .registers 3

    .line 1218
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1
.end method

.method public getAdUnitsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    .line 1070
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 1071
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1072
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1074
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1076
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1077
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1088
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 1089
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1090
    check-cast v0, Ljava/lang/String;

    .line 1091
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1093
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object v0

    .line 1096
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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

    .line 1142
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 1124
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
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

    .line 1150
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1163
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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1175
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1178
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1176
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;
    .registers 2

    .line 2213
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1032
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 1033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1034
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1036
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1038
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1039
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1050
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 1051
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1052
    check-cast v0, Ljava/lang/String;

    .line 1053
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1055
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object v0

    .line 1058
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
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 2208
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 1255
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1259
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1260
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1262
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x2

    .line 1263
    iget-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1266
    :cond_2c
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1268
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 1269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 1270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 1271
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v3

    const/4 v4, 0x3

    .line 1273
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3c

    .line 1275
    :cond_69
    :goto_69
    iget-object v2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 1276
    iget-object v2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 1277
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1279
    :cond_82
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1280
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1308
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1312
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1314
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1316
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1317
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1319
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1321
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsCount()I

    move-result v0

    if-lez v0, :cond_60

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1323
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_60
    mul-int/lit8 v1, v1, 0x1d

    .line 1325
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1326
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 131
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 122
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 124
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

    .line 1224
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1228
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1401
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->newBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1417
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/AdNetwork;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 1410
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1411
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1235
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1236
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1238
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1239
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1244
    :cond_20
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x3

    .line 1242
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    const/4 v0, 0x0

    .line 1247
    :goto_2b
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 1248
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1250
    :cond_42
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AnonymousClass1 (io.bidmachine.protobuf.AdNetwork$1)
.class Lio/bidmachine/protobuf/AdNetwork$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2192
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2198
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2192
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AdUnit (io.bidmachine.protobuf.AdNetwork$AdUnit)
.class public final Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdNetwork.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile adFormat_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 990
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 998
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 415
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_74

    .line 228
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    const/16 v5, 0xa

    if-eq v3, v5, :cond_54

    const/16 v5, 0x12

    if-eq v3, v5, :cond_2b

    .line 253
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_23
    move v1, v4

    goto :goto_c

    :catchall_25
    move-exception p1

    goto :goto_6a

    :catch_27
    move-exception p1

    goto :goto_5b

    :catch_29
    move-exception p1

    goto :goto_65

    :cond_2b
    if-nez v2, :cond_36

    .line 241
    sget-object v2, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v2}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    move v2, v4

    .line 246
    :cond_36
    sget-object v3, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 247
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 246
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 248
    iget-object v4, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 249
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 248
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 234
    :cond_54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 236
    iput-object v3, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;
    :try_end_5a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_5a} :catch_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_5a} :catch_27
    .catchall {:try_start_e .. :try_end_5a} :catchall_25

    goto :goto_c

    .line 264
    :goto_5b
    :try_start_5b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 265
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 262
    :goto_65
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_25

    .line 267
    :goto_6a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 269
    throw p1

    .line 267
    :cond_74
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 196
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 415
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 189
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Ljava/lang/Object;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 189
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 189
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 189
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 189
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 1

    .line 994
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 273
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 350
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 351
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 1

    .line 574
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 577
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 548
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 555
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 521
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 561
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 568
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 536
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 543
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 504
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 510
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 525
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 531
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1009
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 470
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    if-nez v1, :cond_d

    .line 471
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 473
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 477
    :cond_1f
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 478
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 477
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 479
    :cond_2e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    return v2

    :cond_39
    return v0
.end method

.method public getAdFormat()Ljava/lang/String;
    .registers 3

    .line 304
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    .line 305
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 306
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 308
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 322
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    .line 323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 324
    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 327
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 330
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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

    .line 376
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 358
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
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

    .line 384
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 397
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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 409
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 412
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 410
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2

    .line 1019
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1014
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 443
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 447
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 448
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 451
    :goto_19
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 453
    sget-object v3, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 454
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 455
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x2

    .line 458
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_29

    .line 460
    :cond_56
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 485
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 489
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 491
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 492
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 494
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3c
    mul-int/lit8 v1, v1, 0x1d

    .line 496
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 497
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 291
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 282
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 284
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

    .line 418
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 422
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 572
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 4

    .line 588
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 206
    new-instance p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 581
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 582
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 429
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 430
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 435
    :cond_10
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x2

    .line 433
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 438
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AdUnit.AnonymousClass1 (io.bidmachine.protobuf.AdNetwork$AdUnit$1)
.class Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 998
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1004
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AdUnit.Builder (io.bidmachine.protobuf.AdNetwork$AdUnit$Builder)
.class public final Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdNetwork.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;"
    }
.end annotation


# instance fields
.field private adFormat_:Ljava/lang/Object;

.field private bitField0_:I

.field private customParams_:Lcom/explorestack/protobuf/MapField;
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

    .line 634
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 635
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 640
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 768
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 641
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 3

    .line 594
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 2

    .line 594
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 600
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 848
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 849
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 857
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 858
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 861
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 862
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 864
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 645
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 718
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3

    .line 670
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 672
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3

    .line 679
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 681
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$402(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$502(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 683
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$500(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 684
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 650
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 653
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    return-object p0
.end method

.method public clearAdFormat()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 823
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomParams()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 926
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 927
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 701
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 706
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 690
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 877
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdFormat()Ljava/lang/String;
    .registers 3

    .line 774
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 775
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 776
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 778
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 779
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 782
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 791
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 792
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 793
    check-cast v0, Ljava/lang/String;

    .line 794
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 796
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 799
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 868
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
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

    .line 894
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 904
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 907
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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 919
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 922
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 920
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 2

    .line 665
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 660
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutableCustomParams()Ljava/util/Map;
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

    .line 947
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 628
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 629
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 608
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 610
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

    .line 619
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 621
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

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 755
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 761
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 757
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 758
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

    .line 761
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 763
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 722
    instance-of v0, p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    if-eqz v0, :cond_b

    .line 723
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1

    .line 725
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 4

    .line 731
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 732
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 733
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$400(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 736
    :cond_1a
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 737
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$600(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 736
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 738
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$700(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 980
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;"
        }
    .end annotation

    .line 967
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 968
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 4

    .line 955
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 957
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 958
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 938
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAdFormat(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 810
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 814
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdFormatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 839
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 594
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 696
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 4

    .line 712
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 2

    .line 974
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AdUnit.CustomParamsDefaultEntryHolder (io.bidmachine.protobuf.AdNetwork$AdUnit$CustomParamsDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomParamsDefaultEntryHolder"
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

    .line 337
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_CustomParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 339
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder (io.bidmachine.protobuf.AdNetwork$AdUnitOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
.super Ljava/lang/Object;
.source "AdNetwork.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdUnitOrBuilder"
.end annotation


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getAdFormat()Ljava/lang/String;
.end method

.method public abstract getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCustomParams()Ljava/util/Map;
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
.end method

.method public abstract getCustomParamsCount()I
.end method

.method public abstract getCustomParamsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.AdNetwork.Builder (io.bidmachine.protobuf.AdNetwork$Builder)
.class public final Lio/bidmachine/protobuf/AdNetwork$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdNetwork.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdNetwork$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdNetworkOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1463
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1646
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1722
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1927
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1464
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1469
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1646
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1722
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1927
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1470
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 3

    .line 1423
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdNetwork$1;)V
    .registers 2

    .line 1423
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>()V

    return-void
.end method

.method private ensureAdUnitsIsMutable()V
    .registers 3

    .line 1929
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 1930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1931
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 2155
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2159
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2161
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2163
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1429
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1802
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 1803
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1811
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 1812
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1815
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1816
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1818
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1474
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1475
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 2051
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2052
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2053
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2056
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 2020
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2022
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2024
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2025
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2028
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 2037
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2038
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2039
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2042
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 2003
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2007
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2008
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2011
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdUnitsBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 2133
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2134
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2133
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object v0
.end method

.method public addAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 4

    .line 2141
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2142
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2141
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2066
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2067
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2071
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 1566
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdNetwork;
    .registers 3

    .line 1508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    .line 1509
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1510
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdNetwork;
    .registers 3

    .line 1517
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 1519
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1502(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1602(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1702(Lio/bidmachine/protobuf/AdNetwork;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 1522
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork;->access$1700(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 1523
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3c

    .line 1524
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_36

    .line 1525
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1526
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1528
    :cond_36
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    goto :goto_43

    .line 1530
    :cond_3c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    .line 1532
    :goto_43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1480
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1481
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1483
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1485
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 1486
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1f

    .line 1487
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1488
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    return-object p0

    .line 1490
    :cond_1f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearAdUnits()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 2079
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2080
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2081
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 2082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2084
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearClassName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1777
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomParams()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1880
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1881
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1549
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public clearName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1701
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1554
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1538
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 1831
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1832
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .registers 3

    .line 1962
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1963
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1

    .line 1965
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1
.end method

.method public getAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .registers 3

    .line 2106
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public getAdUnitsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            ">;"
        }
    .end annotation

    .line 2149
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsCount()I
    .registers 2

    .line 1952
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1953
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1955
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdUnitsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1942
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1945
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    .registers 3

    .line 2113
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2114
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1

    .line 2115
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1
.end method

.method public getAdUnitsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2124
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2126
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    .line 1728
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1729
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1730
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1732
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1733
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1736
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1745
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1746
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1747
    check-cast v0, Ljava/lang/String;

    .line 1748
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1750
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1753
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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

    .line 1840
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 1822
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
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

    .line 1848
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1860
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1861
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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1872
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1873
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1876
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1874
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;
    .registers 2

    .line 1503
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1498
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutableCustomParams()Ljava/util/Map;
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

    .line 1901
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1652
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1653
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1654
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1656
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1657
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1660
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1669
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1671
    check-cast v0, Ljava/lang/String;

    .line 1672
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1674
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1677
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1457
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1458
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1437
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1439
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

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1448
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1450
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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1633
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1639
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1635
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1636
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

    .line 1639
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1641
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 1570
    instance-of v0, p1, Lio/bidmachine/protobuf/AdNetwork;

    if-eqz v0, :cond_b

    .line 1571
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1

    .line 1573
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1579
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1580
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1581
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1500(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1584
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1585
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1600(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1588
    :cond_2d
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1589
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1900(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1588
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1590
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6b

    .line 1591
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 1592
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1593
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1594
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    goto :goto_67

    .line 1596
    :cond_5b
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1597
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1599
    :goto_67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_a7

    .line 1602
    :cond_6b
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 1603
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1604
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1605
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1606
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1607
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1609
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1610
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9b
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_a7

    .line 1612
    :cond_9e
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1616
    :cond_a7
    :goto_a7
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2100(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 2174
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 1921
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1922
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1909
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1910
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1911
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1912
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 2092
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2093
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2094
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2097
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 1890
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1892
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1990
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1991
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1992
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1995
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1973
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1975
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1977
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1978
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1979
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1981
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setClassNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1791
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1793
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1794
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 1544
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1691
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 1713
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1715
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1717
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1423
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1423
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 1560
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 2

    .line 2168
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdNetwork.CustomParamsDefaultEntryHolder (io.bidmachine.protobuf.AdNetwork$CustomParamsDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomParamsDefaultEntryHolder"
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

    .line 1103
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_CustomParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 1105
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
