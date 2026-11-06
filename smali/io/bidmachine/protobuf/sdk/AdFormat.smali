###### Class io.bidmachine.protobuf.sdk.AdFormat (io.bidmachine.protobuf.sdk.AdFormat)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AdFormat$Builder;,
        Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;,
        Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;,
        Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;,
        Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AdFormat$Native;,
        Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AdFormat$Banner;,
        Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;
    }
.end annotation


# static fields
.field public static final BANNER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

.field public static final INTERSTITIAL_FIELD_NUMBER:I = 0x4

.field public static final NATIVE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARDED_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private specCase_:I

.field private spec_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3691
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 3699
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 2519
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v0, -0x1

    .line 2688
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_ec

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_ac

    const/16 v4, 0x12

    if-eq v2, v4, :cond_84

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5d

    const/16 v4, 0x22

    if-eq v2, v4, :cond_36

    .line 108
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2b
    move v1, v3

    goto :goto_b

    :catchall_2d
    move-exception p1

    goto/16 :goto_e2

    :catch_30
    move-exception p1

    goto/16 :goto_d3

    :catch_33
    move-exception p1

    goto/16 :goto_dd

    .line 95
    :cond_36
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_43

    .line 96
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v5

    .line 99
    :cond_43
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    if-eqz v5, :cond_5a

    .line 101
    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 102
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    .line 104
    :cond_5a
    iput v3, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    goto :goto_b

    .line 81
    :cond_5d
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6a

    .line 82
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v5

    .line 85
    :cond_6a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    if-eqz v5, :cond_81

    .line 87
    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 88
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    .line 90
    :cond_81
    iput v3, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    goto :goto_b

    .line 67
    :cond_84
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_91

    .line 68
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v5

    .line 71
    :cond_91
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    if-eqz v5, :cond_a8

    .line 73
    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 74
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    .line 76
    :cond_a8
    iput v3, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    goto/16 :goto_b

    .line 53
    :cond_ac
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    if-ne v2, v3, :cond_b8

    .line 54
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v5

    .line 57
    :cond_b8
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    if-eqz v5, :cond_cf

    .line 59
    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 60
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    .line 62
    :cond_cf
    iput v3, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I
    :try_end_d1
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_d1} :catch_33
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d1} :catch_30
    .catchall {:try_start_d .. :try_end_d1} :catchall_2d

    goto/16 :goto_b

    .line 119
    :goto_d3
    :try_start_d3
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 120
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 117
    :goto_dd
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_e2
    .catchall {:try_start_d3 .. :try_end_e2} :catchall_2d

    .line 122
    :goto_e2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 124
    throw p1

    .line 122
    :cond_ec
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    const/4 p1, 0x0

    .line 2519
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 p1, -0x1

    .line 2688
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4000()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/sdk/AdFormat;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    return p1
.end method

.method public static synthetic access$4400(Lio/bidmachine/protobuf/sdk/AdFormat;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 1

    .line 3695
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 128
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 1

    .line 2884
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 2887
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2857
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2858
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2864
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2865
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2825
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2831
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2870
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2871
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2877
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2878
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2845
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2846
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2852
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2853
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2814
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2820
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2835
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2841
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat;",
            ">;"
        }
    .end annotation

    .line 3710
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2749
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AdFormat;

    if-nez v1, :cond_d

    .line 2750
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2752
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat;

    .line 2754
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getSpecCase()Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getSpecCase()Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 2755
    :cond_1f
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    if-eq v1, v0, :cond_5a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3c

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2d

    goto :goto_69

    .line 2769
    :cond_2d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v1

    .line 2770
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    .line 2765
    :cond_3c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v1

    .line 2766
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    .line 2761
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v1

    .line 2762
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    .line 2757
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v1

    .line 2758
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    .line 2775
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    return v2

    :cond_74
    return v0
.end method

.method public getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3

    .line 2579
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2580
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0

    .line 2582
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public getBannerOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;
    .registers 3

    .line 2589
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2590
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0

    .line 2592
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2

    .line 3720
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    return-object v0
.end method

.method public getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3

    .line 2672
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 2673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0

    .line 2675
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;
    .registers 3

    .line 2682
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 2683
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0

    .line 2685
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3

    .line 2610
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2611
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0

    .line 2613
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getNativeOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;
    .registers 3

    .line 2620
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0

    .line 2623
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat;",
            ">;"
        }
    .end annotation

    .line 3715
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3

    .line 2641
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2642
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0

    .line 2644
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;
    .registers 3

    .line 2651
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2652
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0

    .line 2654
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2719
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2723
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2724
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    .line 2725
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2727
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 2728
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    .line 2729
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2731
    :cond_23
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_31

    .line 2732
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    .line 2733
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2735
    :cond_31
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    .line 2736
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    .line 2737
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2739
    :cond_3f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2740
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSpecCase()Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 2

    .line 2560
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBanner()Z
    .registers 3

    .line 2571
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInterstitial()Z
    .registers 3

    .line 2664
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasNative()Z
    .registers 3

    .line 2602
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasRewarded()Z
    .registers 3

    .line 2633
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 2781
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2785
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2786
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    goto :goto_58

    :cond_1f
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 2801
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hashCode()I

    move-result v0

    :goto_2c
    add-int/2addr v1, v0

    goto :goto_58

    :cond_2e
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 2797
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hashCode()I

    move-result v0

    goto :goto_2c

    :cond_3c
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 2793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hashCode()I

    move-result v0

    goto :goto_2c

    :cond_4a
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 2789
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->hashCode()I

    move-result v0

    goto :goto_2c

    :goto_58
    mul-int/lit8 v1, v1, 0x1d

    .line 2806
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2807
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 134
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2691
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2695
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 2882
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 4

    .line 2898
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 2891
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2892
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

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

    .line 2702
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2703
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2705
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 2706
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2708
    :cond_18
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 2709
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2711
    :cond_24
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 2712
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2714
    :cond_30
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.AnonymousClass1 (io.bidmachine.protobuf.sdk.AdFormat$1)
.class Lio/bidmachine/protobuf/sdk/AdFormat$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AdFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3699
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3705
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3699
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.AnonymousClass2 (io.bidmachine.protobuf.sdk.AdFormat$2)
.class synthetic Lio/bidmachine/protobuf/sdk/AdFormat$2;
.super Ljava/lang/Object;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3044
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->values()[Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->BANNER:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->NATIVE:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->REWARDED:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->INTERSTITIAL:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->SPEC_NOT_SET:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Banner (io.bidmachine.protobuf.sdk.AdFormat$Banner)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Banner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final IS_ADAPTIVE_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private height_:I

.field private isAdaptive_:Z

.field private memoizedIsInitialized:B

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 734
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    .line 742
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 286
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>()V

    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_5c

    .line 201
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3c

    const/16 v4, 0x10

    if-eq v2, v4, :cond_35

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2e

    .line 222
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_52

    :catch_2a
    move-exception p1

    goto :goto_43

    :catch_2c
    move-exception p1

    goto :goto_4d

    .line 218
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isAdaptive_:Z

    goto :goto_b

    .line 213
    :cond_35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->height_:I

    goto :goto_b

    .line 208
    :cond_3c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->width_:I
    :try_end_42
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_42} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_42} :catch_2a
    .catchall {:try_start_d .. :try_end_42} :catchall_28

    goto :goto_b

    .line 233
    :goto_43
    :try_start_43
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 234
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 231
    :goto_4d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_28

    .line 236
    :goto_52
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 238
    throw p1

    .line 236
    :cond_5c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 171
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 286
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 164
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 164
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;I)I
    .registers 2

    .line 164
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->width_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;I)I
    .registers 2

    .line 164
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->height_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;Z)Z
    .registers 2

    .line 164
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isAdaptive_:Z

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 164
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 1

    .line 738
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 242
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 1

    .line 447
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 450
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 421
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 428
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 388
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 434
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 441
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 409
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 416
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 383
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 404
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
            ">;"
        }
    .end annotation

    .line 753
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 340
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    if-nez v1, :cond_d

    .line 341
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 343
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    .line 345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getWidth()I

    move-result v1

    .line 346
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 347
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getHeight()I

    move-result v1

    .line 348
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 349
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getIsAdaptive()Z

    move-result v1

    .line 350
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getIsAdaptive()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 351
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v3

    :cond_3c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2

    .line 763
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 272
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->height_:I

    return v0
.end method

.method public getIsAdaptive()Z
    .registers 2

    .line 283
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isAdaptive_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
            ">;"
        }
    .end annotation

    .line 758
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 314
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 318
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->width_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 320
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 322
    :goto_11
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->height_:I

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 324
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_1b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isAdaptive_:Z

    if-eqz v1, :cond_25

    const/4 v2, 0x3

    .line 328
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_25
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 261
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->width_:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 357
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 361
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 363
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 365
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getIsAdaptive()Z

    move-result v0

    .line 367
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 369
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 370
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 248
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Banner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 289
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 293
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 445
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 4

    .line 461
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 180
    new-instance p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 3

    .line 454
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 455
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

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

    .line 300
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->width_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 301
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 303
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->height_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 304
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 306
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isAdaptive_:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 307
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 309
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Banner.AnonymousClass1 (io.bidmachine.protobuf.sdk.AdFormat$Banner$1)
.class Lio/bidmachine/protobuf/sdk/AdFormat$Banner$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 742
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 748
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 742
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Banner.Builder (io.bidmachine.protobuf.sdk.AdFormat$Banner$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;"
    }
.end annotation


# instance fields
.field private height_:I

.field private isAdaptive_:Z

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 486
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 491
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 492
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 467
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 2

    .line 467
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 473
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 496
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 3

    .line 571
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3

    .line 524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 526
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 3

    .line 533
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    .line 534
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->width_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$402(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;I)I

    .line 535
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->height_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$502(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;I)I

    .line 536
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->isAdaptive_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$602(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;Z)Z

    .line 537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 501
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 502
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->width_:I

    .line 504
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->height_:I

    .line 506
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->isAdaptive_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 554
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public clearHeight()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 680
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->height_:I

    .line 681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsAdaptive()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->isAdaptive_:Z

    .line 712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 559
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public clearWidth()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 649
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->width_:I

    .line 650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 543
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 2

    .line 519
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 514
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 661
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->height_:I

    return v0
.end method

.method public getIsAdaptive()Z
    .registers 2

    .line 692
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->isAdaptive_:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 630
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->width_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 479
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Banner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 480
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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

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

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 611
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 613
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 614
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

    .line 617
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 619
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 3

    .line 575
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    if-eqz v0, :cond_b

    .line 576
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1

    .line 578
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 3

    .line 584
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 585
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getWidth()I

    move-result v0

    if-eqz v0, :cond_14

    .line 586
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setWidth(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 588
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getHeight()I

    move-result v0

    if-eqz v0, :cond_21

    .line 589
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setHeight(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 591
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getIsAdaptive()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 592
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getIsAdaptive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setIsAdaptive(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 594
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->access$700(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    .line 595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 724
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 467
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 3

    .line 549
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public setHeight(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 670
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->height_:I

    .line 671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIsAdaptive(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 701
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->isAdaptive_:Z

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 4

    .line 565
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 718
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object p1
.end method

.method public setWidth(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 639
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->width_:I

    .line 640
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.BannerOrBuilder (io.bidmachine.protobuf.sdk.AdFormat$BannerOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;
.super Ljava/lang/Object;
.source "AdFormat.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BannerOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIsAdaptive()Z
.end method

.method public abstract getWidth()I
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Builder (io.bidmachine.protobuf.sdk.AdFormat$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AdFormatOrBuilder;"
    }
.end annotation


# instance fields
.field private bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private specCase_:I

.field private spec_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2922
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 3093
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 2923
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2928
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 3093
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 2929
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 2904
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 2

    .line 2904
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;-><init>()V

    return-void
.end method

.method private getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 3235
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-eq v0, v1, :cond_f

    .line 3236
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3238
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    .line 3241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3243
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3245
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2910
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getInterstitialFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3657
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_25

    .line 3658
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-eq v0, v1, :cond_f

    .line 3659
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3661
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    .line 3664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3666
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3668
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3670
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_25

    .line 3376
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-eq v0, v1, :cond_f

    .line 3377
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3379
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    .line 3382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3384
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3386
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3388
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRewardedFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;",
            "Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_25

    .line 3517
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-eq v0, v1, :cond_f

    .line 3518
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3520
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    .line 3523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3524
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3525
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3527
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3529
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2933
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3030
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 3

    .line 2957
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    .line 2958
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2959
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 4

    .line 2966
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    .line 2967
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 2968
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 2969
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 2971
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    :cond_1c
    :goto_1c
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 2975
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2b

    .line 2976
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 2978
    :cond_2b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    :cond_32
    :goto_32
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_48

    .line 2982
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_41

    .line 2983
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 2985
    :cond_41
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    :cond_48
    :goto_48
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5e

    .line 2989
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_57

    .line 2990
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 2992
    :cond_57
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4202(Lio/bidmachine/protobuf/sdk/AdFormat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    :cond_5e
    :goto_5e
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4302(Lio/bidmachine/protobuf/sdk/AdFormat;I)I

    .line 2996
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 2938
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 2939
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v0, 0x0

    .line 2940
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 6

    .line 3193
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    .line 3194
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v3, :cond_12

    .line 3195
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3196
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3197
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 3200
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v4, v3, :cond_1b

    .line 3201
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3202
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3204
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 3013
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public clearInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 6

    .line 3616
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_13

    .line 3617
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v3, :cond_12

    .line 3618
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3619
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 3623
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v4, v3, :cond_1b

    .line 3624
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3625
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3627
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearNative()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 6

    .line 3334
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    .line 3335
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v3, :cond_12

    .line 3336
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3337
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 3341
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v4, v3, :cond_1b

    .line 3342
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3343
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3345
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 3018
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public clearRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 6

    .line 3475
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_13

    .line 3476
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v3, :cond_12

    .line 3477
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3478
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 3482
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v4, v3, :cond_1b

    .line 3483
    iput v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    .line 3484
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3486
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSpec()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3102
    iput v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v0, 0x0

    .line 3103
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 3002
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;
    .registers 4

    .line 3125
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 3126
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_e

    .line 3127
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0

    .line 3129
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0

    .line 3131
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_1e

    .line 3132
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0

    .line 3134
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public getBannerBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;
    .registers 2

    .line 3212
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    return-object v0
.end method

.method public getBannerOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;
    .registers 4

    .line 3219
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 3220
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$BannerOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 3223
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    return-object v0

    .line 3225
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat;
    .registers 2

    .line 2952
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2947
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 4

    .line 3548
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_13

    .line 3549
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_e

    .line 3550
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0

    .line 3552
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0

    .line 3554
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_1e

    .line 3555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0

    .line 3557
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 3635
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getInterstitialFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object v0
.end method

.method public getInterstitialOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;
    .registers 4

    .line 3642
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 3643
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 3646
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0

    .line 3648
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 4

    .line 3266
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_13

    .line 3267
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_e

    .line 3268
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0

    .line 3270
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0

    .line 3272
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_1e

    .line 3273
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0

    .line 3275
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getNativeBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 3353
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object v0
.end method

.method public getNativeOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;
    .registers 4

    .line 3360
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 3361
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 3364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0

    .line 3366
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 4

    .line 3407
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_13

    .line 3408
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_e

    .line 3409
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0

    .line 3411
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0

    .line 3413
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_1e

    .line 3414
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0

    .line 3416
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 3494
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->getRewardedFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object v0
.end method

.method public getRewardedOrBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;
    .registers 4

    .line 3501
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 3502
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 3505
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0

    .line 3507
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getSpecCase()Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 2

    .line 3097
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBanner()Z
    .registers 3

    .line 3117
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInterstitial()Z
    .registers 3

    .line 3540
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasNative()Z
    .registers 3

    .line 3258
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasRewarded()Z
    .registers 3

    .line 3399
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2916
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 2917
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

.method public mergeBanner(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 5

    .line 3171
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 3172
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3173
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 3174
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v0

    .line 3175
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    goto :goto_26

    .line 3177
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3179
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 3181
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_31

    .line 3182
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3184
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3186
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

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

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

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

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

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

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3082
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 3088
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 3084
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AdFormat;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 3085
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

    .line 3088
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 3090
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3034
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AdFormat;

    if-eqz v0, :cond_b

    .line 3035
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1

    .line 3037
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 4

    .line 3043
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3044
    :cond_7
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$2;->$SwitchMap$io$bidmachine$protobuf$sdk$AdFormat$SpecCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getSpecCase()Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    goto :goto_3f

    .line 3058
    :cond_20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getInterstitial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeInterstitial(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto :goto_3f

    .line 3054
    :cond_28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getRewarded()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeRewarded(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto :goto_3f

    .line 3050
    :cond_30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getNative()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeNative(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto :goto_3f

    .line 3046
    :cond_38
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->getBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeBanner(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 3065
    :goto_3f
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AdFormat;->access$4400(Lio/bidmachine/protobuf/sdk/AdFormat;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 3066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeInterstitial(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 5

    .line 3594
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_2a

    .line 3595
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3596
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 3597
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    .line 3598
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    goto :goto_26

    .line 3600
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3602
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 3604
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_31

    .line 3605
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3607
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3609
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public mergeNative(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 5

    .line 3312
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    .line 3313
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3314
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 3315
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    .line 3316
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    goto :goto_26

    .line 3318
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3320
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 3322
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_31

    .line 3323
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3325
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3327
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public mergeRewarded(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 5

    .line 3453
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_2a

    .line 3454
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3455
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 3456
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    .line 3457
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    goto :goto_26

    .line 3459
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3461
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 3463
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    if-ne v2, v1, :cond_31

    .line 3464
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3466
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3468
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 3681
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public setBanner(Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3158
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3159
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 3162
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x1

    .line 3164
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public setBanner(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3141
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3145
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 3148
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x1

    .line 3150
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2904
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3008
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public setInterstitial(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3581
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3582
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 3585
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x4

    .line 3587
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public setInterstitial(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3564
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->interstitialBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3568
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 3571
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x4

    .line 3573
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public setNative(Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3299
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3300
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 3303
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x2

    .line 3305
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public setNative(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3282
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3286
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3287
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 3289
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x2

    .line 3291
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2904
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2904
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 4

    .line 3024
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

.method public setRewarded(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3440
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3441
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 3444
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x3

    .line 3446
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public setRewarded(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 3

    .line 3423
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->rewardedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3427
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->spec_:Ljava/lang/Object;

    .line 3428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 3430
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x3

    .line 3432
    iput p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->specCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2904
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 2

    .line 3675
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Interstitial (io.bidmachine.protobuf.sdk.AdFormat$Interstitial)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interstitial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

.field public static final HAS_BANNER_FIELD_NUMBER:I = 0x1

.field public static final HAS_VIDEO_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private hasBanner_:Z

.field private hasVideo_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2485
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    .line 2493
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1987
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2084
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2006
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>()V

    .line 2008
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2011
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 2015
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 2031
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_47

    :catch_26
    move-exception p1

    goto :goto_38

    :catch_28
    move-exception p1

    goto :goto_42

    .line 2027
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasVideo_:Z

    goto :goto_b

    .line 2022
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasBanner_:Z
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 2042
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2043
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2040
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 2045
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2047
    throw p1

    .line 2045
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1978
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1985
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2084
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 1978
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3100()Z
    .registers 1

    .line 1978
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3302(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;Z)Z
    .registers 2

    .line 1978
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasBanner_:Z

    return p1
.end method

.method public static synthetic access$3402(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;Z)Z
    .registers 2

    .line 1978
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasVideo_:Z

    return p1
.end method

.method public static synthetic access$3500(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 1978
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3600()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 1978
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 1

    .line 2489
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2051
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Interstitial_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 1

    .line 2235
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2238
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2208
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2209
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2215
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2216
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2176
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2182
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2222
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2228
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2229
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2196
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2197
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2203
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2204
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2165
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2171
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2186
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2192
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
            ">;"
        }
    .end annotation

    .line 2504
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2131
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    if-nez v1, :cond_d

    .line 2132
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2134
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    .line 2136
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasBanner()Z

    move-result v1

    .line 2137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasBanner()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 2138
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasVideo()Z

    move-result v1

    .line 2139
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasVideo()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 2140
    :cond_26
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v3

    :cond_31
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2

    .line 2514
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    return-object v0
.end method

.method public getHasBanner()Z
    .registers 2

    .line 2070
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasBanner_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 2081
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasVideo_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
            ">;"
        }
    .end annotation

    .line 2509
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2109
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2113
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasBanner_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 2115
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2117
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasVideo_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 2119
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2121
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2122
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2000
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 2146
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2150
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2153
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasBanner()Z

    move-result v0

    .line 2152
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2156
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasVideo()Z

    move-result v0

    .line 2155
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 2157
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2158
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2057
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Interstitial_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2058
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2087
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2091
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1978
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2233
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 4

    .line 2249
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 1994
    new-instance p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 3

    .line 2242
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2243
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

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

    .line 2098
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasBanner_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2099
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2101
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->hasVideo_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2102
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2104
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Interstitial.AnonymousClass1 (io.bidmachine.protobuf.sdk.AdFormat$Interstitial$1)
.class Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2493
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2499
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2493
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Interstitial.Builder (io.bidmachine.protobuf.sdk.AdFormat$Interstitial$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;"
    }
.end annotation


# instance fields
.field private hasBanner_:Z

.field private hasVideo_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2273
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2274
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2279
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2280
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 2255
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 2

    .line 2255
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2261
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Interstitial_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2284
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->access$3100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 3

    .line 2356
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3

    .line 2310
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    .line 2311
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2312
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 3

    .line 2319
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    .line 2320
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasBanner_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->access$3302(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;Z)Z

    .line 2321
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasVideo_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->access$3402(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;Z)Z

    .line 2322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2289
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 2290
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasBanner_:Z

    .line 2292
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasVideo_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2339
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public clearHasBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2431
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasBanner_:Z

    .line 2432
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHasVideo()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2462
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasVideo_:Z

    .line 2463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2344
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2328
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    .registers 2

    .line 2305
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2300
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Interstitial_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHasBanner()Z
    .registers 2

    .line 2412
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasBanner_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 2443
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasVideo_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2267
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Interstitial_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2268
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

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

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

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

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

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

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

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2393
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->access$3600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2399
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2395
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2396
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

    .line 2399
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2401
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 3

    .line 2360
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    if-eqz v0, :cond_b

    .line 2361
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1

    .line 2363
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 3

    .line 2369
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2370
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasBanner()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2371
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasBanner()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2373
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasVideo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2374
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->getHasVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2376
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->access$3500(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    .line 2377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2475
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2255
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 3

    .line 2334
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2421
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasBanner_:Z

    .line 2422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2452
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->hasVideo_:Z

    .line 2453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2255
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2255
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 4

    .line 2350
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2255
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;
    .registers 2

    .line 2469
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.InterstitialOrBuilder (io.bidmachine.protobuf.sdk.AdFormat$InterstitialOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AdFormat$InterstitialOrBuilder;
.super Ljava/lang/Object;
.source "AdFormat.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterstitialOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getHasBanner()Z
.end method

.method public abstract getHasVideo()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Native (io.bidmachine.protobuf.sdk.AdFormat$Native)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Native;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

.field public static final HAS_ICON_FIELD_NUMBER:I = 0x1

.field public static final HAS_IMAGE_FIELD_NUMBER:I = 0x2

.field public static final HAS_VIDEO_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private hasIcon_:Z

.field private hasImage_:Z

.field private hasVideo_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1365
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    .line 1373
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 802
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 915
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 821
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>()V

    .line 823
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_5c

    .line 830
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3c

    const/16 v4, 0x10

    if-eq v2, v4, :cond_35

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2e

    .line 851
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_52

    :catch_2a
    move-exception p1

    goto :goto_43

    :catch_2c
    move-exception p1

    goto :goto_4d

    .line 847
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasVideo_:Z

    goto :goto_b

    .line 842
    :cond_35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasImage_:Z

    goto :goto_b

    .line 837
    :cond_3c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasIcon_:Z
    :try_end_42
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_42} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_42} :catch_2a
    .catchall {:try_start_d .. :try_end_42} :catchall_28

    goto :goto_b

    .line 862
    :goto_43
    :try_start_43
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 863
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 860
    :goto_4d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_28

    .line 865
    :goto_52
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 867
    throw p1

    .line 865
    :cond_5c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 793
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 800
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 915
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 793
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1200()Z
    .registers 1

    .line 793
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z
    .registers 2

    .line 793
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasIcon_:Z

    return p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z
    .registers 2

    .line 793
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasImage_:Z

    return p1
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z
    .registers 2

    .line 793
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasVideo_:Z

    return p1
.end method

.method public static synthetic access$1700(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 793
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 793
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 1

    .line 1369
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 871
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Native_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 1

    .line 1078
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1081
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1052
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1058
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1059
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1019
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1025
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1065
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1072
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1040
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1047
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1008
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1014
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1029
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1035
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
            ">;"
        }
    .end annotation

    .line 1384
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 969
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    if-nez v1, :cond_d

    .line 970
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 972
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    .line 974
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasIcon()Z

    move-result v1

    .line 975
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasIcon()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 976
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasImage()Z

    move-result v1

    .line 977
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasImage()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 978
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasVideo()Z

    move-result v1

    .line 979
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasVideo()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 980
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v3

    :cond_3c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2

    .line 1394
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    return-object v0
.end method

.method public getHasIcon()Z
    .registers 2

    .line 890
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasIcon_:Z

    return v0
.end method

.method public getHasImage()Z
    .registers 2

    .line 901
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasImage_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 912
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasVideo_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
            ">;"
        }
    .end annotation

    .line 1389
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 943
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 947
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasIcon_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 949
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 951
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasImage_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 953
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_1b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasVideo_:Z

    if-eqz v1, :cond_25

    const/4 v2, 0x3

    .line 957
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 959
    :cond_25
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 986
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 990
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 993
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasIcon()Z

    move-result v0

    .line 992
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 996
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasImage()Z

    move-result v0

    .line 995
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 999
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasVideo()Z

    move-result v0

    .line 998
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1000
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1001
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 877
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Native_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 878
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 918
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 922
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 793
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1076
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 4

    .line 1092
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 809
    new-instance p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 3

    .line 1085
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1086
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

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

    .line 929
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasIcon_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 930
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 932
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasImage_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 933
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 935
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->hasVideo_:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 936
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 938
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Native.AnonymousClass1 (io.bidmachine.protobuf.sdk.AdFormat$Native$1)
.class Lio/bidmachine/protobuf/sdk/AdFormat$Native$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Native;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1373
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1379
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1373
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Native.Builder (io.bidmachine.protobuf.sdk.AdFormat$Native$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;"
    }
.end annotation


# instance fields
.field private hasIcon_:Z

.field private hasImage_:Z

.field private hasVideo_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1117
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1122
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1123
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 1098
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 2

    .line 1098
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1104
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Native_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1127
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 3

    .line 1202
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3

    .line 1155
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1157
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 3

    .line 1164
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    .line 1165
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasIcon_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1402(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z

    .line 1166
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasImage_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1502(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z

    .line 1167
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasVideo_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1602(Lio/bidmachine/protobuf/sdk/AdFormat$Native;Z)Z

    .line 1168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1132
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1133
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasIcon_:Z

    .line 1135
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasImage_:Z

    .line 1137
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasVideo_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1185
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public clearHasIcon()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1280
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasIcon_:Z

    .line 1281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHasImage()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1311
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasImage_:Z

    .line 1312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHasVideo()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1342
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasVideo_:Z

    .line 1343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1190
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1174
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    .registers 2

    .line 1150
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1145
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Native_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHasIcon()Z
    .registers 2

    .line 1261
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasIcon_:Z

    return v0
.end method

.method public getHasImage()Z
    .registers 2

    .line 1292
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasImage_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 1323
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasVideo_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1110
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Native_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1111
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

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

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

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

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

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

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

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1242
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1248
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1244
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AdFormat$Native;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1245
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

    .line 1248
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1250
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 3

    .line 1206
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    if-eqz v0, :cond_b

    .line 1207
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1

    .line 1209
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 3

    .line 1215
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1216
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasIcon()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1217
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasIcon()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasIcon(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1219
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasImage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1220
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasImage(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1222
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasVideo()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1223
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->getHasVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1225
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->access$1700(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    .line 1226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1355
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1098
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 3

    .line 1180
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public setHasIcon(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1270
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasIcon_:Z

    .line 1271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHasImage(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1301
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasImage_:Z

    .line 1302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1332
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->hasVideo_:Z

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1098
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1098
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 4

    .line 1196
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1098
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;
    .registers 2

    .line 1349
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.NativeOrBuilder (io.bidmachine.protobuf.sdk.AdFormat$NativeOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AdFormat$NativeOrBuilder;
.super Ljava/lang/Object;
.source "AdFormat.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getHasIcon()Z
.end method

.method public abstract getHasImage()Z
.end method

.method public abstract getHasVideo()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Rewarded (io.bidmachine.protobuf.sdk.AdFormat$Rewarded)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rewarded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

.field public static final HAS_BANNER_FIELD_NUMBER:I = 0x1

.field public static final HAS_VIDEO_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private hasBanner_:Z

.field private hasVideo_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1925
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    .line 1933
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1427
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1524
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1446
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>()V

    .line 1448
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 1455
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 1471
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_47

    :catch_26
    move-exception p1

    goto :goto_38

    :catch_28
    move-exception p1

    goto :goto_42

    .line 1467
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasVideo_:Z

    goto :goto_b

    .line 1462
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasBanner_:Z
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 1482
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1483
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1480
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 1485
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 1487
    throw p1

    .line 1485
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1418
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1425
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1524
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 1418
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2200()Z
    .registers 1

    .line 1418
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2402(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;Z)Z
    .registers 2

    .line 1418
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasBanner_:Z

    return p1
.end method

.method public static synthetic access$2502(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;Z)Z
    .registers 2

    .line 1418
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasVideo_:Z

    return p1
.end method

.method public static synthetic access$2600(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 1418
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 1418
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 1

    .line 1929
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1491
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Rewarded_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 1

    .line 1675
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1678
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1648
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1649
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1656
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1616
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1622
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1661
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1662
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1668
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1669
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1636
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1637
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1643
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1644
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1605
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1611
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1626
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1632
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
            ">;"
        }
    .end annotation

    .line 1944
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1571
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    if-nez v1, :cond_d

    .line 1572
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1574
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    .line 1576
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasBanner()Z

    move-result v1

    .line 1577
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasBanner()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 1578
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasVideo()Z

    move-result v1

    .line 1579
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasVideo()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 1580
    :cond_26
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v3

    :cond_31
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2

    .line 1954
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    return-object v0
.end method

.method public getHasBanner()Z
    .registers 2

    .line 1510
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasBanner_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 1521
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasVideo_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
            ">;"
        }
    .end annotation

    .line 1949
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 1549
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1553
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasBanner_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1555
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1557
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasVideo_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 1559
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1561
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1562
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 1440
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1586
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1590
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasBanner()Z

    move-result v0

    .line 1592
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasVideo()Z

    move-result v0

    .line 1595
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1597
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1598
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1497
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Rewarded_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1498
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1527
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1531
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1673
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 4

    .line 1689
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 1434
    new-instance p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 3

    .line 1682
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1683
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

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

    .line 1538
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasBanner_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1539
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1541
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->hasVideo_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1542
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1544
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Rewarded.AnonymousClass1 (io.bidmachine.protobuf.sdk.AdFormat$Rewarded$1)
.class Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1933
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1939
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1933
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.Rewarded.Builder (io.bidmachine.protobuf.sdk.AdFormat$Rewarded$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdFormat.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;"
    }
.end annotation


# instance fields
.field private hasBanner_:Z

.field private hasVideo_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1713
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1714
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1719
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1720
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 3

    .line 1695
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AdFormat$1;)V
    .registers 2

    .line 1695
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1701
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Rewarded_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1724
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->access$2200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 3

    .line 1796
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3

    .line 1750
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1752
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 3

    .line 1759
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AdFormat$1;)V

    .line 1760
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasBanner_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->access$2402(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;Z)Z

    .line 1761
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasVideo_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->access$2502(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;Z)Z

    .line 1762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clear()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1729
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1730
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasBanner_:Z

    .line 1732
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasVideo_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1779
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public clearHasBanner()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1871
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasBanner_:Z

    .line 1872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHasVideo()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1902
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasVideo_:Z

    .line 1903
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1784
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1768
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->clone()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    .registers 2

    .line 1745
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1740
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Rewarded_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHasBanner()Z
    .registers 2

    .line 1852
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasBanner_:Z

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 1883
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasVideo_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1707
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_AdFormat_Rewarded_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    const-class v2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1708
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

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

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

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

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

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

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

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1833
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->access$2700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1839
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1835
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1836
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

    .line 1839
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1841
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 3

    .line 1800
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    if-eqz v0, :cond_b

    .line 1801
    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1

    .line 1803
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 3

    .line 1809
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1810
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasBanner()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1811
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasBanner()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1813
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasVideo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1814
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->getHasVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1816
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->access$2600(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    .line 1817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1915
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1695
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 3

    .line 1774
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1861
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasBanner_:Z

    .line 1862
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1892
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->hasVideo_:Z

    .line 1893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1695
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1695
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 4

    .line 1790
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;
    .registers 2

    .line 1909
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.RewardedOrBuilder (io.bidmachine.protobuf.sdk.AdFormat$RewardedOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AdFormat$RewardedOrBuilder;
.super Ljava/lang/Object;
.source "AdFormat.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewardedOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getHasBanner()Z
.end method

.method public abstract getHasVideo()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AdFormat.SpecCase (io.bidmachine.protobuf.sdk.AdFormat$SpecCase)
.class public final enum Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
.super Ljava/lang/Enum;
.source "AdFormat.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

.field public static final enum BANNER:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

.field public static final enum INTERSTITIAL:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

.field public static final enum NATIVE:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

.field public static final enum REWARDED:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

.field public static final enum SPEC_NOT_SET:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 2524
    new-instance v0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->BANNER:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    .line 2525
    new-instance v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    const-string v4, "NATIVE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->NATIVE:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    .line 2526
    new-instance v3, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    const-string v4, "REWARDED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->REWARDED:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    .line 2527
    new-instance v4, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    const-string v5, "INTERSTITIAL"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->INTERSTITIAL:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    .line 2528
    new-instance v5, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    const-string v6, "SPEC_NOT_SET"

    invoke-direct {v5, v6, v7, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->SPEC_NOT_SET:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    .line 2521
    filled-new-array {v0, v1, v3, v4, v5}, [Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2531
    iput p3, p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 2548
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->INTERSTITIAL:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0

    .line 2547
    :cond_13
    sget-object p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->REWARDED:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0

    .line 2546
    :cond_16
    sget-object p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->NATIVE:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0

    .line 2545
    :cond_19
    sget-object p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->BANNER:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0

    .line 2549
    :cond_1c
    sget-object p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->SPEC_NOT_SET:Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2540
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 2

    .line 2521
    const-class v0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;
    .registers 1

    .line 2521
    sget-object v0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 2554
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AdFormat$SpecCase;->value:I

    return v0
.end method
