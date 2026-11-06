###### Class io.bidmachine.protobuf.analytics.BidEvent (io.bidmachine.protobuf.analytics.BidEvent)
.class public final Lio/bidmachine/protobuf/analytics/BidEvent;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "BidEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    }
.end annotation


# static fields
.field public static final AD_FIELD_NUMBER:I = 0x6

.field public static final AUCTION_CONTEXT_FIELD_NUMBER:I = 0x4

.field public static final BIDID_FIELD_NUMBER:I = 0x2

.field public static final BID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/BidEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEAT_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private ad_:Lcom/explorestack/protobuf/adcom/Ad;

.field private auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field private bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field private volatile bidid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile seat_:Ljava/lang/Object;

.field private volatile timestamp_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1364
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 1372
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/BidEvent$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 335
    iput-byte v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_d0

    .line 49
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    const/16 v4, 0xa

    if-eq v2, v4, :cond_af

    const/16 v4, 0x12

    if-eq v2, v4, :cond_a7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9f

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5e

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3e

    .line 112
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_33
    move v1, v3

    goto :goto_b

    :catchall_35
    move-exception p1

    goto/16 :goto_c6

    :catch_38
    move-exception p1

    goto/16 :goto_b7

    :catch_3b
    move-exception p1

    goto/16 :goto_c1

    .line 100
    :cond_3e
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v2, :cond_46

    .line 101
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v5

    .line 103
    :cond_46
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Ad;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v5, :cond_b

    .line 105
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 106
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_b

    .line 87
    :cond_5e
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v2, :cond_66

    .line 88
    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v5

    .line 90
    :cond_66
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v5, :cond_b

    .line 92
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 93
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_b

    .line 74
    :cond_7e
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v2, :cond_86

    .line 75
    invoke-virtual {v2}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v5

    .line 77
    :cond_86
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/analytics/AuctionContext;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v5, :cond_b

    .line 79
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 80
    invoke-virtual {v5}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto/16 :goto_b

    .line 67
    :cond_9f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 69
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 61
    :cond_a7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 55
    :cond_af
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;
    :try_end_b5
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_b5} :catch_3b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b5} :catch_38
    .catchall {:try_start_d .. :try_end_b5} :catchall_35

    goto/16 :goto_b

    .line 123
    :goto_b7
    :try_start_b7
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 124
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 121
    :goto_c1
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_c6
    .catchall {:try_start_b7 .. :try_end_c6} :catchall_35

    .line 126
    :goto_c6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 128
    throw p1

    .line 126
    :cond_d0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 335
    iput-byte p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/analytics/BidEvent;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1100()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 1

    .line 1368
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 132
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 1

    .line 540
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 543
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 514
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 521
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 527
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 534
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 502
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 509
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 476
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 491
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 497
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/BidEvent;",
            ">;"
        }
    .end annotation

    .line 1383
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 407
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    if-nez v1, :cond_d

    .line 408
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 410
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    .line 412
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 414
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 416
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 418
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v3

    if-eq v1, v3, :cond_48

    return v2

    .line 419
    :cond_48
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v1

    .line 421
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/analytics/AuctionContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    return v2

    .line 423
    :cond_5d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v3

    if-eq v1, v3, :cond_68

    return v2

    .line 424
    :cond_68
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    .line 428
    :cond_7d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v3

    if-eq v1, v3, :cond_88

    return v2

    .line 429
    :cond_88
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 431
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v2

    .line 433
    :cond_9d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a8

    return v2

    :cond_a8
    return v0
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .registers 2

    .line 325
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAdOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .registers 2

    .line 332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2

    .line 273
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAuctionContextOrBuilder()Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;
    .registers 2

    .line 280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .registers 2

    .line 299
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getBidOrBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .registers 2

    .line 306
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public getBidid()Ljava/lang/String;
    .registers 3

    .line 189
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    .line 190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 191
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 193
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 195
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 207
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    .line 208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 215
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2

    .line 1393
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/BidEvent;",
            ">;"
        }
    .end annotation

    .line 1388
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSeat()Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    .line 228
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 229
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 231
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 233
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 234
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 245
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    .line 246
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 247
    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    return-object v0

    .line 253
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 372
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 376
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 377
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 379
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBididBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 380
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_2b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x3

    .line 383
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_3d
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v1, :cond_4b

    const/4 v1, 0x4

    .line 387
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_4b
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v1, :cond_59

    const/4 v1, 0x5

    .line 391
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_59
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v1, :cond_67

    const/4 v1, 0x6

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    :cond_67
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 3

    .line 151
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    .line 152
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 153
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 155
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 158
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 169
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    .line 170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 171
    check-cast v0, Ljava/lang/String;

    .line 172
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 177
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

.method public hasAd()Z
    .registers 2

    .line 317
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasAuctionContext()Z
    .registers 2

    .line 265
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasBid()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 439
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 443
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 445
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 447
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 450
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v0

    if-eqz v0, :cond_52

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 454
    :cond_52
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_67

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 458
    :cond_67
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v0

    if-eqz v0, :cond_7c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7c
    mul-int/lit8 v1, v1, 0x1d

    .line 462
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 463
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 138
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/BidEvent;

    const-class v2, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 338
    iget-byte v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 342
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->newBuilderForType()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->newBuilderForType()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 538
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->newBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 4

    .line 554
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-direct {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 547
    sget-object v0, Lio/bidmachine/protobuf/analytics/BidEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/BidEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 548
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 350
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->timestamp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 352
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBididBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 353
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bidid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 355
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    .line 356
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->seat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 358
    :cond_30
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    .line 359
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 361
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v0, :cond_48

    const/4 v0, 0x5

    .line 362
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 364
    :cond_48
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    .line 365
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 367
    :cond_54
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.analytics.BidEvent.AnonymousClass1 (io.bidmachine.protobuf.analytics.BidEvent$1)
.class Lio/bidmachine/protobuf/analytics/BidEvent$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "BidEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/BidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/analytics/BidEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1372
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1378
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1372
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.analytics.BidEvent.Builder (io.bidmachine.protobuf.analytics.BidEvent$Builder)
.class public final Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "BidEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/BidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/analytics/BidEvent$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;"
    }
.end annotation


# instance fields
.field private adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ad_:Lcom/explorestack/protobuf/adcom/Ad;

.field private auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field private bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field private bidid_:Ljava/lang/Object;

.field private seat_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 578
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 761
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 837
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 913
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 584
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 761
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 837
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 913
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 585
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .registers 3

    .line 560
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .registers 2

    .line 560
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>()V

    return-void
.end method

.method private getAdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1336
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1338
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 1339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1341
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1343
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1098
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1100
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v1

    .line 1101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1105
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getBidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1217
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 1220
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1222
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1224
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 589
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 697
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 637
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 3

    .line 644
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    .line 645
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$402(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$502(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$602(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1f

    .line 649
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_28

    .line 651
    :cond_1f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 653
    :goto_28
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_32

    .line 654
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_3b

    .line 656
    :cond_32
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 658
    :goto_3b
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_45

    .line 659
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_4e

    .line 661
    :cond_45
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    .line 663
    :goto_4e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 594
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 597
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 599
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 602
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_17

    .line 604
    :cond_13
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 605
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 607
    :goto_17
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 608
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_22

    .line 610
    :cond_1e
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 611
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 613
    :goto_22
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_29

    .line 614
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0

    .line 616
    :cond_29
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 617
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAd()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1300
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1301
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1304
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1305
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAuctionContext()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1062
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1063
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1066
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1067
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1181
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1182
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1185
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1186
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBidid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 892
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 680
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 685
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public clearSeat()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 968
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 816
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 669
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .registers 2

    .line 1242
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1243
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1245
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public getAdBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .registers 2

    .line 1315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1316
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public getAdOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .registers 2

    .line 1322
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1323
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/AdOrBuilder;

    return-object v0

    .line 1325
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_13

    .line 1326
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .registers 2

    .line 1004
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1005
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1007
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public getAuctionContextBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1078
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object v0
.end method

.method public getAuctionContextOrBuilder()Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;
    .registers 2

    .line 1084
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1085
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;

    return-object v0

    .line 1087
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v0, :cond_13

    .line 1088
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .registers 2

    .line 1123
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1124
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1126
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object v0
.end method

.method public getBidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .registers 2

    .line 1196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1197
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object v0
.end method

.method public getBidOrBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .registers 2

    .line 1203
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1204
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    return-object v0

    .line 1206
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v0, :cond_13

    .line 1207
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBidid()Ljava/lang/String;
    .registers 3

    .line 843
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 844
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 845
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 847
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 848
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 851
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 860
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 861
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 862
    check-cast v0, Ljava/lang/String;

    .line 863
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 865
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 868
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;
    .registers 2

    .line 630
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 625
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getSeat()Ljava/lang/String;
    .registers 3

    .line 919
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 920
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 921
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 923
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 924
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 927
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 936
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 938
    check-cast v0, Ljava/lang/String;

    .line 939
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 941
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 944
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 3

    .line 767
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 768
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 769
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 771
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 772
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 775
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 784
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 785
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 786
    check-cast v0, Ljava/lang/String;

    .line 787
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 789
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 792
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasAd()Z
    .registers 2

    .line 1235
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

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

.method public hasAuctionContext()Z
    .registers 2

    .line 997
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

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

.method public hasBid()Z
    .registers 2

    .line 1116
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

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

    .line 572
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/BidEvent;

    const-class v2, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 573
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

.method public mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1282
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1283
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_17

    .line 1285
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_19

    .line 1287
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1289
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1291
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1044
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1045
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_17

    .line 1047
    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilder(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_19

    .line 1049
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1051
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1053
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1163
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1164
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v0, :cond_17

    .line 1166
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_19

    .line 1168
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1170
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1172
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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 749
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 755
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 751
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 752
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

    .line 755
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 757
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 701
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    if-eqz v0, :cond_b

    .line 702
    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1

    .line 704
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 710
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 711
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 712
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$400(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 715
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 716
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$500(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 719
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 720
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$600(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 723
    :cond_40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 724
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 726
    :cond_4d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 727
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 729
    :cond_5a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 730
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 732
    :cond_67
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1000(Lio/bidmachine/protobuf/analytics/BidEvent;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 1354
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1269
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1270
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1273
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1252
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1259
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1031
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1032
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1033
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1035
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1014
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1021
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1150
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1154
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 1133
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1140
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBidid(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBididBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 904
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 908
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 3

    .line 675
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 4

    .line 691
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setSeat(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 955
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 984
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestampBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 832
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .registers 2

    .line 1348
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method
