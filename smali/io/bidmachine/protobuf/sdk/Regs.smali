###### Class io.bidmachine.protobuf.sdk.Regs (io.bidmachine.protobuf.sdk.Regs)
.class public final Lio/bidmachine/protobuf/sdk/Regs;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/RegsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Regs$Builder;,
        Lio/bidmachine/protobuf/sdk/Regs$CMP;,
        Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;,
        Lio/bidmachine/protobuf/sdk/Regs$Pub;,
        Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;
    }
.end annotation


# static fields
.field public static final CMP_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

.field public static final MASKED_SIGNALS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSISTED_MODE_FIELD_NUMBER:I = 0x4

.field public static final PUB_FIELD_NUMBER:I = 0x1

.field public static final RESTRICTION_KINDS_FIELD_NUMBER:I = 0x3

.field private static final restrictionKinds_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

.field private maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

.field private memoizedIsInitialized:B

.field private persistedMode_:I

.field private pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

.field private restrictionKindsMemoizedSerializedSize:I

.field private restrictionKinds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5195
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 6515
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    .line 6523
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$2;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$2;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5335
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_10f

    .line 49
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_34

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_cb

    const/16 v5, 0x12

    if-eq v3, v5, :cond_aa

    const/16 v5, 0x18

    if-eq v3, v5, :cond_91

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_66

    const/16 v5, 0x20

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_3f

    .line 123
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_34
    move v1, v4

    goto :goto_c

    :catchall_36
    move-exception p1

    goto/16 :goto_fb

    :catch_39
    move-exception p1

    goto/16 :goto_ec

    :catch_3c
    move-exception p1

    goto/16 :goto_f6

    .line 111
    :cond_3f
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v3, :cond_47

    .line 112
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v6

    .line 114
    :cond_47
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v6, :cond_c

    .line 116
    invoke-virtual {v6, v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 117
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    goto :goto_c

    .line 104
    :cond_5f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 106
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    goto :goto_c

    .line 90
    :cond_66
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 91
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 92
    :goto_6e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_8c

    .line 93
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    if-nez v2, :cond_82

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    move v2, v4

    .line 98
    :cond_82
    iget-object v6, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 100
    :cond_8c
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_c

    .line 81
    :cond_91
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    if-nez v2, :cond_9f

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    move v2, v4

    .line 86
    :cond_9f
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 69
    :cond_aa
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v3, :cond_b2

    .line 70
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v6

    .line 72
    :cond_b2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v6, :cond_c

    .line 74
    invoke-virtual {v6, v3}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 75
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    goto/16 :goto_c

    .line 56
    :cond_cb
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v3, :cond_d3

    .line 57
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v6

    .line 59
    :cond_d3
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v6, :cond_c

    .line 61
    invoke-virtual {v6, v3}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 62
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;
    :try_end_ea
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_ea} :catch_3c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_ea} :catch_39
    .catchall {:try_start_e .. :try_end_ea} :catchall_36

    goto/16 :goto_c

    .line 134
    :goto_ec
    :try_start_ec
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 135
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 132
    :goto_f6
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_fb
    .catchall {:try_start_ec .. :try_end_fb} :catchall_36

    :goto_fb
    if-eqz v2, :cond_105

    .line 138
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    .line 140
    :cond_105
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 142
    throw p1

    :cond_10f
    if-eqz v2, :cond_119

    .line 138
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    .line 140
    :cond_119
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 5335
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3900()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4102(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p1
.end method

.method public static synthetic access$4202(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p1
.end method

.method public static synthetic access$4300(Lio/bidmachine/protobuf/sdk/Regs;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/sdk/Regs;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$4400(Lio/bidmachine/protobuf/sdk/Regs;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    return p0
.end method

.method public static synthetic access$4402(Lio/bidmachine/protobuf/sdk/Regs;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    return p1
.end method

.method public static synthetic access$4502(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p1
.end method

.method public static synthetic access$4600(Lio/bidmachine/protobuf/sdk/Regs;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 1

    .line 6519
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 146
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 1

    .line 5545
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 5548
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5518
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5519
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5525
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5526
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5486
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5492
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5531
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5532
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5538
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5539
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5506
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5507
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5513
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5514
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5475
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5481
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5496
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5502
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs;",
            ">;"
        }
    .end annotation

    .line 6534
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 5416
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Regs;

    if-nez v1, :cond_d

    .line 5417
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5419
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs;

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasPub()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasPub()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5422
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasPub()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v1

    .line 5424
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 5426
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasCmp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasCmp()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 5427
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasCmp()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5428
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v1

    .line 5429
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 5431
    :cond_50
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    iget-object v2, p1, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v3

    .line 5432
    :cond_5b
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    iget v2, p1, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    if-eq v1, v2, :cond_62

    return v3

    .line 5433
    :cond_62
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasMaskedSignals()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasMaskedSignals()Z

    move-result v2

    if-eq v1, v2, :cond_6d

    return v3

    .line 5434
    :cond_6d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasMaskedSignals()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 5435
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v1

    .line 5436
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    return v3

    .line 5438
    :cond_82
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    return v3

    :cond_8d
    return v0
.end method

.method public getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2

    .line 5178
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCmpOrBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;
    .registers 2

    .line 5189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2

    .line 6544
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    return-object v0
.end method

.method public getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2

    .line 5321
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaskedSignalsOrBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;
    .registers 2

    .line 5332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs;",
            ">;"
        }
    .end annotation

    .line 6539
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPersistedMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;
    .registers 2

    .line 5293
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5294
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    :cond_a
    return-object v0
.end method

.method public getPersistedModeValue()I
    .registers 2

    .line 5281
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    return v0
.end method

.method public getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2

    .line 5140
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPubOrBuilder()Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;
    .registers 2

    .line 5151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictionKinds(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 4

    .line 5240
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p1
.end method

.method public getRestrictionKindsCount()I
    .registers 2

    .line 5227
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRestrictionKindsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;"
        }
    .end annotation

    .line 5214
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    sget-object v2, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getRestrictionKindsValue(I)I
    .registers 3

    .line 5266
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRestrictionKindsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5253
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 5374
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5378
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 5380
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 5382
    :goto_16
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    .line 5384
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_24
    move v2, v1

    .line 5388
    :goto_25
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 5389
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    .line 5390
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    add-int/2addr v0, v2

    .line 5393
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getRestrictionKindsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    add-int/lit8 v0, v0, 0x1

    .line 5395
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5396
    :cond_53
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKindsMemoizedSerializedSize:I

    .line 5398
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    sget-object v2, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_67

    const/4 v1, 0x4

    .line 5399
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    .line 5400
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_67
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v1, :cond_75

    const/4 v1, 0x5

    .line 5404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_75
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5407
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCmp()Z
    .registers 2

    .line 5166
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaskedSignals()Z
    .registers 2

    .line 5309
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPub()Z
    .registers 2

    .line 5128
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5444
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5448
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 5449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasPub()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 5451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5453
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasCmp()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5455
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5457
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getRestrictionKindsCount()I

    move-result v0

    if-lez v0, :cond_4d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 5459
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4d
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 5462
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    add-int/2addr v1, v0

    .line 5463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->hasMaskedSignals()Z

    move-result v0

    if-eqz v0, :cond_6b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 5465
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6b
    mul-int/lit8 v1, v1, 0x1d

    .line 5467
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5468
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 152
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 5338
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 5342
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 5543
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4

    .line 5559
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/sdk/Regs;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Regs;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5552
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5553
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

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

    .line 5349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getSerializedSize()I

    .line 5350
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v0, :cond_f

    .line 5351
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5353
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    .line 5354
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5356
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getRestrictionKindsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    const/16 v0, 0x1a

    .line 5357
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 5358
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKindsMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_2f
    const/4 v0, 0x0

    .line 5360
    :goto_30
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 5361
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 5363
    :cond_4a
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5a

    const/4 v0, 0x4

    .line 5364
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs;->persistedMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5366
    :cond_5a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v0, :cond_66

    const/4 v0, 0x5

    .line 5367
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5369
    :cond_66
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.AnonymousClass1 (io.bidmachine.protobuf.sdk.Regs$1)
.class Lio/bidmachine/protobuf/sdk/Regs$1;
.super Ljava/lang/Object;
.source "Regs.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 2

    .line 5200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object p1

    if-nez p1, :cond_c

    .line 5201
    sget-object p1, Lio/bidmachine/protobuf/sdk/RestrictionKind;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 5197
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$1;->convert(Ljava/lang/Integer;)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.AnonymousClass2 (io.bidmachine.protobuf.sdk.Regs$2)
.class Lio/bidmachine/protobuf/sdk/Regs$2;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Regs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Regs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6523
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6529
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Regs;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6523
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$2;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.Builder (io.bidmachine.protobuf.sdk.Regs$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Regs$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/RegsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Regs$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/RegsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;",
            "Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

.field private maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;",
            "Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

.field private persistedMode_:I

.field private pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;",
            "Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

.field private restrictionKinds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5583
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 6081
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    const/4 v0, 0x0

    .line 6268
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 5584
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 5589
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6081
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    const/4 p1, 0x0

    .line 6268
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 5590
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 5565
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 2

    .line 5565
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;-><init>()V

    return-void
.end method

.method private ensureRestrictionKindsIsMutable()V
    .registers 3

    .line 6083
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 6084
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 6085
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getCmpFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;",
            "Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6069
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6070
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v1

    .line 6073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6075
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 6077
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5571
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMaskedSignalsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;",
            "Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6486
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6487
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6489
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v1

    .line 6490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6492
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6494
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPubFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;",
            "Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5914
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5915
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5917
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v1

    .line 5918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5920
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5922
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 5594
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->access$3900()Z

    return-void
.end method


# virtual methods
.method public addAllRestrictionKinds(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Regs$Builder;"
        }
    .end annotation

    .line 6172
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6173
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 6174
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 6176
    :cond_21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllRestrictionKindsValue(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Regs$Builder;"
        }
    .end annotation

    .line 6260
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6261
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6262
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 6264
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5704
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public addRestrictionKinds(Lio/bidmachine/protobuf/sdk/RestrictionKind;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6156
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6157
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRestrictionKindsValue(I)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6244
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6245
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3

    .line 5638
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    .line 5639
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 5640
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 3

    .line 5647
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Regs;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    .line 5649
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 5650
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4102(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub;

    goto :goto_19

    .line 5652
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4102(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5654
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 5655
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4202(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP;

    goto :goto_2c

    .line 5657
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4202(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 5659
    :goto_2c
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_40

    .line 5660
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 5661
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    .line 5663
    :cond_40
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4302(Lio/bidmachine/protobuf/sdk/Regs;Ljava/util/List;)Ljava/util/List;

    .line 5664
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4402(Lio/bidmachine/protobuf/sdk/Regs;I)I

    .line 5665
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_54

    .line 5666
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4502(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals;

    goto :goto_5d

    .line 5668
    :cond_54
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4502(Lio/bidmachine/protobuf/sdk/Regs;Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 5670
    :goto_5d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5599
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 5600
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5601
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    goto :goto_f

    .line 5603
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5604
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5606
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 5607
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    goto :goto_1a

    .line 5609
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 5610
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5612
    :goto_1a
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 5613
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5614
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 5616
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2e

    .line 5617
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0

    .line 5619
    :cond_2e
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 5620
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCmp()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6022
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6023
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 6024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6026
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 6027
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 5687
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public clearMaskedSignals()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6439
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6440
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6443
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6444
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 5692
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public clearPersistedMode()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6337
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 6338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPub()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5867
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5868
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5871
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5872
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearRestrictionKinds()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 6188
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 6189
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    .line 6190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 5676
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2

    .line 5948
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5949
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5951
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object v0
.end method

.method public getCmpBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 6041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6042
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getCmpFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object v0
.end method

.method public getCmpOrBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;
    .registers 2

    .line 6052
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6053
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;

    return-object v0

    .line 6055
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-nez v0, :cond_13

    .line 6056
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2

    .line 5633
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 5628
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2

    .line 6365
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6366
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6368
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object v0
.end method

.method public getMaskedSignalsBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 6458
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6459
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getMaskedSignalsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object v0
.end method

.method public getMaskedSignalsOrBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;
    .registers 2

    .line 6469
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6470
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;

    return-object v0

    .line 6472
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-nez v0, :cond_13

    .line 6473
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPersistedMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;
    .registers 2

    .line 6306
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6307
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    :cond_a
    return-object v0
.end method

.method public getPersistedModeValue()I
    .registers 2

    .line 6278
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    return v0
.end method

.method public getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2

    .line 5793
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5794
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5796
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object v0
.end method

.method public getPubBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 5886
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5887
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->getPubFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object v0
.end method

.method public getPubOrBuilder()Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;
    .registers 2

    .line 5897
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5898
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;

    return-object v0

    .line 5900
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-nez v0, :cond_13

    .line 5901
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRestrictionKinds(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 4

    .line 6121
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->access$4800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p1
.end method

.method public getRestrictionKindsCount()I
    .registers 2

    .line 6109
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRestrictionKindsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;"
        }
    .end annotation

    .line 6097
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 6098
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->access$4800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getRestrictionKindsValue(I)I
    .registers 3

    .line 6215
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRestrictionKindsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6203
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCmp()Z
    .registers 2

    .line 5937
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

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

.method public hasMaskedSignals()Z
    .registers 2

    .line 6354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

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

.method public hasPub()Z
    .registers 2

    .line 5782
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

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

    .line 5577
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5578
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

.method public mergeCmp(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6000
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6001
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v0, :cond_17

    .line 6003
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilder(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    goto :goto_19

    .line 6005
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 6007
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6009
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

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

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

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

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

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

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

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5757
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->access$4700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 5763
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 5759
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Regs;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 5760
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

    .line 5763
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5765
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5708
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v0, :cond_b

    .line 5709
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1

    .line 5711
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4

    .line 5717
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 5718
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasPub()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5719
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getPub()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergePub(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5721
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasCmp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5722
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getCmp()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeCmp(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5724
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4300(Lio/bidmachine/protobuf/sdk/Regs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 5725
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5726
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4300(Lio/bidmachine/protobuf/sdk/Regs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    .line 5727
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->bitField0_:I

    goto :goto_4c

    .line 5729
    :cond_40
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 5730
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4300(Lio/bidmachine/protobuf/sdk/Regs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5732
    :goto_4c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5734
    :cond_4f
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4400(Lio/bidmachine/protobuf/sdk/Regs;)I

    move-result v0

    if-eqz v0, :cond_5c

    .line 5735
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getPersistedModeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setPersistedModeValue(I)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5737
    :cond_5c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->hasMaskedSignals()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 5738
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs;->getMaskedSignals()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeMaskedSignals(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5740
    :cond_69
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs;->access$4600(Lio/bidmachine/protobuf/sdk/Regs;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMaskedSignals(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6417
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6418
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v0, :cond_17

    .line 6420
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilder(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    goto :goto_19

    .line 6422
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6424
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6426
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePub(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5845
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5846
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v0, :cond_17

    .line 5848
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilder(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    goto :goto_19

    .line 5850
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5852
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5854
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 6505
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public setCmp(Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5983
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5984
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 5985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5987
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCmp(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5962
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmpBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5964
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5966
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->cmp_:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 5967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5969
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5565
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5682
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public setMaskedSignals(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6400
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6401
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->build()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6404
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->build()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaskedSignals(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 6379
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignalsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6383
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->maskedSignals_:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 6384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6386
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPersistedMode(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 6320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6323
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 6324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPersistedModeValue(I)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 6291
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->persistedMode_:I

    .line 6292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPub(Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5828
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5829
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5832
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPub(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 3

    .line 5807
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5811
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->pub_:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 5812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5814
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 5565
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 5565
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4

    .line 5698
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

.method public setRestrictionKinds(ILio/bidmachine/protobuf/sdk/RestrictionKind;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4

    .line 6136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6138
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6139
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRestrictionKindsValue(II)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 4

    .line 6229
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->ensureRestrictionKindsIsMutable()V

    .line 6230
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Builder;->restrictionKinds_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5565
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 6499
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.CMP (io.bidmachine.protobuf.sdk.Regs$CMP)
.class public final Lio/bidmachine/protobuf/sdk/Regs$CMP;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CMP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    }
.end annotation


# static fields
.field public static final CCPA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

.field public static final GPP_FIELD_NUMBER:I = 0x6

.field public static final GPP_SID_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCF_V1_STRING_FIELD_NUMBER:I = 0x1

.field public static final TCF_V1_ZONE_FIELD_NUMBER:I = 0x2

.field public static final TCF_V2_STRING_FIELD_NUMBER:I = 0x3

.field public static final TCF_V2_ZONE_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private ccpa_:Lcom/explorestack/protobuf/StringValue;

.field private gppSidMemoizedSerializedSize:I

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private gpp_:Lcom/explorestack/protobuf/StringValue;

.field private memoizedIsInitialized:B

.field private tcfV1String_:Lcom/explorestack/protobuf/StringValue;

.field private tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

.field private tcfV2String_:Lcom/explorestack/protobuf/StringValue;

.field private tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5082
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 5090
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2914
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3391
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSidMemoizedSerializedSize:I

    .line 3393
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->memoizedIsInitialized:B

    .line 2915
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2934
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>()V

    .line 2936
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2940
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_16b

    .line 2944
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_12a

    const/16 v5, 0x12

    if-eq v3, v5, :cond_109

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_e8

    const/16 v5, 0x22

    if-eq v3, v5, :cond_c7

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_a6

    const/16 v5, 0x32

    if-eq v3, v5, :cond_85

    const/16 v5, 0x38

    if-eq v3, v5, :cond_72

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_47

    .line 3049
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_3c
    move v1, v4

    goto :goto_c

    :catchall_3e
    move-exception p1

    goto/16 :goto_15a

    :catch_41
    move-exception p1

    goto/16 :goto_14b

    :catch_44
    move-exception p1

    goto/16 :goto_155

    .line 3036
    :cond_47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 3037
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    if-nez v2, :cond_5e

    .line 3038
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5e

    .line 3039
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 3042
    :cond_5e
    :goto_5e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_6e

    .line 3043
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_5e

    .line 3045
    :cond_6e
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_c

    :cond_72
    if-nez v2, :cond_7b

    .line 3029
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 3032
    :cond_7b
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_c

    .line 3016
    :cond_85
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_8d

    .line 3017
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 3019
    :cond_8d
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 3021
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 3022
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 3003
    :cond_a6
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_ae

    .line 3004
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 3006
    :cond_ae
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 3008
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 3009
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 2990
    :cond_c7
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_cf

    .line 2991
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 2993
    :cond_cf
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 2995
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 2996
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto/16 :goto_c

    .line 2977
    :cond_e8
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_f0

    .line 2978
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 2980
    :cond_f0
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 2982
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 2983
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 2964
    :cond_109
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_111

    .line 2965
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 2967
    :cond_111
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 2969
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 2970
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto/16 :goto_c

    .line 2951
    :cond_12a
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_132

    .line 2952
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 2954
    :cond_132
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 2956
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 2957
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;
    :try_end_149
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_149} :catch_44
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_149} :catch_41
    .catchall {:try_start_e .. :try_end_149} :catchall_3e

    goto/16 :goto_c

    .line 3060
    :goto_14b
    :try_start_14b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3061
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3058
    :goto_155
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_15a
    .catchall {:try_start_14b .. :try_end_15a} :catchall_3e

    :goto_15a
    if-eqz v2, :cond_161

    .line 3064
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3066
    :cond_161
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 3068
    throw p1

    :cond_16b
    if-eqz v2, :cond_172

    .line 3064
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3066
    :cond_172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2905
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2912
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3391
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSidMemoizedSerializedSize:I

    .line 3393
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 2905
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2100()Z
    .registers 1

    .line 2905
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2200()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 2905
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$2402(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2502(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$2602(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$2802(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2902(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3000(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 2905
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$3002(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 2

    .line 2905
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$3100(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2905
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2905
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$3300()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 2905
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$3400(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 2905
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3500()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 2905
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 1

    .line 5086
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3072
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 1

    .line 3644
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 3647
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3617
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3618
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3624
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3625
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3585
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3591
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3630
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3631
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3637
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3638
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3605
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3606
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3612
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3613
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3574
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3580
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3595
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3601
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
            ">;"
        }
    .end annotation

    .line 5101
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3490
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-nez v1, :cond_d

    .line 3491
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3493
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    .line 3495
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1String()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1String()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 3496
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1String()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3497
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3498
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 3500
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1Zone()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1Zone()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 3501
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1Zone()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 3502
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 3503
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 3505
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2String()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2String()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 3506
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2String()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3507
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3508
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 3510
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2Zone()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2Zone()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 3511
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2Zone()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 3512
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 3513
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 3515
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasCcpa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasCcpa()Z

    move-result v2

    if-eq v1, v2, :cond_9b

    return v3

    .line 3516
    :cond_9b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasCcpa()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 3517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3518
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v3

    .line 3520
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasGpp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasGpp()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    .line 3521
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasGpp()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 3522
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3523
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v3

    .line 3525
    :cond_d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidList()Ljava/util/List;

    move-result-object v1

    .line 3526
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    return v3

    .line 3527
    :cond_df
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ea

    return v3

    :cond_ea
    return v0
.end method

.method public getCcpa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3287
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3300
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2

    .line 5111
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    return-object v0
.end method

.method public getGpp()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3331
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 3389
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 3375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

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

    .line 3362
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
            ">;"
        }
    .end annotation

    .line 5106
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 3438
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3442
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 3444
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 3446
    :goto_16
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    .line 3448
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3450
    :cond_24
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_32

    const/4 v2, 0x3

    .line 3452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3454
    :cond_32
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    .line 3456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3458
    :cond_40
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4e

    const/4 v2, 0x5

    .line 3460
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3462
    :cond_4e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5c

    const/4 v2, 0x6

    .line 3464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5c
    move v2, v1

    .line 3468
    :goto_5d
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_73

    .line 3469
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3470
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_73
    add-int/2addr v0, v2

    .line 3473
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    add-int/lit8 v0, v0, 0x1

    .line 3476
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 3478
    :cond_85
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSidMemoizedSerializedSize:I

    .line 3480
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3481
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTcfV1String()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3111
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTcfV1StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3124
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 3155
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTcfV1ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 3168
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getTcfV2String()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3199
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTcfV2StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3212
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 3243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTcfV2ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 3256
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2928
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCcpa()Z
    .registers 2

    .line 3273
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGpp()Z
    .registers 2

    .line 3317
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTcfV1String()Z
    .registers 2

    .line 3097
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTcfV1Zone()Z
    .registers 2

    .line 3141
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTcfV2String()Z
    .registers 2

    .line 3185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTcfV2Zone()Z
    .registers 2

    .line 3229
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3533
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3537
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3538
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1String()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3540
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3542
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1Zone()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3544
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3546
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2String()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3548
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3550
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2Zone()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 3552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3554
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasCcpa()Z

    move-result v0

    if-eqz v0, :cond_79

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 3556
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3558
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasGpp()Z

    move-result v0

    if-eqz v0, :cond_8e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 3560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3562
    :cond_8e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidCount()I

    move-result v0

    if-lez v0, :cond_a3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 3564
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_a3
    mul-int/lit8 v1, v1, 0x1d

    .line 3566
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3567
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3078
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3079
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3396
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 3400
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2905
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 3642
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 4

    .line 3658
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2922
    new-instance p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3651
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$CMP;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3652
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

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

    .line 3407
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getSerializedSize()I

    .line 3408
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_f

    .line 3409
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3411
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    .line 3412
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3414
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    .line 3415
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3417
    :cond_27
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_33

    const/4 v0, 0x4

    .line 3418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3420
    :cond_33
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    .line 3421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3423
    :cond_3f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_4b

    const/4 v0, 0x6

    .line 3424
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3426
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    const/16 v0, 0x3a

    .line 3427
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3428
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSidMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_5f
    const/4 v0, 0x0

    .line 3430
    :goto_60
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 3431
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 3433
    :cond_74
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.CMP.AnonymousClass1 (io.bidmachine.protobuf.sdk.Regs$CMP$1)
.class Lio/bidmachine/protobuf/sdk/Regs$CMP$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Regs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs$CMP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Regs$CMP;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5090
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5096
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5090
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.CMP.Builder (io.bidmachine.protobuf.sdk.Regs$CMP$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs$CMP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private ccpa_:Lcom/explorestack/protobuf/StringValue;

.field private gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private gpp_:Lcom/explorestack/protobuf/StringValue;

.field private tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private tcfV1String_:Lcom/explorestack/protobuf/StringValue;

.field private tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

.field private tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private tcfV2String_:Lcom/explorestack/protobuf/StringValue;

.field private tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3682
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4943
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3300()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3683
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3688
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 4943
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3300()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3689
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 3664
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 2

    .line 3664
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;-><init>()V

    return-void
.end method

.method private ensureGppSidIsMutable()V
    .registers 2

    .line 4945
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_14

    .line 4946
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3400(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 4947
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private getCcpaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 4759
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4760
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4762
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4763
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4765
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4767
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3670
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getGppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 4932
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4933
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4935
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4938
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4940
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTcfV1StringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 4067
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4068
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4070
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4071
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4073
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 4075
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTcfV1ZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4240
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4241
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4243
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 4244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4246
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4248
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTcfV2StringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 4413
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4414
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4419
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4421
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTcfV2ZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4586
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4587
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4589
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 4590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4592
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4594
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3693
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2100()Z

    return-void
.end method


# virtual methods
.method public addAllGppSid(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;"
        }
    .end annotation

    .line 5041
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ensureGppSidIsMutable()V

    .line 5042
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addGppSid(I)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 5023
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ensureGppSidIsMutable()V

    .line 5024
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 5025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3833
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3

    .line 3753
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    .line 3754
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3755
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 3

    .line 3762
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    .line 3764
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 3765
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2402(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 3767
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2402(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3769
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 3770
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2502(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_2c

    .line 3772
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2502(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 3774
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 3775
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2602(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_3f

    .line 3777
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2602(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3779
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 3780
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2702(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_52

    .line 3782
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2702(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 3784
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 3785
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2802(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_65

    .line 3787
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2802(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3789
    :goto_65
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6f

    .line 3790
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2902(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_78

    .line 3792
    :cond_6f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2902(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3794
    :goto_78
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_89

    .line 3795
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3796
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    .line 3798
    :cond_89
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3002(Lio/bidmachine/protobuf/sdk/Regs$CMP;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 3799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3698
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3699
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3700
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 3702
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 3703
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3705
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 3706
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_1a

    .line 3708
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 3709
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3711
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 3712
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_25

    .line 3714
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 3715
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3717
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 3718
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_30

    .line 3720
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 3721
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3723
    :goto_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_37

    .line 3724
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_3b

    .line 3726
    :cond_37
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 3727
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3729
    :goto_3b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_42

    .line 3730
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_46

    .line 3732
    :cond_42
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 3733
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3735
    :goto_46
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$2200()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3736
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCcpa()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4706
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4707
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4710
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4711
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 3816
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public clearGpp()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4879
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4880
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4883
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4884
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGppSid()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 5058
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3500()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 5059
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    .line 5060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 3821
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public clearTcfV1String()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4014
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4015
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 4016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4018
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 4019
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTcfV1Zone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4187
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4188
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4191
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4192
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTcfV2String()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4360
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4361
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4364
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4365
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTcfV2Zone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4533
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4534
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4537
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4538
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 3805
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcpa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4624
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4625
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4627
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getCcpaBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4728
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getCcpaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4740
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4741
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4743
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4744
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$CMP;
    .registers 2

    .line 3748
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3743
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGpp()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4797
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4800
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getGppBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4900
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4901
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getGppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4913
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4914
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4916
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4917
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 4990
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 4976
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

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

    .line 4962
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 4963
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getTcfV1String()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3932
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3933
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3935
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTcfV1StringBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4036
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV1StringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTcfV1StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4048
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4049
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4051
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4052
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 4105
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4106
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4108
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getTcfV1ZoneBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 4208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4209
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV1ZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getTcfV1ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 4221
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 4224
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 4225
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTcfV2String()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4278
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4279
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4281
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTcfV2StringBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4382
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV2StringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTcfV2StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4394
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4395
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4397
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4398
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 4451
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4452
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4454
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getTcfV2ZoneBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 4554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4555
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->getTcfV2ZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getTcfV2ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 4567
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4568
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 4570
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 4571
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasCcpa()Z
    .registers 2

    .line 4611
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasGpp()Z
    .registers 2

    .line 4784
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTcfV1String()Z
    .registers 2

    .line 3919
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTcfV1Zone()Z
    .registers 2

    .line 4092
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasTcfV2String()Z
    .registers 2

    .line 4265
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTcfV2Zone()Z
    .registers 2

    .line 4438
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

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

    .line 3676
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3677
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

.method public mergeCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4682
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4683
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4685
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4687
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4689
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4691
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

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

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

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

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

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

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

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3892
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 3898
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 3894
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Regs$CMP;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 3895
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

    .line 3898
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3900
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3837
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    if-eqz v0, :cond_b

    .line 3838
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1

    .line 3840
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 4

    .line 3846
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$CMP;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3847
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1String()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3848
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeTcfV1String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3850
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV1Zone()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3851
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeTcfV1Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3853
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2String()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3854
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2String()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeTcfV2String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3856
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasTcfV2Zone()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3857
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeTcfV2Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3859
    :cond_3b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasCcpa()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3860
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3862
    :cond_48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->hasGpp()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3863
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3865
    :cond_55
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3000(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 3866
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3867
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3000(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3868
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->bitField0_:I

    goto :goto_80

    .line 3870
    :cond_74
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ensureGppSidIsMutable()V

    .line 3871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3000(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3873
    :goto_80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3875
    :cond_83
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->access$3100(Lio/bidmachine/protobuf/sdk/Regs$CMP;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 3876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4855
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4856
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4858
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4860
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4862
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4864
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTcfV1String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3990
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3991
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 3993
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 3995
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 3997
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3999
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTcfV1Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4163
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4164
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 4166
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 4168
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4170
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4172
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTcfV2String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4336
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4337
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4339
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4341
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4343
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4345
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTcfV2Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4509
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4510
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 4512
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 4514
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4516
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4518
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 5072
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public setCcpa(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4663
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4664
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4667
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4640
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4644
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 4645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4647
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3664
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3811
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public setGpp(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4836
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4837
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4840
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4813
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4817
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 4818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4820
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGppSid(II)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 4

    .line 5006
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->ensureGppSidIsMutable()V

    .line 5007
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 5008
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3664
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3664
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 4

    .line 3827
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

.method public setTcfV1String(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3971
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3972
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 3973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3975
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV1String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 3948
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3952
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1String_:Lcom/explorestack/protobuf/StringValue;

    .line 3953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3955
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV1Zone(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4144
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4145
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4148
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV1Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4121
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4125
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV1Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4128
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV2String(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4317
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4318
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4321
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV2String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4294
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2StringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4298
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2String_:Lcom/explorestack/protobuf/StringValue;

    .line 4299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4301
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV2Zone(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4490
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4491
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4494
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTcfV2Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 3

    .line 4467
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2ZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4471
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->tcfV2Zone_:Lcom/explorestack/protobuf/BoolValue;

    .line 4472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4474
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 2

    .line 5066
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.CMPOrBuilder (io.bidmachine.protobuf.sdk.Regs$CMPOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Regs$CMPOrBuilder;
.super Ljava/lang/Object;
.source "Regs.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CMPOrBuilder"
.end annotation


# virtual methods
.method public abstract getCcpa()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getGpp()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getGppSid(I)I
.end method

.method public abstract getGppSidCount()I
.end method

.method public abstract getGppSidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTcfV1String()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getTcfV1StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getTcfV1Zone()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getTcfV1ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getTcfV2String()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getTcfV2StringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getTcfV2Zone()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getTcfV2ZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract hasCcpa()Z
.end method

.method public abstract hasGpp()Z
.end method

.method public abstract hasTcfV1String()Z
.end method

.method public abstract hasTcfV1Zone()Z
.end method

.method public abstract hasTcfV2String()Z
.end method

.method public abstract hasTcfV2Zone()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.Pub (io.bidmachine.protobuf.sdk.Regs$Pub)
.class public final Lio/bidmachine/protobuf/sdk/Regs$Pub;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    }
.end annotation


# static fields
.field public static final CCPA_FIELD_NUMBER:I = 0x5

.field public static final CONSENT_STRING_FIELD_NUMBER:I = 0x4

.field public static final COPPA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

.field public static final GDPR_CONSENT_FIELD_NUMBER:I = 0x3

.field public static final GDPR_ZONE_FIELD_NUMBER:I = 0x2

.field public static final GPP_FIELD_NUMBER:I = 0x6

.field public static final GPP_SID_FIELD_NUMBER:I = 0x7

.field public static final NON_PERSONALIZED_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private ccpa_:Lcom/explorestack/protobuf/StringValue;

.field private consentString_:Lcom/explorestack/protobuf/StringValue;

.field private coppa_:Lcom/explorestack/protobuf/BoolValue;

.field private gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

.field private gdprZone_:Lcom/explorestack/protobuf/BoolValue;

.field private gppSidMemoizedSerializedSize:I

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private gpp_:Lcom/explorestack/protobuf/StringValue;

.field private memoizedIsInitialized:B

.field private nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2631
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 2639
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 391
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 839
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSidMemoizedSerializedSize:I

    .line 879
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->memoizedIsInitialized:B

    .line 392
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>()V

    .line 413
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_191

    .line 421
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_40

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_150

    const/16 v5, 0x12

    if-eq v3, v5, :cond_12f

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_10e

    const/16 v5, 0x22

    if-eq v3, v5, :cond_ed

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_cc

    const/16 v5, 0x32

    if-eq v3, v5, :cond_ab

    const/16 v5, 0x38

    if-eq v3, v5, :cond_97

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_6b

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    .line 539
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_40
    move v1, v4

    goto :goto_c

    :catchall_42
    move-exception p1

    goto/16 :goto_180

    :catch_45
    move-exception p1

    goto/16 :goto_171

    :catch_48
    move-exception p1

    goto/16 :goto_17b

    .line 527
    :cond_4b
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_53

    .line 528
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 530
    :cond_53
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 532
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 533
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_c

    .line 513
    :cond_6b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 514
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    if-nez v2, :cond_82

    .line 515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_82

    .line 516
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 519
    :cond_82
    :goto_82
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_92

    .line 520
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_82

    .line 522
    :cond_92
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_c

    :cond_97
    if-nez v2, :cond_a0

    .line 506
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 509
    :cond_a0
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_c

    .line 493
    :cond_ab
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_b3

    .line 494
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 496
    :cond_b3
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 498
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 499
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 480
    :cond_cc
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_d4

    .line 481
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 483
    :cond_d4
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 485
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 486
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 467
    :cond_ed
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_f5

    .line 468
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 470
    :cond_f5
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 472
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 473
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 454
    :cond_10e
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_116

    .line 455
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 457
    :cond_116
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 459
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 460
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    goto/16 :goto_c

    .line 441
    :cond_12f
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_137

    .line 442
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 444
    :cond_137
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 446
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 447
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    goto/16 :goto_c

    .line 428
    :cond_150
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_158

    .line 429
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 431
    :cond_158
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 433
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 434
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;
    :try_end_16f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_16f} :catch_48
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16f} :catch_45
    .catchall {:try_start_e .. :try_end_16f} :catchall_42

    goto/16 :goto_c

    .line 550
    :goto_171
    :try_start_171
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 551
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 548
    :goto_17b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_180
    .catchall {:try_start_171 .. :try_end_180} :catchall_42

    :goto_180
    if-eqz v2, :cond_187

    .line 554
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 556
    :cond_187
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 558
    throw p1

    :cond_191
    if-eqz v2, :cond_198

    .line 554
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 556
    :cond_198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 389
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 839
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSidMemoizedSerializedSize:I

    .line 879
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 382
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 382
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1400()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 382
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 382
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 382
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 382
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 382
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$300()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 382
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 382
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 1

    .line 2635
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 562
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 1

    .line 1146
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 1149
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1120
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1127
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1087
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1093
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1133
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1140
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1108
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1115
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1076
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1097
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1103
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
            ">;"
        }
    .end annotation

    .line 2650
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 983
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-nez v1, :cond_d

    .line 984
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 986
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    .line 988
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCoppa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCoppa()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 989
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCoppa()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 990
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 991
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 993
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprZone()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprZone()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 994
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprZone()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 995
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 996
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 998
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprConsent()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprConsent()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 999
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprConsent()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1000
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1001
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 1003
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasConsentString()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasConsentString()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 1004
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasConsentString()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1005
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1006
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 1008
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCcpa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCcpa()Z

    move-result v2

    if-eq v1, v2, :cond_9b

    return v3

    .line 1009
    :cond_9b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCcpa()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1010
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1011
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v3

    .line 1013
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGpp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGpp()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    .line 1014
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGpp()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1015
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1016
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v3

    .line 1018
    :cond_d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidList()Ljava/util/List;

    move-result-object v1

    .line 1019
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    return v3

    .line 1020
    :cond_df
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasNonPersonalized()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasNonPersonalized()Z

    move-result v2

    if-eq v1, v2, :cond_ea

    return v3

    .line 1021
    :cond_ea
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasNonPersonalized()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 1022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1023
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ff

    return v3

    .line 1025
    :cond_ff
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10a

    return v3

    :cond_10a
    return v0
.end method

.method public getCcpa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 749
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getConsentString()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 711
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getConsentStringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 722
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCoppa()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 597
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCoppaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 608
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2

    .line 2660
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    return-object v0
.end method

.method public getGdprConsent()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGdprConsentOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 684
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getGdprZone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 635
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGdprZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getGpp()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 787
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 798
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 825
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

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

    .line 814
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 865
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getNonPersonalizedOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 876
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
            ">;"
        }
    .end annotation

    .line 2655
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 927
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 931
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 933
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 935
    :goto_16
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    .line 937
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 939
    :cond_24
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_32

    const/4 v2, 0x3

    .line 941
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 943
    :cond_32
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    .line 945
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 947
    :cond_40
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4e

    const/4 v2, 0x5

    .line 949
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 951
    :cond_4e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5c

    const/4 v2, 0x6

    .line 953
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5c
    move v2, v1

    .line 957
    :goto_5d
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_73

    .line 958
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 959
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_73
    add-int/2addr v0, v2

    .line 962
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    add-int/lit8 v0, v0, 0x1

    .line 965
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    :cond_85
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSidMemoizedSerializedSize:I

    .line 969
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v1, :cond_96

    const/16 v1, 0x8

    .line 971
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    :cond_96
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 974
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCcpa()Z
    .registers 2

    .line 737
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasConsentString()Z
    .registers 2

    .line 699
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCoppa()Z
    .registers 2

    .line 585
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGdprConsent()Z
    .registers 2

    .line 661
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGdprZone()Z
    .registers 2

    .line 623
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGpp()Z
    .registers 2

    .line 775
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasNonPersonalized()Z
    .registers 2

    .line 853
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1031
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1035
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1036
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCoppa()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1038
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1040
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprZone()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1042
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1044
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprConsent()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1046
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1048
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasConsentString()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1050
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1052
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCcpa()Z

    move-result v0

    if-eqz v0, :cond_79

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1054
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1056
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGpp()Z

    move-result v0

    if-eqz v0, :cond_8e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1058
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1060
    :cond_8e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidCount()I

    move-result v0

    if-lez v0, :cond_a3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1062
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1064
    :cond_a3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasNonPersonalized()Z

    move-result v0

    if-eqz v0, :cond_b8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1066
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_b8
    mul-int/lit8 v1, v1, 0x1d

    .line 1068
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1069
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 568
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 882
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 886
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 1144
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 4

    .line 1160
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 399
    new-instance p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1153
    sget-object v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1154
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

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

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getSerializedSize()I

    .line 894
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_f

    .line 895
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 897
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    .line 898
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 900
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    .line 901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 903
    :cond_27
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_33

    const/4 v0, 0x4

    .line 904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 906
    :cond_33
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    .line 907
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 909
    :cond_3f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_4b

    const/4 v0, 0x6

    .line 910
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 912
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGppSidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    const/16 v0, 0x3a

    .line 913
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 914
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSidMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_5f
    const/4 v0, 0x0

    .line 916
    :goto_60
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 917
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 919
    :cond_74
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_81

    const/16 v0, 0x8

    .line 920
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 922
    :cond_81
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.Pub.AnonymousClass1 (io.bidmachine.protobuf.sdk.Regs$Pub$1)
.class Lio/bidmachine/protobuf/sdk/Regs$Pub$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Regs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs$Pub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Regs$Pub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2639
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2645
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2639
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.Pub.Builder (io.bidmachine.protobuf.sdk.Regs$Pub$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Regs.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs$Pub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private ccpa_:Lcom/explorestack/protobuf/StringValue;

.field private consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private consentString_:Lcom/explorestack/protobuf/StringValue;

.field private coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private coppa_:Lcom/explorestack/protobuf/BoolValue;

.field private gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

.field private gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gdprZone_:Lcom/explorestack/protobuf/BoolValue;

.field private gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

.field private gpp_:Lcom/explorestack/protobuf/StringValue;

.field private nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1184
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2351
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1500()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1185
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1190
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2351
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1500()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1191
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 3

    .line 1166
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Regs$1;)V
    .registers 2

    .line 1166
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;-><init>()V

    return-void
.end method

.method private ensureGppSidIsMutable()V
    .registers 2

    .line 2353
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_14

    .line 2354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1600(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2355
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private getCcpaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2186
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2188
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2191
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2193
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getConsentStringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2030
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2031
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2033
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2036
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 2038
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCoppaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1565
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1566
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1571
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1573
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1172
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getGdprConsentFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1876
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1878
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1881
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1883
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGdprZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1721
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1723
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1726
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1728
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2340
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2341
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2346
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2348
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getNonPersonalizedFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2602
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2603
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2605
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 2606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2608
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2610
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1195
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllGppSid(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;"
        }
    .end annotation

    .line 2437
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ensureGppSidIsMutable()V

    .line 2438
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addGppSid(I)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2421
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ensureGppSidIsMutable()V

    .line 2422
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 2423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1346
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3

    .line 1261
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    .line 1262
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1263
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 3

    .line 1270
    new-instance v0, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Regs$1;)V

    .line 1272
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 1273
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$502(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1275
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$502(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 1277
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 1278
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$602(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_2c

    .line 1280
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$602(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 1282
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 1283
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$702(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_3f

    .line 1285
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$702(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 1287
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 1288
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$802(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_52

    .line 1290
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$802(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 1292
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 1293
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$902(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_65

    .line 1295
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$902(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 1297
    :goto_65
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6f

    .line 1298
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1002(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_78

    .line 1300
    :cond_6f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1002(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 1302
    :goto_78
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_89

    .line 1303
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 1304
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    .line 1306
    :cond_89
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1102(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 1307
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_98

    .line 1308
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1202(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_a1

    .line 1310
    :cond_98
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1202(Lio/bidmachine/protobuf/sdk/Regs$Pub;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 1312
    :goto_a1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clear()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1200
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1201
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1202
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_f

    .line 1204
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1205
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1207
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 1208
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_1a

    .line 1210
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1211
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1213
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 1214
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_25

    .line 1216
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1217
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1219
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 1220
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_30

    .line 1222
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1223
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1225
    :goto_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_37

    .line 1226
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_3b

    .line 1228
    :cond_37
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 1229
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1231
    :goto_3b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_42

    .line 1232
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_46

    .line 1234
    :cond_42
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 1235
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1237
    :goto_46
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$300()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1238
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    .line 1239
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_59

    .line 1240
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    return-object p0

    .line 1242
    :cond_59
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 1243
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCcpa()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2138
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2139
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2142
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2143
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearConsentString()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1983
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1984
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1987
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1988
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCoppa()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1518
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1519
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1522
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1523
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 1329
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public clearGdprConsent()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1828
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1829
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1832
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1833
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGdprZone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1674
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1677
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1678
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGpp()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2293
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2294
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2297
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2298
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGppSid()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 2452
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1700()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2453
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    .line 2454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNonPersonalized()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2555
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2556
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2559
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2560
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 1334
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 1318
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->clone()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcpa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2064
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2065
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2067
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getCcpaBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 2157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2158
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getCcpaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2168
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2169
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 2171
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 2172
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getConsentString()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1909
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1910
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1912
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getConsentStringBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 2002
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2003
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getConsentStringFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getConsentStringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2013
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2014
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 2016
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 2017
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCoppa()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1444
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1445
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1447
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getCoppaBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1538
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getCoppaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getCoppaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1548
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1549
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1551
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1552
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Regs$Pub;
    .registers 2

    .line 1256
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1251
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGdprConsent()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1755
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1757
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getGdprConsentBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1848
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGdprConsentFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getGdprConsentOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1858
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1859
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1861
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1862
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGdprZone()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1599
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1600
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1602
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getGdprZoneBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1693
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGdprZoneFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getGdprZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1703
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1704
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1706
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1707
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGpp()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2219
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2220
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2222
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getGppBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 2312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2313
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getGppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2323
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2324
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 2326
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 2327
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGppSid(I)I
    .registers 3

    .line 2392
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getGppSidCount()I
    .registers 2

    .line 2380
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

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

    .line 2368
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 2369
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 2481
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2482
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2484
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getNonPersonalizedBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 2574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2575
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->getNonPersonalizedFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getNonPersonalizedOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 2585
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2586
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 2588
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 2589
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasCcpa()Z
    .registers 2

    .line 2053
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasConsentString()Z
    .registers 2

    .line 1898
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasCoppa()Z
    .registers 2

    .line 1433
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasGdprConsent()Z
    .registers 2

    .line 1743
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasGdprZone()Z
    .registers 2

    .line 1588
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasGpp()Z
    .registers 2

    .line 2208
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasNonPersonalized()Z
    .registers 2

    .line 2470
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

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

    .line 1178
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    const-class v2, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1179
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

.method public mergeCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2116
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2117
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 2119
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 2121
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2123
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2125
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeConsentString(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1961
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1962
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 1964
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 1966
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1968
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1970
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCoppa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1496
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1497
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1499
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1501
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1503
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1505
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

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

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

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

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

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

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

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1408
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1414
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1410
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Regs$Pub;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1411
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

    .line 1414
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1416
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1350
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    if-eqz v0, :cond_b

    .line 1351
    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1

    .line 1353
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 4

    .line 1359
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs$Pub;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1360
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCoppa()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1361
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCoppa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeCoppa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1363
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprZone()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1364
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprZone()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeGdprZone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1366
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGdprConsent()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1367
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGdprConsent()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeGdprConsent(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1369
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasConsentString()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1370
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getConsentString()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeConsentString(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1372
    :cond_3b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasCcpa()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1373
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getCcpa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1375
    :cond_48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasGpp()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1376
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getGpp()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1378
    :cond_55
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1100(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1379
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1380
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1100(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1381
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->bitField0_:I

    goto :goto_80

    .line 1383
    :cond_74
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ensureGppSidIsMutable()V

    .line 1384
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1100(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1386
    :goto_80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1388
    :cond_83
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->hasNonPersonalized()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1389
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeNonPersonalized(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1391
    :cond_90
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->access$1300(Lio/bidmachine/protobuf/sdk/Regs$Pub;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 1392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGdprConsent(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1806
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1807
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1809
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1811
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1813
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1815
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeGdprZone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1651
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1652
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1654
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1656
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1658
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1660
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2271
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2272
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 2274
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 2276
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2278
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2280
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeNonPersonalized(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2533
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2534
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 2536
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 2538
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2540
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2542
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 2621
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public setCcpa(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2099
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2100
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2103
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2078
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2080
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2082
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ccpa_:Lcom/explorestack/protobuf/StringValue;

    .line 2083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2085
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setConsentString(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1944
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1945
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1948
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setConsentString(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1923
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentStringBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1925
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1927
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->consentString_:Lcom/explorestack/protobuf/StringValue;

    .line 1928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1930
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCoppa(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1479
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1480
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1483
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCoppa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1458
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->coppa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1465
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1166
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1324
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public setGdprConsent(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1789
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1790
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1793
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGdprConsent(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1768
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1772
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprConsent_:Lcom/explorestack/protobuf/BoolValue;

    .line 1773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1775
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGdprZone(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1634
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1635
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1638
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGdprZone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 1613
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZoneBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1617
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gdprZone_:Lcom/explorestack/protobuf/BoolValue;

    .line 1618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1620
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpp(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2254
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2255
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2258
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2233
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2237
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gpp_:Lcom/explorestack/protobuf/StringValue;

    .line 2238
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2240
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGppSid(II)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 4

    .line 2406
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->ensureGppSidIsMutable()V

    .line 2407
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->gppSid_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 2408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNonPersonalized(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2516
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2517
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2520
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setNonPersonalized(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 3

    .line 2495
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalizedBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2499
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->nonPersonalized_:Lcom/explorestack/protobuf/BoolValue;

    .line 2500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2502
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1166
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1166
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 4

    .line 1340
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1166
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 2

    .line 2615
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Regs.PubOrBuilder (io.bidmachine.protobuf.sdk.Regs$PubOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Regs$PubOrBuilder;
.super Ljava/lang/Object;
.source "Regs.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PubOrBuilder"
.end annotation


# virtual methods
.method public abstract getCcpa()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getCcpaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getConsentString()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getConsentStringOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getCoppa()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getCoppaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getGdprConsent()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getGdprConsentOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getGdprZone()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getGdprZoneOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getGpp()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getGppOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getGppSid(I)I
.end method

.method public abstract getGppSidCount()I
.end method

.method public abstract getGppSidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonPersonalized()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getNonPersonalizedOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract hasCcpa()Z
.end method

.method public abstract hasConsentString()Z
.end method

.method public abstract hasCoppa()Z
.end method

.method public abstract hasGdprConsent()Z
.end method

.method public abstract hasGdprZone()Z
.end method

.method public abstract hasGpp()Z
.end method

.method public abstract hasNonPersonalized()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
