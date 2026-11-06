###### Class io.bidmachine.protobuf.analytics.AuctionContext (io.bidmachine.protobuf.analytics.AuctionContext)
.class public final Lio/bidmachine/protobuf/analytics/AuctionContext;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AuctionContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    }
.end annotation


# static fields
.field public static final AT_FIELD_NUMBER:I = 0x4

.field public static final CONTEXT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final ITEM_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_FIELD_NUMBER:I = 0x7

.field public static final PLACEMENT_TAG_FIELD_NUMBER:I = 0x5

.field public static final TEST_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private at_:I

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private volatile id_:Ljava/lang/Object;

.field private item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field private memoizedIsInitialized:B

.field private placementTag_:I

.field private placement_:Lcom/explorestack/protobuf/adcom/Placement;

.field private test_:Z

.field private volatile timestamp_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1451
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1459
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 348
    iput-byte v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_e8

    .line 49
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    const/16 v4, 0xa

    if-eq v2, v4, :cond_c7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_bf

    const/16 v4, 0x18

    if-eq v2, v4, :cond_b7

    const/16 v4, 0x20

    if-eq v2, v4, :cond_af

    const/16 v4, 0x28

    if-eq v2, v4, :cond_a7

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-eq v2, v4, :cond_86

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_66

    const/16 v4, 0x42

    if-eq v2, v4, :cond_46

    .line 122
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_3b
    move v1, v3

    goto :goto_b

    :catchall_3d
    move-exception p1

    goto/16 :goto_de

    :catch_40
    move-exception p1

    goto/16 :goto_cf

    :catch_43
    move-exception p1

    goto/16 :goto_d9

    .line 110
    :cond_46
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v2, :cond_4e

    .line 111
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v5

    .line 113
    :cond_4e
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Context;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v5, :cond_b

    .line 115
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 116
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_b

    .line 97
    :cond_66
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v2, :cond_6e

    .line 98
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v5

    .line 100
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v5, :cond_b

    .line 102
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 103
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_b

    .line 84
    :cond_86
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v2, :cond_8e

    .line 85
    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v5

    .line 87
    :cond_8e
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request$Item;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v5, :cond_b

    .line 89
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 90
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto/16 :goto_b

    .line 77
    :cond_a7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 79
    iput v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    goto/16 :goto_b

    .line 73
    :cond_af
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    goto/16 :goto_b

    .line 68
    :cond_b7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    goto/16 :goto_b

    .line 61
    :cond_bf
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 55
    :cond_c7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;
    :try_end_cd
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_cd} :catch_43
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_cd} :catch_40
    .catchall {:try_start_d .. :try_end_cd} :catchall_3d

    goto/16 :goto_b

    .line 133
    :goto_cf
    :try_start_cf
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 134
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 131
    :goto_d9
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_de
    .catchall {:try_start_cf .. :try_end_de} :catchall_3d

    .line 136
    :goto_de
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 138
    throw p1

    .line 136
    :cond_e8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 348
    iput-byte p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    return-object p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    return-object p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

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

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/analytics/AuctionContext;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    return p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/analytics/AuctionContext;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 1

    .line 1455
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 142
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 1

    .line 576
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 579
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 550
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 557
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 517
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 523
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 563
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 570
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 538
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 545
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 506
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 512
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 527
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 533
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation

    .line 1470
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v1, :cond_d

    .line 436
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 438
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 442
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 444
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v1

    .line 445
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 446
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v1

    .line 447
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    .line 448
    :cond_44
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    iget v3, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    if-eq v1, v3, :cond_4b

    return v2

    .line 449
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v3

    if-eq v1, v3, :cond_56

    return v2

    .line 450
    :cond_56
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    return v2

    .line 454
    :cond_6b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v3

    if-eq v1, v3, :cond_76

    return v2

    .line 455
    :cond_76
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 457
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v2

    .line 459
    :cond_8b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_96

    return v2

    .line 460
    :cond_96
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 461
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    return v2

    .line 464
    :cond_ab
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b6

    return v2

    :cond_b6
    return v0
.end method

.method public getAt()I
    .registers 2

    .line 248
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    return v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 338
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2

    .line 1480
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 199
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    .line 200
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 201
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 203
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 205
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 206
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 217
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    .line 218
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 219
    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object v0

    .line 225
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .registers 2

    .line 286
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getItemOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation

    .line 1475
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlacement()Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 312
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPlacementOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementTag()Lio/bidmachine/protobuf/analytics/PlacementTag;
    .registers 2

    .line 266
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/PlacementTag;->valueOf(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object v0

    if-nez v0, :cond_a

    .line 267
    sget-object v0, Lio/bidmachine/protobuf/analytics/PlacementTag;->UNRECOGNIZED:Lio/bidmachine/protobuf/analytics/PlacementTag;

    :cond_a
    return-object v0
.end method

.method public getPlacementTagValue()I
    .registers 2

    .line 258
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 391
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 395
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 398
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 399
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_2b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    if-eqz v1, :cond_35

    const/4 v2, 0x3

    .line 403
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    :cond_35
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    if-eqz v1, :cond_3f

    const/4 v2, 0x4

    .line 407
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_3f
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    sget-object v2, Lio/bidmachine/protobuf/analytics/PlacementTag;->PLACEMENT_TAG_INVALID:Lio/bidmachine/protobuf/analytics/PlacementTag;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_51

    const/4 v1, 0x5

    .line 410
    iget v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    .line 411
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_51
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v1, :cond_5f

    const/4 v1, 0x6

    .line 415
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 417
    :cond_5f
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v1, :cond_6d

    const/4 v1, 0x7

    .line 419
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    :cond_6d
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v1, :cond_7c

    const/16 v1, 0x8

    .line 423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_7c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTest()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 3

    .line 161
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 162
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 163
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 165
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 167
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 168
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 179
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 181
    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 187
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 330
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasItem()Z
    .registers 2

    .line 278
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPlacement()Z
    .registers 2

    .line 304
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 470
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 474
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 476
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 478
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 481
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v0

    .line 480
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 483
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 485
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    add-int/2addr v1, v0

    .line 486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_66

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 488
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 490
    :cond_66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v0

    if-eqz v0, :cond_7b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 492
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 494
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_90

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 496
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_90
    mul-int/lit8 v1, v1, 0x1d

    .line 498
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 499
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 148
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const-class v2, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 351
    iget-byte v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 355
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 574
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 4

    .line 590
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-direct {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 583
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 584
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 363
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 365
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 366
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 368
    :cond_20
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 369
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 371
    :cond_28
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 372
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 374
    :cond_30
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    sget-object v1, Lio/bidmachine/protobuf/analytics/PlacementTag;->PLACEMENT_TAG_INVALID:Lio/bidmachine/protobuf/analytics/PlacementTag;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_40

    const/4 v0, 0x5

    .line 375
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 377
    :cond_40
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_4c

    const/4 v0, 0x6

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 380
    :cond_4c
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_58

    const/4 v0, 0x7

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 383
    :cond_58
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_65

    const/16 v0, 0x8

    .line 384
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 386
    :cond_65
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.analytics.AuctionContext.AnonymousClass1 (io.bidmachine.protobuf.analytics.AuctionContext$1)
.class Lio/bidmachine/protobuf/analytics/AuctionContext$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AuctionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/AuctionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/analytics/AuctionContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1459
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1465
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.analytics.AuctionContext.Builder (io.bidmachine.protobuf.analytics.AuctionContext$Builder)
.class public final Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AuctionContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/AuctionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private id_:Ljava/lang/Object;

.field private itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field private placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private placementTag_:I

.field private placement_:Lcom/explorestack/protobuf/adcom/Placement;

.field private test_:Z

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 614
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 884
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1022
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 615
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 620
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 808
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 884
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1022
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 621
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .registers 3

    .line 596
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .registers 2

    .line 596
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>()V

    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1423
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 1426
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1428
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1430
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 602
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1185
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 1188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1190
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1192
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1304
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1306
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 1307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1309
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1311
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 625
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 739
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3

    .line 675
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 677
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 3

    .line 684
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    .line 685
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$402(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$502(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-boolean v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$602(Lio/bidmachine/protobuf/analytics/AuctionContext;Z)Z

    .line 688
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$702(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I

    .line 689
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$802(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I

    .line 690
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_29

    .line 691
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_32

    .line 693
    :cond_29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 695
    :goto_32
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3c

    .line 696
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_45

    .line 698
    :cond_3c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    .line 700
    :goto_45
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4f

    .line 701
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_58

    .line 703
    :cond_4f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    .line 705
    :goto_58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 630
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 633
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 637
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 639
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 641
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 642
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_1c

    .line 644
    :cond_18
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 645
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 647
    :goto_1c
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_23

    .line 648
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_27

    .line 650
    :cond_23
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 651
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 653
    :goto_27
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2e

    .line 654
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    return-object p0

    .line 656
    :cond_2e
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 657
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAt()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1017
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 1018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1387
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1388
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1391
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1392
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 722
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public clearId()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 939
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearItem()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1149
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1150
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1153
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1154
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 727
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public clearPlacement()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1268
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1269
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1272
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1273
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearPlacementTag()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1071
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTest()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 986
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 863
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 711
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAt()I
    .registers 2

    .line 998
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    return v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 1329
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1330
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1332
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context;

    return-object v0
.end method

.method public getContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .registers 2

    .line 1402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1403
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 1409
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1410
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ContextOrBuilder;

    return-object v0

    .line 1412
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_13

    .line 1413
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2

    .line 670
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 665
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 890
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 891
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 892
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 894
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 895
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 898
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 907
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 908
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 909
    check-cast v0, Ljava/lang/String;

    .line 910
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 912
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 915
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .registers 2

    .line 1091
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1092
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1094
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public getItemBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .registers 2

    .line 1164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1165
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public getItemOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .registers 2

    .line 1171
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object v0

    .line 1174
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_13

    .line 1175
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPlacement()Lcom/explorestack/protobuf/adcom/Placement;
    .registers 2

    .line 1210
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1211
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1213
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public getPlacementBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .registers 2

    .line 1283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1284
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public getPlacementOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .registers 2

    .line 1290
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1291
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;

    return-object v0

    .line 1293
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_13

    .line 1294
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPlacementTag()Lio/bidmachine/protobuf/analytics/PlacementTag;
    .registers 2

    .line 1048
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/PlacementTag;->valueOf(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1049
    sget-object v0, Lio/bidmachine/protobuf/analytics/PlacementTag;->UNRECOGNIZED:Lio/bidmachine/protobuf/analytics/PlacementTag;

    :cond_a
    return-object v0
.end method

.method public getPlacementTagValue()I
    .registers 2

    .line 1028
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    return v0
.end method

.method public getTest()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 3

    .line 814
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 815
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 816
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 818
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 819
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 822
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 831
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 832
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 833
    check-cast v0, Ljava/lang/String;

    .line 834
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 836
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 839
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 1322
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

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

.method public hasItem()Z
    .registers 2

    .line 1084
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

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

.method public hasPlacement()Z
    .registers 2

    .line 1203
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

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

    .line 608
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const-class v2, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 609
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

.method public mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1369
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1370
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_17

    .line 1372
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_19

    .line 1374
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1376
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1378
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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 796
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 802
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 798
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/AuctionContext;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 799
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

    .line 802
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 804
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 743
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_b

    .line 744
    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1

    .line 746
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 752
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 753
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 754
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$400(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 757
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 758
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$500(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 761
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 762
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setTest(Z)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 764
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v0

    if-eqz v0, :cond_47

    .line 765
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setAt(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 767
    :cond_47
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$800(Lio/bidmachine/protobuf/analytics/AuctionContext;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 768
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacementTagValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setPlacementTagValue(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 770
    :cond_54
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 771
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 773
    :cond_61
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 774
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 776
    :cond_6e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 777
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 779
    :cond_7b
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1200(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 780
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1131
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1132
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_17

    .line 1134
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_19

    .line 1136
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1138
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1140
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1250
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1251
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_17

    .line 1253
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_19

    .line 1255
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1257
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1259
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1441
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setAt(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1007
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 1008
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1356
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1357
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1360
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1339
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1346
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 717
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 955
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setItem(Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1118
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1119
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1122
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1101
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1108
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1237
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1238
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1241
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 3

    .line 1220
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1227
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPlacementTag(Lio/bidmachine/protobuf/analytics/PlacementTag;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlacementTagValue(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1037
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 4

    .line 733
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setTest(Z)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 976
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestampBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 879
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1435
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method
