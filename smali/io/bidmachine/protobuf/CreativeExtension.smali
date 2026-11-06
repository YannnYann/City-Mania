###### Class io.bidmachine.protobuf.CreativeExtension (io.bidmachine.protobuf.CreativeExtension)
.class public final Lio/bidmachine/protobuf/CreativeExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$Builder;,
        Lio/bidmachine/protobuf/CreativeExtension$Postbanner;,
        Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;,
        Lio/bidmachine/protobuf/CreativeExtension$Feature;,
        Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;,
        Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;,
        Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;,
        Lio/bidmachine/protobuf/CreativeExtension$AssetModel;,
        Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

.field public static final FEATURES_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTBANNERS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private postbanners_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8543
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8551
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7499
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_b8

    .line 49
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_65

    const/16 v5, 0x12

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 86
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_96

    :catch_2b
    move-exception p1

    goto :goto_87

    :catch_2d
    move-exception p1

    goto :goto_91

    :cond_2f
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3c

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 81
    :cond_3c
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    .line 82
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4a
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_57

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 72
    :cond_57
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    .line 73
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 56
    :cond_65
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_6e

    .line 57
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v3

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    .line 59
    :goto_6f
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    iput-object v4, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_c

    .line 61
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 62
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    :try_end_86
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_86} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_86} :catch_2b
    .catchall {:try_start_e .. :try_end_86} :catchall_29

    goto :goto_c

    .line 97
    :goto_87
    :try_start_87
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 98
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 95
    :goto_91
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_29

    :goto_96
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a2

    .line 101
    iget-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    :cond_a2
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_ae

    .line 104
    iget-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    .line 106
    :cond_ae
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 108
    throw p1

    :cond_b8
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c4

    .line 101
    iget-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    :cond_c4
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d0

    .line 104
    iget-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    .line 106
    :cond_d0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 7499
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$7600()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7802(Lio/bidmachine/protobuf/CreativeExtension;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p1
.end method

.method public static synthetic access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$7902(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$8002(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$8100()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8300(Lio/bidmachine/protobuf/CreativeExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$8400()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 1

    .line 8547
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 112
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 1

    .line 7668
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 7671
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7641
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7642
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7648
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7649
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7609
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7615
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7654
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7655
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7661
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7662
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7629
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7630
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7636
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7637
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7598
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7604
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7619
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7625
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension;",
            ">;"
        }
    .end annotation

    .line 8562
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 7553
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension;

    if-nez v1, :cond_d

    .line 7554
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7556
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension;

    .line 7558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->hasAsset()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->hasAsset()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 7559
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 7560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v1

    .line 7561
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 7563
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getFeaturesList()Ljava/util/List;

    move-result-object v1

    .line 7564
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->getFeaturesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v3

    .line 7565
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getPostbannersList()Ljava/util/List;

    move-result-object v1

    .line 7566
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->getPostbannersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v3

    .line 7567
    :cond_4e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v3

    :cond_59
    return v0
.end method

.method public getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 7409
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
    .registers 2

    .line 7416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2

    .line 8572
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 7448
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1
.end method

.method public getFeaturesCount()I
    .registers 2

    .line 7441
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 7426
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
    .registers 3

    .line 7456
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7434
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension;",
            ">;"
        }
    .end annotation

    .line 8567
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPostbanners(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3

    .line 7488
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p1
.end method

.method public getPostbannersCount()I
    .registers 2

    .line 7481
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPostbannersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 7466
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    return-object v0
.end method

.method public getPostbannersOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;
    .registers 3

    .line 7496
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;

    return-object p1
.end method

.method public getPostbannersOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7474
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 7527
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 7531
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 7533
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    move v2, v1

    .line 7535
    :goto_17
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 7536
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    .line 7537
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 7539
    :cond_30
    :goto_30
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 7540
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    .line 7541
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 7543
    :cond_49
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7544
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAsset()Z
    .registers 2

    .line 7401
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 7573
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 7577
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 7578
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 7580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7582
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getFeaturesCount()I

    move-result v0

    if-lez v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 7584
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getFeaturesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7586
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getPostbannersCount()I

    move-result v0

    if-lez v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 7588
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getPostbannersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 7590
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7591
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 118
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 7502
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 7506
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 7666
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 7682
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7675
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 7676
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7513
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_c

    .line 7514
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 7516
    :goto_e
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 7517
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension;->features_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7519
    :cond_25
    :goto_25
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 7520
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension;->postbanners_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 7522
    :cond_3c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AnonymousClass1 (io.bidmachine.protobuf.CreativeExtension$1)
.class Lio/bidmachine/protobuf/CreativeExtension$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "CreativeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/CreativeExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8551
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8557
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/CreativeExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8551
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetAppearance (io.bidmachine.protobuf.CreativeExtension$AssetAppearance)
.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetAppearance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    }
.end annotation


# static fields
.field public static final AUTOROTATE_FIELD_NUMBER:I = 0x5

.field public static final BACKGROUND_COLOR_FIELD_NUMBER:I = 0xc

.field public static final CLOSABLE_VIEW_FIELD_NUMBER:I = 0x7

.field public static final CLOSE_TIME_FIELD_NUMBER:I = 0x1

.field public static final COUNTDOWN_FIELD_NUMBER:I = 0x6

.field public static final CTA_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field public static final DURATION_FIELD_NUMBER:I = 0x2

.field public static final IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER:I = 0x3

.field public static final MUTE_ASSET_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROGRESS_FIELD_NUMBER:I = 0x8

.field public static final USE_CUSTOM_CLOSE_FIELD_NUMBER:I = 0x4

.field public static final VIDEO_ASSET_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private autorotate_:Z

.field private volatile backgroundColor_:Ljava/lang/Object;

.field private closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private closeTime_:F

.field private countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private duration_:I

.field private ignoresSafeAreaLayoutGuide_:Z

.field private memoizedIsInitialized:B

.field private muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private useCustomClose_:Z

.field private videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5356
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 5364
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3001
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3525
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3021
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    .line 3023
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3026
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_133

    .line 3030
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_13e

    .line 3145
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1c
    move v1, v3

    goto :goto_b

    :catchall_1e
    move-exception p1

    goto/16 :goto_129

    :catch_21
    move-exception p1

    goto/16 :goto_11a

    :catch_24
    move-exception p1

    goto/16 :goto_124

    .line 3139
    :sswitch_27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3141
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    goto :goto_b

    .line 3127
    :sswitch_2e
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_36

    .line 3128
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3130
    :cond_36
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3132
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3133
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_b

    .line 3114
    :sswitch_4e
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_56

    .line 3115
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3117
    :cond_56
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3119
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3120
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_b

    .line 3101
    :sswitch_6e
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_76

    .line 3102
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3104
    :cond_76
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3106
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3107
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_b

    .line 3088
    :sswitch_8f
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_97

    .line 3089
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3091
    :cond_97
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3093
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3094
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_b

    .line 3075
    :sswitch_b0
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_b8

    .line 3076
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3078
    :cond_b8
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3080
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3081
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_b

    .line 3062
    :sswitch_d1
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_d9

    .line 3063
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 3065
    :cond_d9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_b

    .line 3067
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 3068
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_b

    .line 3057
    :sswitch_f2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    goto/16 :goto_b

    .line 3052
    :sswitch_fa
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    goto/16 :goto_b

    .line 3047
    :sswitch_102
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    goto/16 :goto_b

    .line 3042
    :sswitch_10a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    goto/16 :goto_b

    .line 3037
    :sswitch_112
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F
    :try_end_118
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_118} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_118} :catch_21
    .catchall {:try_start_d .. :try_end_118} :catchall_1e

    goto/16 :goto_b

    .line 3156
    :goto_11a
    :try_start_11a
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3157
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3154
    :goto_124
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_129
    .catchall {:try_start_11a .. :try_end_129} :catchall_1e

    .line 3159
    :goto_129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 3161
    throw p1

    .line 3159
    :cond_133
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_13e
    .sparse-switch
        0x0 -> :sswitch_1c
        0xd -> :sswitch_112
        0x10 -> :sswitch_10a
        0x18 -> :sswitch_102
        0x20 -> :sswitch_fa
        0x28 -> :sswitch_f2
        0x32 -> :sswitch_d1
        0x3a -> :sswitch_b0
        0x42 -> :sswitch_8f
        0x4a -> :sswitch_6e
        0x52 -> :sswitch_4e
        0x5a -> :sswitch_2e
        0x62 -> :sswitch_27
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2992
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2999
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3525
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 2992
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3300()Z
    .registers 1

    .line 2992
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;F)F
    .registers 2

    .line 2992
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    return p1
.end method

.method public static synthetic access$3602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;I)I
    .registers 2

    .line 2992
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    return p1
.end method

.method public static synthetic access$3702(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .registers 2

    .line 2992
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    return p1
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .registers 2

    .line 2992
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    return p1
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .registers 2

    .line 2992
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    return p1
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p1
.end method

.method public static synthetic access$4600(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Ljava/lang/Object;
    .registers 1

    .line 2992
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2992
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4700(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2992
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2992
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2992
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 1

    .line 5360
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3165
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 1

    .line 3818
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 3821
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3791
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3792
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3798
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3799
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3759
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3765
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3804
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3805
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3811
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3812
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3779
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3780
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3786
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3787
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3748
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3754
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3769
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3775
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation

    .line 5375
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3641
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v1, :cond_d

    .line 3642
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3644
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 3646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3648
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v2

    .line 3647
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_23

    return v3

    .line 3649
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v1

    .line 3650
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v2

    if-eq v1, v2, :cond_2e

    return v3

    .line 3651
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v1

    .line 3652
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v2

    if-eq v1, v2, :cond_39

    return v3

    .line 3653
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v1

    .line 3654
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v2

    if-eq v1, v2, :cond_44

    return v3

    .line 3655
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v1

    .line 3656
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v2

    if-eq v1, v2, :cond_4f

    return v3

    .line 3657
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v2

    if-eq v1, v2, :cond_5a

    return v3

    .line 3658
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 3659
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3660
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v3

    .line 3662
    :cond_6f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v2

    if-eq v1, v2, :cond_7a

    return v3

    .line 3663
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 3664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3665
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    return v3

    .line 3667
    :cond_8f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v2

    if-eq v1, v2, :cond_9a

    return v3

    .line 3668
    :cond_9a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 3669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3670
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v3

    .line 3672
    :cond_af
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v2

    if-eq v1, v2, :cond_ba

    return v3

    .line 3673
    :cond_ba
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 3674
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3675
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    return v3

    .line 3677
    :cond_cf
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v2

    if-eq v1, v2, :cond_da

    return v3

    .line 3678
    :cond_da
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 3679
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3680
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    return v3

    .line 3682
    :cond_ef
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v2

    if-eq v1, v2, :cond_fa

    return v3

    .line 3683
    :cond_fa
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 3684
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 3685
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    return v3

    .line 3687
    :cond_10f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    .line 3688
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11e

    return v3

    .line 3689
    :cond_11e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_129

    return v3

    :cond_129
    return v0
.end method

.method public getAutorotate()Z
    .registers 2

    .line 3248
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 3

    .line 3491
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 3492
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3493
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3495
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3497
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3498
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3513
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 3514
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3515
    check-cast v0, Ljava/lang/String;

    .line 3516
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3518
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    return-object v0

    .line 3521
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3313
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getClosableViewOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3324
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTime()F
    .registers 2

    .line 3188
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3275
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3389
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCtaOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3400
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 5385
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 3203
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    return v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .registers 2

    .line 3218
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3427
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMuteAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation

    .line 5380
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3351
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3362
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 3580
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3584
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 3586
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 3588
    :goto_14
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    .line 3590
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3592
    :cond_1e
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v1, :cond_28

    const/4 v2, 0x3

    .line 3594
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3596
    :cond_28
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    if-eqz v1, :cond_32

    const/4 v2, 0x4

    .line 3598
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3600
    :cond_32
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    if-eqz v1, :cond_3c

    const/4 v2, 0x5

    .line 3602
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3604
    :cond_3c
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_4a

    const/4 v1, 0x6

    .line 3606
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3608
    :cond_4a
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_58

    const/4 v1, 0x7

    .line 3610
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3612
    :cond_58
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_67

    const/16 v1, 0x8

    .line 3614
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3616
    :cond_67
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_76

    const/16 v1, 0x9

    .line 3618
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3620
    :cond_76
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_85

    const/16 v1, 0xa

    .line 3622
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3624
    :cond_85
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v1, :cond_94

    const/16 v1, 0xb

    .line 3626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3628
    :cond_94
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a7

    const/16 v1, 0xc

    .line 3629
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3631
    :cond_a7
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3632
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 3015
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUseCustomClose()Z
    .registers 2

    .line 3233
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    return v0
.end method

.method public getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 3465
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getVideoAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 3476
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public hasClosableView()Z
    .registers 2

    .line 3301
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCountdown()Z
    .registers 2

    .line 3263
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCta()Z
    .registers 2

    .line 3377
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMuteAsset()Z
    .registers 2

    .line 3415
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasProgress()Z
    .registers 2

    .line 3339
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasVideoAsset()Z
    .registers 2

    .line 3453
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3695
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3699
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3702
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v0

    .line 3701
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3707
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    .line 3706
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 3710
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v0

    .line 3709
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 3713
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v0

    .line 3712
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 3714
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_6c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 3716
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3718
    :cond_6c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v0

    if-eqz v0, :cond_81

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 3720
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3722
    :cond_81
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_96

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 3724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3726
    :cond_96
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v0

    if-eqz v0, :cond_ab

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 3728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3730
    :cond_ab
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v0

    if-eqz v0, :cond_c0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 3732
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3734
    :cond_c0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v0

    if-eqz v0, :cond_d5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 3736
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_d5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 3739
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 3740
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3741
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3171
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 3172
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3528
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 3532
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2992
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 3816
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 4

    .line 3832
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 3009
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 3825
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3826
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

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

    .line 3539
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 3540
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3542
    :cond_b
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    .line 3543
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3545
    :cond_13
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v0, :cond_1b

    const/4 v1, 0x3

    .line 3546
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3548
    :cond_1b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    if-eqz v0, :cond_23

    const/4 v1, 0x4

    .line 3549
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3551
    :cond_23
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    if-eqz v0, :cond_2b

    const/4 v1, 0x5

    .line 3552
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3554
    :cond_2b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_37

    const/4 v0, 0x6

    .line 3555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3557
    :cond_37
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_43

    const/4 v0, 0x7

    .line 3558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3560
    :cond_43
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_50

    const/16 v0, 0x8

    .line 3561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3563
    :cond_50
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_5d

    const/16 v0, 0x9

    .line 3564
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3566
    :cond_5d
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_6a

    const/16 v0, 0xa

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3569
    :cond_6a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_77

    const/16 v0, 0xb

    .line 3570
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3572
    :cond_77
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    const/16 v0, 0xc

    .line 3573
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3575
    :cond_88
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetAppearance.AnonymousClass1 (io.bidmachine.protobuf.CreativeExtension$AssetAppearance$1)
.class Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "CreativeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5364
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5370
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5364
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetAppearance.Builder (io.bidmachine.protobuf.CreativeExtension$AssetAppearance$Builder)
.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;"
    }
.end annotation


# instance fields
.field private autorotate_:Z

.field private backgroundColor_:Ljava/lang/Object;

.field private closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private closeTime_:F

.field private countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private duration_:I

.field private ignoresSafeAreaLayoutGuide_:Z

.field private muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private useCustomClose_:Z

.field private videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3856
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5242
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 3857
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3862
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5242
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 3863
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 3838
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 2

    .line 3838
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>()V

    return-void
.end method

.method private getClosableViewFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4611
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4612
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4614
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 4615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4617
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4619
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4456
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4457
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4459
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 4460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4461
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4462
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4464
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCtaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4921
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4922
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4924
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 4925
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4927
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4929
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3844
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMuteAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5076
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5077
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5079
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 5080
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5082
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5084
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4766
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4767
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4769
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 4770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4772
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4774
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getVideoAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5231
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5232
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v1

    .line 5235
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5237
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5239
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3867
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4017
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3

    .line 3937
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    .line 3938
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3939
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 3

    .line 3946
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 3947
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;F)F

    .line 3948
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;I)I

    .line 3949
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3702(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 3950
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3802(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 3951
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3902(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 3952
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_29

    .line 3953
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_32

    .line 3955
    :cond_29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3957
    :goto_32
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3c

    .line 3958
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_45

    .line 3960
    :cond_3c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3962
    :goto_45
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4f

    .line 3963
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_58

    .line 3965
    :cond_4f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3967
    :goto_58
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_62

    .line 3968
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_6b

    .line 3970
    :cond_62
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3972
    :goto_6b
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_75

    .line 3973
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_7e

    .line 3975
    :cond_75
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3977
    :goto_7e
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_88

    .line 3978
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_91

    .line 3980
    :cond_88
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3982
    :goto_91
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 3872
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 3873
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    const/4 v0, 0x0

    .line 3875
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 3877
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 3879
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 3881
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 3883
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 3884
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_1b

    .line 3886
    :cond_17
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3887
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3889
    :goto_1b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_22

    .line 3890
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_26

    .line 3892
    :cond_22
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3893
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3895
    :goto_26
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2d

    .line 3896
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_31

    .line 3898
    :cond_2d
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3899
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3901
    :goto_31
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_38

    .line 3902
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_3c

    .line 3904
    :cond_38
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3905
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3907
    :goto_3c
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_43

    .line 3908
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_47

    .line 3910
    :cond_43
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3911
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3913
    :goto_47
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4e

    .line 3914
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_52

    .line 3916
    :cond_4e
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 3917
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3919
    :goto_52
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAutorotate()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4307
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 4308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBackgroundColor()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 5313
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4564
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4565
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4568
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4569
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCloseTime()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4135
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    .line 4136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4409
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4410
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4413
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4414
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCta()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4874
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4875
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4878
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4879
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDuration()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4178
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 4179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4000
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public clearIgnoresSafeAreaLayoutGuide()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4221
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 4222
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5029
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5030
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5033
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5034
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4005
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public clearProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4719
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4720
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4723
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4724
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUseCustomClose()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4264
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 4265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5184
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5185
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5188
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5189
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 3989
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAutorotate()Z
    .registers 2

    .line 4280
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 3

    .line 5252
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5253
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5254
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5256
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5257
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    return-object v0

    .line 5260
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5273
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5275
    check-cast v0, Ljava/lang/String;

    .line 5276
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5278
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    return-object v0

    .line 5281
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 4490
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4491
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4493
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getClosableViewBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 4583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4584
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getClosableViewFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getClosableViewOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 4594
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4595
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 4597
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 4598
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCloseTime()F
    .registers 2

    .line 4108
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 4335
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4336
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4338
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getCountdownBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 4428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4429
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 4439
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4440
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 4442
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 4443
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 4800
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4801
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4803
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getCtaBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 4893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4894
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCtaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getCtaOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 4904
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4905
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 4907
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 4908
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 3932
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3927
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 4151
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    return v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .registers 2

    .line 4194
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 4955
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4956
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4958
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getMuteAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 5048
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5049
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getMuteAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getMuteAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 5059
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5060
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 5062
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 5063
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 4645
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4646
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4648
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getProgressBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 4738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4739
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 4749
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4750
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 4752
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 4753
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUseCustomClose()Z
    .registers 2

    .line 4237
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    return v0
.end method

.method public getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 5110
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5111
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5113
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getVideoAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 5203
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5204
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getVideoAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public getVideoAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .registers 2

    .line 5214
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5215
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    return-object v0

    .line 5217
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v0, :cond_13

    .line 5218
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasClosableView()Z
    .registers 2

    .line 4479
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasCountdown()Z
    .registers 2

    .line 4324
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasCta()Z
    .registers 2

    .line 4789
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasMuteAsset()Z
    .registers 2

    .line 4944
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasProgress()Z
    .registers 2

    .line 4634
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasVideoAsset()Z
    .registers 2

    .line 5099
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

    .line 3850
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 3851
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

.method public mergeClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4542
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4543
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 4545
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 4547
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4549
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4551
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4387
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4388
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 4390
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 4392
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4394
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4396
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4852
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4853
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 4855
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 4857
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4859
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4861
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

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

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

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

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

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

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

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4085
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 4091
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 4087
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 4088
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

    .line 4091
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4093
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4021
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_b

    .line 4022
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1

    .line 4024
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 4

    .line 4030
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4031
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 4032
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setCloseTime(F)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4034
    :cond_17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v0

    if-eqz v0, :cond_24

    .line 4035
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setDuration(I)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4037
    :cond_24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4038
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4040
    :cond_31
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4041
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUseCustomClose(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4043
    :cond_3e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4044
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setAutorotate(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4046
    :cond_4b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4047
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4049
    :cond_58
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 4050
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4052
    :cond_65
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 4053
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4055
    :cond_72
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4056
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4058
    :cond_7f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 4059
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4061
    :cond_8c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 4062
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4064
    :cond_99
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 4065
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4600(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 4066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4068
    :cond_ac
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4700(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 4069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5007
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5008
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 5010
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 5012
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5014
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5016
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4697
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4698
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 4700
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 4702
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4704
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4706
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 5346
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public mergeVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5162
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5163
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_17

    .line 5165
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_19

    .line 5167
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5169
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5171
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAutorotate(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4293
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 4294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 5296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5299
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBackgroundColorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 5329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5331
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5333
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4525
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4526
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4529
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4504
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4508
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4511
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCloseTime(F)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4121
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    .line 4122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4370
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4371
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4374
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4349
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4353
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4356
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4835
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4836
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4839
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4814
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4818
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4821
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDuration(I)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4164
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 4165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3838
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 3995
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4207
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 4208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4990
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4991
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4994
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4969
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4973
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4976
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4680
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4681
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4684
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 4659
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4663
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4666
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3838
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3838
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 4

    .line 4011
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3838
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 5340
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public setUseCustomClose(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 4250
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 4251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5145
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5146
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5149
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 3

    .line 5124
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5128
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 5129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5131
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetAppearanceOrBuilder (io.bidmachine.protobuf.CreativeExtension$AssetAppearanceOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
.super Ljava/lang/Object;
.source "CreativeExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssetAppearanceOrBuilder"
.end annotation


# virtual methods
.method public abstract getAutorotate()Z
.end method

.method public abstract getBackgroundColor()Ljava/lang/String;
.end method

.method public abstract getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getClosableViewOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract getCloseTime()F
.end method

.method public abstract getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getCountdownOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getCtaOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getIgnoresSafeAreaLayoutGuide()Z
.end method

.method public abstract getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getMuteAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getProgressOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract getUseCustomClose()Z
.end method

.method public abstract getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end method

.method public abstract getVideoAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.end method

.method public abstract hasClosableView()Z
.end method

.method public abstract hasCountdown()Z
.end method

.method public abstract hasCta()Z
.end method

.method public abstract hasMuteAsset()Z
.end method

.method public abstract hasProgress()Z
.end method

.method public abstract hasVideoAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetModel (io.bidmachine.protobuf.CreativeExtension$AssetModel)
.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field public static final FILL_FIELD_NUMBER:I = 0x2

.field public static final FONT_STYLE_FIELD_NUMBER:I = 0x3

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final HIDEAFTER_FIELD_NUMBER:I = 0x5

.field public static final MARGIN_FIELD_NUMBER:I = 0x6

.field public static final OPACITY_FIELD_NUMBER:I = 0x7

.field public static final OUTLINED_FIELD_NUMBER:I = 0x8

.field public static final PADDING_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADOW_FIELD_NUMBER:I = 0xa

.field public static final STROKE_FIELD_NUMBER:I = 0xb

.field public static final STROKE_WIDTH_FIELD_NUMBER:I = 0x12

.field public static final STYLE_FIELD_NUMBER:I = 0xd

.field public static final VISIBLE_FIELD_NUMBER:I = 0xe

.field public static final WIDTH_FIELD_NUMBER:I = 0xf

.field public static final X_FIELD_NUMBER:I = 0x10

.field public static final Y_FIELD_NUMBER:I = 0x11

.field private static final serialVersionUID:J


# instance fields
.field private volatile content_:Ljava/lang/Object;

.field private volatile fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private margin_:F

.field private memoizedIsInitialized:B

.field private opacity_:F

.field private outlined_:Z

.field private padding_:F

.field private volatile shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private volatile stroke_:Ljava/lang/Object;

.field private volatile style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private volatile x_:Ljava/lang/Object;

.field private volatile y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2719
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2727
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 379
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1015
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->memoizedIsInitialized:B

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    .line 381
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    .line 382
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    .line 383
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    .line 384
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    .line 385
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    .line 386
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>()V

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_b9

    .line 414
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_c4

    .line 512
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1b
    move v1, v3

    goto :goto_b

    :catchall_1d
    move-exception p1

    goto/16 :goto_af

    :catch_20
    move-exception p1

    goto/16 :goto_a0

    :catch_23
    move-exception p1

    goto/16 :goto_aa

    .line 508
    :sswitch_26
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->strokeWidth_:F

    goto :goto_b

    .line 501
    :sswitch_2d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 503
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    goto :goto_b

    .line 495
    :sswitch_34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 497
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    goto :goto_b

    .line 491
    :sswitch_3b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->width_:I

    goto :goto_b

    .line 486
    :sswitch_42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->visible_:Z

    goto :goto_b

    .line 479
    :sswitch_49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 481
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    goto :goto_b

    .line 473
    :sswitch_50
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 475
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    goto :goto_b

    .line 467
    :sswitch_57
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 469
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    goto :goto_b

    .line 463
    :sswitch_5e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->padding_:F

    goto :goto_b

    .line 458
    :sswitch_65
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->outlined_:Z

    goto :goto_b

    .line 453
    :sswitch_6c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->opacity_:F

    goto :goto_b

    .line 448
    :sswitch_73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->margin_:F

    goto :goto_b

    .line 443
    :sswitch_7a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hideafter_:I

    goto :goto_b

    .line 438
    :sswitch_81
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->height_:I

    goto :goto_b

    .line 433
    :sswitch_88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fontStyle_:I

    goto/16 :goto_b

    .line 426
    :sswitch_90
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 428
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 420
    :sswitch_98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 422
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;
    :try_end_9e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_9e} :catch_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_9e} :catch_20
    .catchall {:try_start_d .. :try_end_9e} :catchall_1d

    goto/16 :goto_b

    .line 523
    :goto_a0
    :try_start_a0
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 524
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 521
    :goto_aa
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_1d

    .line 526
    :goto_af
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 528
    throw p1

    .line 526
    :cond_b9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_1b
        0xa -> :sswitch_98
        0x12 -> :sswitch_90
        0x18 -> :sswitch_88
        0x20 -> :sswitch_81
        0x28 -> :sswitch_7a
        0x35 -> :sswitch_73
        0x3d -> :sswitch_6c
        0x40 -> :sswitch_65
        0x4d -> :sswitch_5e
        0x52 -> :sswitch_57
        0x5a -> :sswitch_50
        0x6a -> :sswitch_49
        0x70 -> :sswitch_42
        0x78 -> :sswitch_3b
        0x82 -> :sswitch_34
        0x8a -> :sswitch_2d
        0x95 -> :sswitch_26
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 377
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1015
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 370
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->opacity_:F

    return p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z
    .registers 2

    .line 370
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->outlined_:Z

    return p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->padding_:F

    return p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->strokeWidth_:F

    return p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z
    .registers 2

    .line 370
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->visible_:Z

    return p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->width_:I

    return p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 370
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 370
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
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

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;
    .registers 1

    .line 370
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fontStyle_:I

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->height_:I

    return p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hideafter_:I

    return p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F
    .registers 2

    .line 370
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->margin_:F

    return p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 1

    .line 2723
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 532
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 1

    .line 1332
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1335
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1306
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1313
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1273
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1279
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1319
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1326
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1294
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1300
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1301
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1262
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1268
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1289
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            ">;"
        }
    .end annotation

    .line 2738
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1160
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-nez v1, :cond_d

    .line 1161
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1163
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 1165
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1167
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1169
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v1

    .line 1170
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 1171
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v1

    .line 1172
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    .line 1173
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v1

    .line 1174
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v3

    if-eq v1, v3, :cond_4f

    return v2

    .line 1175
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v3

    .line 1176
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_62

    return v2

    .line 1178
    :cond_62
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1180
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v3

    .line 1179
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_75

    return v2

    .line 1181
    :cond_75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v1

    .line 1182
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v3

    if-eq v1, v3, :cond_80

    return v2

    .line 1183
    :cond_80
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1185
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v3

    .line 1184
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_93

    return v2

    .line 1186
    :cond_93
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v1

    .line 1187
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    return v2

    .line 1188
    :cond_a2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    return v2

    .line 1190
    :cond_b1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1192
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v3

    .line 1191
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_c4

    return v2

    .line 1193
    :cond_c4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    return v2

    .line 1195
    :cond_d3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v1

    .line 1196
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v3

    if-eq v1, v3, :cond_de

    return v2

    .line 1197
    :cond_de
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v1

    .line 1198
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_e9

    return v2

    .line 1199
    :cond_e9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    return v2

    .line 1201
    :cond_f8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_107

    return v2

    .line 1203
    :cond_107
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_112

    return v2

    :cond_112
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 555
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    .line 556
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 557
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 559
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 561
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 562
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 577
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    .line 578
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 579
    check-cast v0, Ljava/lang/String;

    .line 580
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 582
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    return-object v0

    .line 585
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 2748
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .registers 3

    .line 601
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    .line 602
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 603
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 605
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 607
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 608
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 623
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    .line 624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 625
    check-cast v0, Ljava/lang/String;

    .line 626
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 628
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    return-object v0

    .line 631
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFontStyle()I
    .registers 2

    .line 647
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fontStyle_:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 662
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->height_:I

    return v0
.end method

.method public getHideafter()I
    .registers 2

    .line 677
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hideafter_:I

    return v0
.end method

.method public getMargin()F
    .registers 2

    .line 692
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->margin_:F

    return v0
.end method

.method public getOpacity()F
    .registers 2

    .line 707
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->opacity_:F

    return v0
.end method

.method public getOutlined()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->outlined_:Z

    return v0
.end method

.method public getPadding()F
    .registers 2

    .line 737
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->padding_:F

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            ">;"
        }
    .end annotation

    .line 2743
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1085
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1089
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1090
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1092
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 1093
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_2b
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fontStyle_:I

    if-eqz v1, :cond_35

    const/4 v2, 0x3

    .line 1097
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_35
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->height_:I

    if-eqz v1, :cond_3f

    const/4 v2, 0x4

    .line 1101
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_3f
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hideafter_:I

    if-eqz v1, :cond_49

    const/4 v2, 0x5

    .line 1105
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_49
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->margin_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_56

    const/4 v3, 0x6

    .line 1109
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_56
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->opacity_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_62

    const/4 v3, 0x7

    .line 1113
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_62
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->outlined_:Z

    if-eqz v1, :cond_6d

    const/16 v3, 0x8

    .line 1117
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_6d
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->padding_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_7a

    const/16 v3, 0x9

    .line 1121
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8d

    const/16 v1, 0xa

    .line 1124
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    :cond_8d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a0

    const/16 v1, 0xb

    .line 1127
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1129
    :cond_a0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b3

    const/16 v1, 0xd

    .line 1130
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1132
    :cond_b3
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->visible_:Z

    if-eqz v1, :cond_be

    const/16 v3, 0xe

    .line 1134
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    :cond_be
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->width_:I

    if-eqz v1, :cond_c9

    const/16 v3, 0xf

    .line 1138
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    :cond_c9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_dc

    const/16 v1, 0x10

    .line 1141
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1143
    :cond_dc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ef

    const/16 v1, 0x11

    .line 1144
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1146
    :cond_ef
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->strokeWidth_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_fc

    const/16 v2, 0x12

    .line 1148
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1150
    :cond_fc
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getShadow()Ljava/lang/String;
    .registers 3

    .line 752
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    .line 753
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 754
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 756
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 758
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 759
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 774
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    .line 775
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 776
    check-cast v0, Ljava/lang/String;

    .line 777
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 779
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 782
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStroke()Ljava/lang/String;
    .registers 3

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    .line 799
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 800
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 802
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 804
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 805
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 820
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    .line 821
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 822
    check-cast v0, Ljava/lang/String;

    .line 823
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 825
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 828
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 844
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->strokeWidth_:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 3

    .line 859
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    .line 860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 861
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 863
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 866
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 881
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    .line 882
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 883
    check-cast v0, Ljava/lang/String;

    .line 884
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 886
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    return-object v0

    .line 889
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 905
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->visible_:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 920
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->width_:I

    return v0
.end method

.method public getX()Ljava/lang/String;
    .registers 3

    .line 935
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    .line 936
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 937
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 939
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 941
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 942
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 957
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    .line 958
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 959
    check-cast v0, Ljava/lang/String;

    .line 960
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 962
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    return-object v0

    .line 965
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .registers 3

    .line 981
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    .line 982
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 983
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 985
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 987
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 988
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1003
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    .line 1004
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1005
    check-cast v0, Ljava/lang/String;

    .line 1006
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1008
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    return-object v0

    .line 1011
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1209
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1213
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1217
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1223
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1226
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v0

    .line 1225
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1229
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v0

    .line 1228
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1232
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v0

    .line 1231
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1235
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v0

    .line 1234
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1237
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v0

    .line 1241
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1244
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1247
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v0

    .line 1246
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1249
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1251
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1253
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1254
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1255
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 538
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 539
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1018
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1022
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 370
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1330
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 4

    .line 1346
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 393
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 3

    .line 1339
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1340
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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

    .line 1029
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1030
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->content_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1032
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1033
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fill_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1035
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->fontStyle_:I

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 1036
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1038
    :cond_28
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->height_:I

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 1039
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1041
    :cond_30
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hideafter_:I

    if-eqz v0, :cond_38

    const/4 v1, 0x5

    .line 1042
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1044
    :cond_38
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->margin_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_43

    const/4 v2, 0x6

    .line 1045
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1047
    :cond_43
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->opacity_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4d

    const/4 v2, 0x7

    .line 1048
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1050
    :cond_4d
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->outlined_:Z

    if-eqz v0, :cond_56

    const/16 v2, 0x8

    .line 1051
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1053
    :cond_56
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->padding_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_61

    const/16 v2, 0x9

    .line 1054
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1056
    :cond_61
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    const/16 v0, 0xa

    .line 1057
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->shadow_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1059
    :cond_72
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    const/16 v0, 0xb

    .line 1060
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->stroke_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1062
    :cond_83
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    const/16 v0, 0xd

    .line 1063
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->style_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1065
    :cond_94
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->visible_:Z

    if-eqz v0, :cond_9d

    const/16 v2, 0xe

    .line 1066
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1068
    :cond_9d
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->width_:I

    if-eqz v0, :cond_a6

    const/16 v2, 0xf

    .line 1069
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1071
    :cond_a6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b7

    const/16 v0, 0x10

    .line 1072
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->x_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1074
    :cond_b7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    const/16 v0, 0x11

    .line 1075
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->y_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1077
    :cond_c8
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->strokeWidth_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_d3

    const/16 v1, 0x12

    .line 1078
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1080
    :cond_d3
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetModel.AnonymousClass1 (io.bidmachine.protobuf.CreativeExtension$AssetModel$1)
.class Lio/bidmachine/protobuf/CreativeExtension$AssetModel$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "CreativeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2727
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2733
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2727
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetModel.Builder (io.bidmachine.protobuf.CreativeExtension$AssetModel$Builder)
.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;"
    }
.end annotation


# instance fields
.field private content_:Ljava/lang/Object;

.field private fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private margin_:F

.field private opacity_:F

.field private outlined_:Z

.field private padding_:F

.field private shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private stroke_:Ljava/lang/Object;

.field private style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1370
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1599
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1695
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 2092
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2188
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2327
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2509
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2605
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 1371
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1376
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1599
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1695
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 2092
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2188
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2327
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2509
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2605
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 1377
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 1352
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 2

    .line 1352
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1358
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1381
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 3

    .line 1498
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3

    .line 1437
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1439
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 3

    .line 1446
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 1447
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 1450
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 1451
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 1452
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 1453
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 1454
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1102(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z

    .line 1455
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1202(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 1456
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1302(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 1459
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z

    .line 1461
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 1462
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 4

    .line 1386
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1387
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1389
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1391
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 1393
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 1395
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    const/4 v2, 0x0

    .line 1397
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 1399
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 1401
    iput-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 1403
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 1405
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 1407
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 1409
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 1411
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 1413
    iput-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 1415
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 1417
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 1419
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearContent()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1670
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1481
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public clearFill()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1766
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFontStyle()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1829
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 1830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeight()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1872
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 1873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHideafter()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1915
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    .line 1916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMargin()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1958
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 1959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1486
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public clearOpacity()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2001
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 2002
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOutlined()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2044
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 2045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPadding()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2087
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 2088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShadow()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2163
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStroke()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2259
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStrokeWidth()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2322
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 2323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStyle()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2398
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVisible()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2461
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 2462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWidth()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2504
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 2505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearX()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2580
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearY()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2676
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 2677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1470
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 1609
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1610
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1611
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1613
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1614
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1617
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1630
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1631
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1632
    check-cast v0, Ljava/lang/String;

    .line 1633
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1635
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1638
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .registers 2

    .line 1432
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1427
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .registers 3

    .line 1705
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1706
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1707
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1709
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1710
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 1713
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1726
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1728
    check-cast v0, Ljava/lang/String;

    .line 1729
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1731
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 1734
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFontStyle()I
    .registers 2

    .line 1802
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1845
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    return v0
.end method

.method public getHideafter()I
    .registers 2

    .line 1888
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    return v0
.end method

.method public getMargin()F
    .registers 2

    .line 1931
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    return v0
.end method

.method public getOpacity()F
    .registers 2

    .line 1974
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    return v0
.end method

.method public getOutlined()Z
    .registers 2

    .line 2017
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    return v0
.end method

.method public getPadding()F
    .registers 2

    .line 2060
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    return v0
.end method

.method public getShadow()Ljava/lang/String;
    .registers 3

    .line 2102
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2103
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2104
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2106
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2107
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2110
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2123
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2124
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2125
    check-cast v0, Ljava/lang/String;

    .line 2126
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2128
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2131
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStroke()Ljava/lang/String;
    .registers 3

    .line 2198
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2199
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2200
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2202
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2203
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2206
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2219
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2220
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2221
    check-cast v0, Ljava/lang/String;

    .line 2222
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2224
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2227
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 2295
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 3

    .line 2337
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2338
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2339
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2341
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2342
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2345
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2358
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2359
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2360
    check-cast v0, Ljava/lang/String;

    .line 2361
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2363
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2366
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 2434
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 2477
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    return v0
.end method

.method public getX()Ljava/lang/String;
    .registers 3

    .line 2519
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2520
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2521
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2523
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2524
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2527
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2540
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2541
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2542
    check-cast v0, Ljava/lang/String;

    .line 2543
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2545
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2548
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .registers 3

    .line 2615
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 2616
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2617
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2619
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2620
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 2623
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2636
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 2637
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2638
    check-cast v0, Ljava/lang/String;

    .line 2639
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2641
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 2644
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1364
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1365
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

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1587
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1589
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1590
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

    .line 1593
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1595
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 3

    .line 1502
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_b

    .line 1503
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1

    .line 1505
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 4

    .line 1511
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1512
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1513
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1516
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1517
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$500(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1520
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 1521
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setFontStyle(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1523
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v0

    if-eqz v0, :cond_47

    .line 1524
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setHeight(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1526
    :cond_47
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v0

    if-eqz v0, :cond_54

    .line 1527
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setHideafter(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1529
    :cond_54
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_64

    .line 1530
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setMargin(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1532
    :cond_64
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_73

    .line 1533
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setOpacity(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1535
    :cond_73
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1536
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setOutlined(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1538
    :cond_80
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8f

    .line 1539
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setPadding(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1541
    :cond_8f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 1542
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1300(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 1543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1545
    :cond_a2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1546
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 1547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1549
    :cond_b5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    .line 1550
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setStrokeWidth(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1552
    :cond_c4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 1553
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1600(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 1554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1556
    :cond_d7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1557
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setVisible(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1559
    :cond_e4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v0

    if-eqz v0, :cond_f1

    .line 1560
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setWidth(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1562
    :cond_f1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_104

    .line 1563
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1900(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 1564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1566
    :cond_104
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_117

    .line 1567
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2000(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 1568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1570
    :cond_117
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2100(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 1571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2709
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1656
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1690
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 1691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1352
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 3

    .line 1476
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setFill(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1752
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFillBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1784
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1786
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 1787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFontStyle(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1815
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 1816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeight(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1858
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 1859
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHideafter(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1901
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    .line 1902
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMargin(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1944
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 1945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOpacity(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 1987
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 1988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOutlined(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2030
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 2031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPadding(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2073
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 2074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1352
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1352
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 4

    .line 1492
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setShadow(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2149
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setShadowBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2181
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2183
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 2184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStroke(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2245
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2277
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2279
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 2280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeWidth(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2308
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 2309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2384
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2416
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2418
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1352
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2703
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setVisible(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2447
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 2448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setWidth(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2490
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 2491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setX(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2566
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setXBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2596
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2598
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2600
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 2601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setY(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2662
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 2663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setYBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .registers 2

    .line 2692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2694
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2696
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 2697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.AssetModelOrBuilder (io.bidmachine.protobuf.CreativeExtension$AssetModelOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
.super Ljava/lang/Object;
.source "CreativeExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssetModelOrBuilder"
.end annotation


# virtual methods
.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getContentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFill()Ljava/lang/String;
.end method

.method public abstract getFillBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getFontStyle()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getHideafter()I
.end method

.method public abstract getMargin()F
.end method

.method public abstract getOpacity()F
.end method

.method public abstract getOutlined()Z
.end method

.method public abstract getPadding()F
.end method

.method public abstract getShadow()Ljava/lang/String;
.end method

.method public abstract getShadowBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStroke()Ljava/lang/String;
.end method

.method public abstract getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract getStyle()Ljava/lang/String;
.end method

.method public abstract getStyleBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getVisible()Z
.end method

.method public abstract getWidth()I
.end method

.method public abstract getX()Ljava/lang/String;
.end method

.method public abstract getXBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getY()Ljava/lang/String;
.end method

.method public abstract getYBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Builder (io.bidmachine.protobuf.CreativeExtension$Builder)
.class public final Lio/bidmachine/protobuf/CreativeExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/CreativeExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field private bitField0_:I

.field private featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private postbanners_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7706
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 8046
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 8286
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7707
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 7712
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8046
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 8286
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7713
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 7688
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 2

    .line 7688
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;-><init>()V

    return-void
.end method

.method private ensureFeaturesIsMutable()V
    .registers 3

    .line 8048
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 8049
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 8050
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensurePostbannersIsMutable()V
    .registers 3

    .line 8288
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 8289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 8290
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8034
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8035
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8037
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v1

    .line 8038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8040
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 8042
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7694
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8273
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 8274
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 8278
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 8280
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 8282
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8513
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 8514
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 8518
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 8519
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 8520
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 8522
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 7717
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->access$7600()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7718
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7719
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllFeatures(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;)",
            "Lio/bidmachine/protobuf/CreativeExtension$Builder;"
        }
    .end annotation

    .line 8184
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 8185
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8186
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8190
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllPostbanners(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;)",
            "Lio/bidmachine/protobuf/CreativeExtension$Builder;"
        }
    .end annotation

    .line 8424
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 8425
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8426
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8430
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8170
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8171
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8172
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8175
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8139
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8143
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8144
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8147
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8156
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8157
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8158
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8161
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8122
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8126
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8127
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8130
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeaturesBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 8252
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8253
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v1

    .line 8252
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object v0
.end method

.method public addFeaturesBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 4

    .line 8260
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8261
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v1

    .line 8260
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public addPostbanners(ILio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8410
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8411
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8412
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8415
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPostbanners(ILio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8379
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8381
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8383
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8384
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8387
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPostbanners(Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8396
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8397
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8398
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8401
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPostbanners(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8362
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8366
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8367
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8370
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPostbannersBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 8492
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8493
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v1

    .line 8492
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object v0
.end method

.method public addPostbannersBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 8500
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8501
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v1

    .line 8500
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7827
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3

    .line 7759
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    .line 7760
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 7761
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 3

    .line 7768
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 7770
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 7771
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7802(Lio/bidmachine/protobuf/CreativeExtension;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_19

    .line 7773
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7802(Lio/bidmachine/protobuf/CreativeExtension;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7775
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_37

    .line 7776
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 7777
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 7778
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 7780
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7902(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;

    goto :goto_3e

    .line 7782
    :cond_37
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7902(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;

    .line 7784
    :goto_3e
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 7785
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_56

    .line 7786
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7787
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 7789
    :cond_56
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8002(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;

    goto :goto_63

    .line 7791
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8002(Lio/bidmachine/protobuf/CreativeExtension;Ljava/util/List;)Ljava/util/List;

    .line 7793
    :goto_63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7724
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 7725
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7726
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_f

    .line 7728
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7729
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7731
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 7732
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 7733
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    goto :goto_21

    .line 7735
    :cond_1e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 7737
    :goto_21
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_30

    .line 7738
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7739
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    return-object p0

    .line 7741
    :cond_30
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearAsset()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7999
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8000
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 8001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8003
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 8004
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearFeatures()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 8198
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 8199
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 8200
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 8201
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8203
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 7810
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 7815
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public clearPostbanners()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 8438
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 8439
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 8440
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 8441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8443
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 7799
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 7941
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7942
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7944
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object v0
.end method

.method public getAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 8014
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8015
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object v0
.end method

.method public getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
    .registers 2

    .line 8021
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8022
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;

    return-object v0

    .line 8024
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_13

    .line 8025
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2

    .line 7754
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 7749
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 8081
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8082
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1

    .line 8084
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1
.end method

.method public getFeaturesBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 8225
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public getFeaturesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            ">;"
        }
    .end annotation

    .line 8268
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturesCount()I
    .registers 2

    .line 8071
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 8072
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8074
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 8061
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 8062
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8064
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
    .registers 3

    .line 8232
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8233
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1

    .line 8234
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8242
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 8243
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8245
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostbanners(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3

    .line 8321
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8322
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p1

    .line 8324
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p1
.end method

.method public getPostbannersBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 8465
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public getPostbannersBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;",
            ">;"
        }
    .end annotation

    .line 8508
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostbannersCount()I
    .registers 2

    .line 8311
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 8312
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8314
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getPostbannersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 8301
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 8302
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8304
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostbannersOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;
    .registers 3

    .line 8472
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8473
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;

    return-object p1

    .line 8474
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;

    return-object p1
.end method

.method public getPostbannersOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8482
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 8483
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8485
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .registers 2

    .line 7934
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

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

    .line 7700
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 7701
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

.method public mergeAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7981
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7982
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_17

    .line 7984
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_19

    .line 7986
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7988
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7990
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

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

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

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

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

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

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

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7913
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->access$8400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 7919
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 7915
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 7916
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

    .line 7919
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 7921
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7831
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v0, :cond_b

    .line 7832
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1

    .line 7834
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 5

    .line 7840
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 7841
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7842
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 7844
    :cond_14
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 7845
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 7846
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7847
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 7848
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    goto :goto_44

    .line 7850
    :cond_38
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 7851
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7853
    :goto_44
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_85

    .line 7856
    :cond_48
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 7857
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 7858
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 7859
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7860
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    .line 7861
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 7863
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->access$8100()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 7864
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_79

    :cond_78
    move-object v0, v1

    :goto_79
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_85

    .line 7866
    :cond_7c
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$7900(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7870
    :cond_85
    :goto_85
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b8

    .line 7871
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 7872
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 7873
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7874
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    goto :goto_b4

    .line 7876
    :cond_a8
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 7877
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7879
    :goto_b4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_f3

    .line 7882
    :cond_b8
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 7883
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 7884
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 7885
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7886
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    .line 7887
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->bitField0_:I

    .line 7889
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->access$8200()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 7890
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->getPostbannersFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_e7
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_f3

    .line 7892
    :cond_ea
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8000(Lio/bidmachine/protobuf/CreativeExtension;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7896
    :cond_f3
    :goto_f3
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension;->access$8300(Lio/bidmachine/protobuf/CreativeExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 7897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 8533
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public removeFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8211
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 8212
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8213
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8216
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removePostbanners(I)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 8451
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 8452
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8453
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8456
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7968
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7969
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7972
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7951
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7955
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7958
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8109
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8110
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8111
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8114
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8092
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8094
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8096
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensureFeaturesIsMutable()V

    .line 8097
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8100
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 7688
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 3

    .line 7805
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public setPostbanners(ILio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8349
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 8350
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8351
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8354
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setPostbanners(ILio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 8332
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbannersBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 8334
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8336
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->ensurePostbannersIsMutable()V

    .line 8337
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Builder;->postbanners_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8340
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 7688
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 7688
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 4

    .line 7821
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7688
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2

    .line 8527
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Feature (io.bidmachine.protobuf.CreativeExtension$Feature)
.class public final Lio/bidmachine/protobuf/CreativeExtension$Feature;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6074
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    .line 6082
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5430
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5585
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->memoizedIsInitialized:B

    .line 5431
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    .line 5432
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5451
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>()V

    .line 5453
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5456
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 5460
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0xa

    if-eq v2, v4, :cond_31

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2a

    .line 5478
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

    .line 5472
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5474
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    goto :goto_b

    .line 5466
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5468
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 5489
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5490
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 5487
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 5492
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 5494
    throw p1

    .line 5492
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5421
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 5428
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5585
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 5421
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$5300()Z
    .registers 1

    .line 5421
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5500(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Ljava/lang/Object;
    .registers 1

    .line 5421
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5502(Lio/bidmachine/protobuf/CreativeExtension$Feature;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 5421
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5600(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Ljava/lang/Object;
    .registers 1

    .line 5421
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5602(Lio/bidmachine/protobuf/CreativeExtension$Feature;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 5421
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5700(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 5421
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 5421
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$5900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5421
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5421
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 1

    .line 6078
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5498
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 1

    .line 5732
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5735
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5705
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5706
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5712
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5713
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5673
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5679
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5718
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5719
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5725
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5726
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5693
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5694
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5700
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5701
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5662
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5668
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5683
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5689
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 6093
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 5630
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    if-nez v1, :cond_d

    .line 5631
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5633
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    .line 5635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5636
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 5637
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 5638
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 5639
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2

    .line 6103
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 5517
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    .line 5518
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5519
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5521
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5523
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5524
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5535
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    .line 5536
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5537
    check-cast v0, Ljava/lang/String;

    .line 5538
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5540
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    return-object v0

    .line 5543
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
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 6098
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 5610
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5614
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 5615
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 5617
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 5618
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5620
    :cond_2b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5621
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 5445
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .line 5555
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    .line 5556
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5557
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5559
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5561
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5562
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5573
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    .line 5574
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5575
    check-cast v0, Ljava/lang/String;

    .line 5576
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5578
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    return-object v0

    .line 5581
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 5645
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5649
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 5651
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5653
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 5654
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5655
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 5504
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    .line 5505
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 5588
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 5592
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5730
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 4

    .line 5746
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 5439
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 5739
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Feature;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5740
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

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

    .line 5599
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 5600
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5602
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 5603
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature;->value_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5605
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Feature.AnonymousClass1 (io.bidmachine.protobuf.CreativeExtension$Feature$1)
.class Lio/bidmachine/protobuf/CreativeExtension$Feature$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "CreativeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6082
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6088
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6082
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Feature.Builder (io.bidmachine.protobuf.CreativeExtension$Feature$Builder)
.class public final Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;"
    }
.end annotation


# instance fields
.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5770
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5904
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5980
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 5771
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 5776
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5904
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5980
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 5777
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 5752
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 2

    .line 5752
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5758
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 5781
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 5853
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 5807
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    .line 5808
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 5809
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 5816
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 5817
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5502(Lio/bidmachine/protobuf/CreativeExtension$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5818
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5602(Lio/bidmachine/protobuf/CreativeExtension$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5786
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 5787
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5789
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5836
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public clearName()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5959
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5960
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5841
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public clearValue()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 6035
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 6036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5825
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 2

    .line 5802
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 5797
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 5910
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5911
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5912
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5914
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5915
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 5918
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5927
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5928
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5929
    check-cast v0, Ljava/lang/String;

    .line 5930
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5932
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 5935
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .line 5986
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 5987
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5988
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5990
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5991
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    return-object v0

    .line 5994
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 6003
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 6004
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6005
    check-cast v0, Ljava/lang/String;

    .line 6006
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6008
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    return-object v0

    .line 6011
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 5764
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    .line 5765
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

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

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

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

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

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

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

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5892
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 5898
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 5894
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$Feature;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 5895
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

    .line 5898
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    .line 5900
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 5857
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    if-eqz v0, :cond_b

    .line 5858
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1

    .line 5860
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 5866
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 5867
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5868
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5500(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5871
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 5872
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5600(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 5873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5875
    :cond_2d
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5700(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    .line 5876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 6064
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5752
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 5831
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5946
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5949
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 5971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5973
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$5900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5975
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->name_:Ljava/lang/Object;

    .line 5976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 5752
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 5752
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 4

    .line 5847
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5752
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 6058
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 6022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6025
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 6026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setValueBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 2

    .line 6047
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6049
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->access$6000(Lcom/explorestack/protobuf/ByteString;)V

    .line 6051
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->value_:Ljava/lang/Object;

    .line 6052
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.FeatureOrBuilder (io.bidmachine.protobuf.CreativeExtension$FeatureOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
.super Ljava/lang/Object;
.source "CreativeExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getValueBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Postbanner (io.bidmachine.protobuf.CreativeExtension$Postbanner)
.class public final Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Postbanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

.field public static final FEATURES_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2

.field public static final TPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private sequence_:I

.field private tpe_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7359
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 7367
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 6200
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6420
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 6201
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 6202
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6221
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    .line 6223
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6227
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_9e

    .line 6231
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    const/16 v5, 0x8

    if-eq v3, v5, :cond_74

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6d

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_33

    .line 6270
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2b
    move v1, v4

    goto :goto_c

    :catchall_2d
    move-exception p1

    goto :goto_8a

    :catch_2f
    move-exception p1

    goto :goto_7b

    :catch_31
    move-exception p1

    goto :goto_85

    :cond_33
    if-nez v2, :cond_3d

    .line 6262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    move v2, v4

    .line 6265
    :cond_3d
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 6266
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 6265
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 6249
    :cond_4b
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_54

    .line 6250
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v3

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 6252
    :goto_55
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    iput-object v4, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_c

    .line 6254
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 6255
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_c

    .line 6244
    :cond_6d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    goto :goto_c

    .line 6237
    :cond_74
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 6239
    iput v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I
    :try_end_7a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_7a} :catch_31
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7a} :catch_2f
    .catchall {:try_start_e .. :try_end_7a} :catchall_2d

    goto :goto_c

    .line 6281
    :goto_7b
    :try_start_7b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 6282
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 6279
    :goto_85
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_2d

    :goto_8a
    if-eqz v2, :cond_94

    .line 6285
    iget-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 6287
    :cond_94
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 6289
    throw p1

    :cond_9e
    if-eqz v2, :cond_a8

    .line 6285
    iget-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 6287
    :cond_a8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6191
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 6198
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 6420
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 6191
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$6400()Z
    .registers 1

    .line 6191
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$6600(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)I
    .registers 1

    .line 6191
    iget p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    return p0
.end method

.method public static synthetic access$6602(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I
    .registers 2

    .line 6191
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    return p1
.end method

.method public static synthetic access$6702(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I
    .registers 2

    .line 6191
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    return p1
.end method

.method public static synthetic access$6802(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 6191
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p1
.end method

.method public static synthetic access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;
    .registers 1

    .line 6191
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$6902(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 6191
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$7000()Z
    .registers 1

    .line 6191
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7100(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 6191
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$7200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 6191
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 1

    .line 7363
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6293
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 1

    .line 6597
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6600
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6570
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6571
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6577
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6578
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6538
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6544
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6583
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6584
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6590
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6591
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6558
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6559
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6565
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6566
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6527
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6533
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6548
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6554
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 7378
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 6481
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    if-nez v1, :cond_d

    .line 6482
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6484
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 6486
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    iget v2, p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 6487
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    move-result v1

    .line 6488
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 6489
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    move-result v2

    if-eq v1, v2, :cond_2d

    return v3

    .line 6490
    :cond_2d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 6491
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v1

    .line 6492
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v3

    .line 6494
    :cond_42
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    move-result-object v1

    .line 6495
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v3

    .line 6496
    :cond_51
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    return v3

    :cond_5c
    return v0
.end method

.method public getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 6350
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
    .registers 2

    .line 6357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2

    .line 7388
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 6405
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1
.end method

.method public getFeaturesCount()I
    .registers 2

    .line 6394
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 6371
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
    .registers 3

    .line 6417
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6383
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 7383
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSequence()I
    .registers 2

    .line 6331
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 6451
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6455
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    sget-object v1, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/PostbannerType;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    .line 6456
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    const/4 v1, 0x1

    .line 6457
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 6459
    :goto_1a
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    if-eqz v1, :cond_24

    const/4 v3, 0x2

    .line 6461
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6463
    :cond_24
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v1, :cond_32

    const/4 v1, 0x3

    .line 6465
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6467
    :cond_32
    :goto_32
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4b

    .line 6468
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 6469
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 6471
    :cond_4b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6472
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTpe()Lio/bidmachine/protobuf/PostbannerType;
    .registers 2

    .line 6319
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/PostbannerType;->valueOf(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6320
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    :cond_a
    return-object v0
.end method

.method public getTpeValue()I
    .registers 2

    .line 6311
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 6215
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAsset()Z
    .registers 2

    .line 6342
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 6502
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 6506
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 6508
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 6510
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    move-result v0

    add-int/2addr v1, v0

    .line 6511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_39

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 6513
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6515
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesCount()I

    move-result v0

    if-lez v0, :cond_4e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 6517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4e
    mul-int/lit8 v1, v1, 0x1d

    .line 6519
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6520
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 6299
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6300
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 6423
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 6427
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6191
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6595
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 6611
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 6209
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6604
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 6605
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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

    .line 6434
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    sget-object v1, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/PostbannerType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 6435
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6437
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    .line 6438
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 6440
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 6441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_24
    const/4 v0, 0x0

    .line 6443
    :goto_25
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 6444
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 6446
    :cond_3c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Postbanner.AnonymousClass1 (io.bidmachine.protobuf.CreativeExtension$Postbanner$1)
.class Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "CreativeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7367
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7373
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7367
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.Postbanner.Builder (io.bidmachine.protobuf.CreativeExtension$Postbanner$Builder)
.class public final Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;"
    }
.end annotation


# instance fields
.field private assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field private bitField0_:I

.field private featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private sequence_:I

.field private tpe_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6635
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 6825
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 7030
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6636
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 6641
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 6825
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 7030
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6642
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 3

    .line 6617
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .registers 2

    .line 6617
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>()V

    return-void
.end method

.method private ensureFeaturesIsMutable()V
    .registers 3

    .line 7032
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 7033
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 7034
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7018
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7019
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7021
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v1

    .line 7022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7023
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7024
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7026
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6623
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7329
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 7330
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 7334
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 7336
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 7338
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 6646
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6647
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllFeatures(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;)",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;"
        }
    .end annotation

    .line 7208
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 7209
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7210
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7212
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7214
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 7190
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 7191
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7192
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7195
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 7151
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 7153
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7155
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7156
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7159
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 7172
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 7173
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7174
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7177
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeatures(Lio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 7130
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 7132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7134
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7135
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7138
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addFeaturesBuilder()Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 7300
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7301
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v1

    .line 7300
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object v0
.end method

.method public addFeaturesBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 4

    .line 7312
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7313
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object v1

    .line 7312
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6746
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3

    .line 6685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    .line 6686
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 6687
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 3

    .line 6694
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 6696
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6602(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I

    .line 6697
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->sequence_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6702(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I

    .line 6698
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1a

    .line 6699
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6802(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_23

    .line 6701
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6802(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6703
    :goto_23
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_41

    .line 6704
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    .line 6705
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6706
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    .line 6708
    :cond_3b
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6902(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Ljava/util/List;)Ljava/util/List;

    goto :goto_48

    .line 6710
    :cond_41
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6902(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Ljava/util/List;)Ljava/util/List;

    .line 6712
    :goto_48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6652
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6653
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 6655
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->sequence_:I

    .line 6657
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 6658
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_14

    .line 6660
    :cond_10
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6661
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6663
    :goto_14
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_23

    .line 6664
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6665
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    return-object p0

    .line 6667
    :cond_23
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearAsset()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6983
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6984
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6987
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6988
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearFeatures()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 7226
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 7227
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 7228
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    .line 7229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7231
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6729
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6734
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public clearSequence()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6905
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->sequence_:I

    .line 6906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTpe()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6874
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 6875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6718
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .registers 2

    .line 6925
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6926
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6928
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object v0
.end method

.method public getAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .registers 2

    .line 6998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6999
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getAssetFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object v0
.end method

.method public getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
    .registers 2

    .line 7005
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7006
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;

    return-object v0

    .line 7008
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-nez v0, :cond_13

    .line 7009
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .registers 2

    .line 6680
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 6675
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .registers 3

    .line 7077
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7078
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1

    .line 7080
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    return-object p1
.end method

.method public getFeaturesBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;
    .registers 3

    .line 7261
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;

    return-object p1
.end method

.method public getFeaturesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;",
            ">;"
        }
    .end annotation

    .line 7324
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturesCount()I
    .registers 2

    .line 7063
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 7064
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 7066
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 7049
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 7050
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7052
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
    .registers 3

    .line 7272
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7273
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1

    .line 7274
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7286
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 7287
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7289
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .registers 2

    .line 6886
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->sequence_:I

    return v0
.end method

.method public getTpe()Lio/bidmachine/protobuf/PostbannerType;
    .registers 2

    .line 6851
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/PostbannerType;->valueOf(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6852
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    :cond_a
    return-object v0
.end method

.method public getTpeValue()I
    .registers 2

    .line 6831
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    return v0
.end method

.method public hasAsset()Z
    .registers 2

    .line 6918
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

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

    .line 6629
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6630
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

.method public mergeAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6965
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6966
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_17

    .line 6968
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_19

    .line 6970
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6972
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6974
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

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6812
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$7200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 6818
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 6814
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 6815
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

    .line 6818
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6820
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6750
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    if-eqz v0, :cond_b

    .line 6751
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1

    .line 6753
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 6759
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 6760
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6600(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 6761
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getTpeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setTpeValue(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6763
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    move-result v0

    if-eqz v0, :cond_21

    .line 6764
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setSequence(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6766
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6767
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6769
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_61

    .line 6770
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 6771
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 6772
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6773
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    goto :goto_5d

    .line 6775
    :cond_51
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 6776
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6778
    :goto_5d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_9d

    .line 6781
    :cond_61
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 6782
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 6783
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 6784
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6785
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    .line 6786
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->bitField0_:I

    .line 6788
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$7000()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 6789
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->getFeaturesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_91
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_9d

    .line 6791
    :cond_94
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6795
    :cond_9d
    :goto_9d
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->access$7100(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    .line 6796
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 7349
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public removeFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 7243
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 7244
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7245
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7248
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6952
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6953
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6956
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6935
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->assetBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6939
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6942
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature$Builder;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 7113
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 7114
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7115
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7118
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/CreativeExtension$Feature$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$Feature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setFeatures(ILio/bidmachine/protobuf/CreativeExtension$Feature;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 7092
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->featuresBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 7094
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7096
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->ensureFeaturesIsMutable()V

    .line 7097
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->features_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7100
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6617
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 3

    .line 6724
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 6617
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 6617
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 4

    .line 6740
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

.method public setSequence(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6895
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->sequence_:I

    .line 6896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTpe(Lio/bidmachine/protobuf/PostbannerType;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6864
    invoke-virtual {p1}, Lio/bidmachine/protobuf/PostbannerType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 6865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTpeValue(I)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 6840
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->tpe_:I

    .line 6841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6617
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .registers 2

    .line 7343
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.CreativeExtension.PostbannerOrBuilder (io.bidmachine.protobuf.CreativeExtension$PostbannerOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;
.super Ljava/lang/Object;
.source "CreativeExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostbannerOrBuilder"
.end annotation


# virtual methods
.method public abstract getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.end method

.method public abstract getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
.end method

.method public abstract getFeaturesCount()I
.end method

.method public abstract getFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
.end method

.method public abstract getFeaturesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSequence()I
.end method

.method public abstract getTpe()Lio/bidmachine/protobuf/PostbannerType;
.end method

.method public abstract getTpeValue()I
.end method

.method public abstract hasAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
