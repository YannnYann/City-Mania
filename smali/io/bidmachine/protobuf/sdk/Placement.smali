###### Class io.bidmachine.protobuf.sdk.Placement (io.bidmachine.protobuf.sdk.Placement)
.class public final Lio/bidmachine/protobuf/sdk/Placement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Placement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Placement$Builder;
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x5

.field public static final AD_TYPE_FIELD_NUMBER:I = 0x1

.field public static final CUSTOM_DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

.field public static final HB_PLACEMENT_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Placement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_ID_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

.field private volatile adType_:Ljava/lang/Object;

.field private customData_:Lcom/explorestack/protobuf/Struct;

.field private hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

.field private memoizedIsInitialized:B

.field private placementId_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1522
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Placement;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    .line 1530
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Placement$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 347
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_dd

    .line 47
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    const/16 v4, 0xa

    if-eq v2, v4, :cond_bc

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7a

    const/16 v4, 0x22

    if-eq v2, v4, :cond_5a

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3a

    .line 111
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2f
    move v1, v3

    goto :goto_b

    :catchall_31
    move-exception p1

    goto/16 :goto_d3

    :catch_34
    move-exception p1

    goto/16 :goto_c4

    :catch_37
    move-exception p1

    goto/16 :goto_ce

    .line 99
    :cond_3a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v2, :cond_42

    .line 100
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AdFormat;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v5

    .line 102
    :cond_42
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v5, :cond_b

    .line 104
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 105
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    goto :goto_b

    .line 86
    :cond_5a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v2, :cond_62

    .line 87
    invoke-virtual {v2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v5

    .line 89
    :cond_62
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v5, :cond_b

    .line 91
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 92
    invoke-virtual {v5}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_b

    .line 73
    :cond_7a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_82

    .line 74
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 76
    :cond_82
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 78
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 79
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    goto/16 :goto_b

    .line 60
    :cond_9b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_a3

    .line 61
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 63
    :cond_a3
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 65
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 66
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 53
    :cond_bc
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 55
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;
    :try_end_c2
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_c2} :catch_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_c2} :catch_34
    .catchall {:try_start_d .. :try_end_c2} :catchall_31

    goto/16 :goto_b

    .line 122
    :goto_c4
    :try_start_c4
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 123
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 120
    :goto_ce
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_31

    .line 125
    :goto_d3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 127
    throw p1

    .line 125
    :cond_dd
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Placement$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 347
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Placement$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/Placement;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/Placement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;
    .registers 1

    .line 1526
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 131
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 1

    .line 548
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement;->toBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 551
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement;->toBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 522
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 529
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 489
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 495
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 535
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 542
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 510
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 517
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 478
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 484
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Placement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Placement;",
            ">;"
        }
    .end annotation

    .line 1541
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 414
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Placement;

    if-nez v1, :cond_d

    .line 415
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 417
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement;

    .line 419
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdType()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 421
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasPlacementId()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasPlacementId()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 422
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasPlacementId()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 426
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasCustomData()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasCustomData()Z

    move-result v3

    if-eq v1, v3, :cond_4a

    return v2

    .line 427
    :cond_4a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasCustomData()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 428
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 429
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    .line 431
    :cond_5f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasHbPlacement()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasHbPlacement()Z

    move-result v3

    if-eq v1, v3, :cond_6a

    return v2

    .line 432
    :cond_6a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasHbPlacement()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 433
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v1

    .line 434
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    return v2

    .line 436
    :cond_7f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasAdFormat()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasAdFormat()Z

    move-result v3

    if-eq v1, v3, :cond_8a

    return v2

    .line 437
    :cond_8a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasAdFormat()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v1

    .line 439
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    return v2

    .line 441
    :cond_9f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    return v2

    :cond_aa
    return v0
.end method

.method public getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2

    .line 332
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAdFormatOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;
    .registers 2

    .line 344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    .line 157
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 158
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 160
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 162
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    .line 181
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 185
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    return-object v0

    .line 188
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomData()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 254
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCustomDataOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 265
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2

    .line 1551
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    return-object v0
.end method

.method public getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .registers 2

    .line 292
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getHbPlacementOrBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;
    .registers 2

    .line 303
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Placement;",
            ">;"
        }
    .end annotation

    .line 1546
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlacementId()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 216
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPlacementIdOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 381
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 385
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 386
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 388
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    .line 390
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_27
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_35

    const/4 v1, 0x3

    .line 394
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_35
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v1, :cond_43

    const/4 v1, 0x4

    .line 398
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_43
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v1, :cond_51

    const/4 v1, 0x5

    .line 402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_51
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAdFormat()Z
    .registers 2

    .line 319
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomData()Z
    .registers 2

    .line 242
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasHbPlacement()Z
    .registers 2

    .line 280
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPlacementId()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 447
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 451
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 454
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasPlacementId()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 458
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasCustomData()Z

    move-result v0

    if-eqz v0, :cond_49

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 462
    :cond_49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasHbPlacement()Z

    move-result v0

    if-eqz v0, :cond_5e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 466
    :cond_5e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->hasAdFormat()Z

    move-result v0

    if-eqz v0, :cond_73

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_73
    mul-int/lit8 v1, v1, 0x1d

    .line 470
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 471
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 137
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Placement;

    const-class v2, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 350
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 354
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 546
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 4

    .line 562
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Placement$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/sdk/Placement;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Placement;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->toBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->toBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 555
    sget-object v0, Lio/bidmachine/protobuf/sdk/Placement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Placement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 556
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Placement$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Placement$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

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

    .line 361
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 362
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement;->adType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 364
    :cond_10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 365
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 367
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 370
    :cond_28
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    .line 371
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 373
    :cond_34
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v0, :cond_40

    const/4 v0, 0x5

    .line 374
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 376
    :cond_40
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Placement.AnonymousClass1 (io.bidmachine.protobuf.sdk.Placement$1)
.class Lio/bidmachine/protobuf/sdk/Placement$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Placement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Placement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1530
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1536
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Placement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Placement$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1530
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Placement.Builder (io.bidmachine.protobuf.sdk.Placement$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Placement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Placement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Placement$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;"
    }
.end annotation


# instance fields
.field private adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

.field private adType_:Ljava/lang/Object;

.field private customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private customData_:Lcom/explorestack/protobuf/Struct;

.field private hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

.field private placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private placementId_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 586
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 587
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 592
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 769
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 593
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Placement$1;)V
    .registers 3

    .line 568
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Placement$1;)V
    .registers 2

    .line 568
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;-><init>()V

    return-void
.end method

.method private getAdFormatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1494
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1496
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v1

    .line 1497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1499
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1501
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCustomDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1175
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1177
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1182
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 574
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getHbPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1330
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v1

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1335
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1337
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPlacementIdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1020
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1023
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 1027
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 597
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 710
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3

    .line 645
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 647
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Placement;
    .registers 3

    .line 654
    new-instance v0, Lio/bidmachine/protobuf/sdk/Placement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Placement$1;)V

    .line 655
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$402(Lio/bidmachine/protobuf/sdk/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 657
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$502(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1e

    .line 659
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$502(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 661
    :goto_1e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_28

    .line 662
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$602(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_31

    .line 664
    :cond_28
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$602(Lio/bidmachine/protobuf/sdk/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 666
    :goto_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3b

    .line 667
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$702(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_44

    .line 669
    :cond_3b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$702(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 671
    :goto_44
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4e

    .line 672
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$802(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat;

    goto :goto_57

    .line 674
    :cond_4e
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement;->access$802(Lio/bidmachine/protobuf/sdk/Placement;Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 676
    :goto_57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clear()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 602
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 606
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_13

    .line 608
    :cond_f
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 609
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 611
    :goto_13
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 612
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1e

    .line 614
    :cond_1a
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 615
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 617
    :goto_1e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_25

    .line 618
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_29

    .line 620
    :cond_25
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 621
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 623
    :goto_29
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_30

    .line 624
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0

    .line 626
    :cond_30
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 627
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAdFormat()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1443
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1444
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1445
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1447
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1448
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAdType()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement;->getAdType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomData()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1127
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1128
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1131
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1132
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 693
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public clearHbPlacement()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1282
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1283
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1286
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1287
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 698
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public clearPlacementId()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 972
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 973
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 976
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 977
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 682
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->clone()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2

    .line 1365
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1366
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1368
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object v0
.end method

.method public getAdFormatBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 1463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1464
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getAdFormatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object v0
.end method

.method public getAdFormatOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;
    .registers 2

    .line 1475
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1476
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;

    return-object v0

    .line 1478
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-nez v0, :cond_13

    .line 1479
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 782
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 783
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 785
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 786
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    return-object v0

    .line 789
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 804
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 806
    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 809
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    return-object v0

    .line 812
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomData()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 1053
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1054
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1056
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getCustomDataBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 1146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1147
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getCustomDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getCustomDataOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 1157
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 1160
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 1161
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Placement;
    .registers 2

    .line 640
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 635
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .registers 2

    .line 1208
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1209
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1211
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    return-object v0
.end method

.method public getHbPlacementBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .registers 2

    .line 1301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1302
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getHbPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object v0
.end method

.method public getHbPlacementOrBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;
    .registers 2

    .line 1312
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1313
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;

    return-object v0

    .line 1315
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-nez v0, :cond_13

    .line 1316
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPlacementId()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 898
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 899
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 901
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getPlacementIdBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 992
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->getPlacementIdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getPlacementIdOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1003
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 1005
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 1006
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasAdFormat()Z
    .registers 2

    .line 1353
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasCustomData()Z
    .registers 2

    .line 1042
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasHbPlacement()Z
    .registers 2

    .line 1197
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasPlacementId()Z
    .registers 2

    .line 887
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 580
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Placement;

    const-class v2, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 581
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

.method public mergeAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1420
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1421
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v0, :cond_17

    .line 1423
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    goto :goto_19

    .line 1425
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1427
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1429
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCustomData(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1105
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1106
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 1108
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 1110
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1112
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1114
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 757
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 763
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 759
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Placement;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 760
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

    .line 763
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 765
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 714
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Placement;

    if-eqz v0, :cond_b

    .line 715
    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1

    .line 717
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 723
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 724
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 725
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Placement;->access$400(Lio/bidmachine/protobuf/sdk/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 728
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasPlacementId()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 729
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getPlacementId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergePlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 731
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasCustomData()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 732
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getCustomData()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeCustomData(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 734
    :cond_34
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasHbPlacement()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 735
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 737
    :cond_41
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->hasAdFormat()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 738
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement;->getAdFormat()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 740
    :cond_4e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Placement;->access$900(Lio/bidmachine/protobuf/sdk/Placement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1260
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v0, :cond_17

    .line 1263
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_19

    .line 1265
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1267
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1269
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 950
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 951
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 953
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 955
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 957
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 959
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 1512
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public setAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1402
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1403
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1404
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1406
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1380
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1384
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adFormat_:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 1385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1387
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 829
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Placement;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 870
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->adType_:Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCustomData(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1088
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1089
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1092
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCustomData(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1067
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1071
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->customData_:Lcom/explorestack/protobuf/Struct;

    .line 1072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1074
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 688
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1244
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1247
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 1222
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1226
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 1227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1229
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPlacementId(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 933
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 934
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 937
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 3

    .line 912
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Placement$Builder;->placementId_:Lcom/explorestack/protobuf/StringValue;

    .line 917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 919
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 568
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 568
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 4

    .line 704
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .registers 2

    .line 1506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-object p1
.end method
