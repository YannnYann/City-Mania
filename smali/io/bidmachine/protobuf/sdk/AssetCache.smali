###### Class io.bidmachine.protobuf.sdk.AssetCache (io.bidmachine.protobuf.sdk.AssetCache)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCacheOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$Builder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;,
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;,
        Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;,
        Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;,
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;,
        Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;,
        Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;,
        Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;,
        Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7308
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    .line 7316
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7005
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_3b

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    .line 52
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2
    :try_end_18
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_18} :catch_20
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_1e
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    if-nez v2, :cond_b

    :cond_1a
    move v1, v3

    goto :goto_b

    :catchall_1c
    move-exception p1

    goto :goto_31

    :catch_1e
    move-exception p1

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_2c

    .line 63
    :goto_22
    :try_start_22
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 64
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 61
    :goto_2c
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_1c

    .line 66
    :goto_31
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 68
    throw p1

    .line 66
    :cond_3b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 7005
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$7300()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7500(Lio/bidmachine/protobuf/sdk/AssetCache;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$7600()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 1

    .line 7312
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 72
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 1

    .line 7132
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7135
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7105
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7106
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7112
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7113
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7073
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7079
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7118
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7119
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7125
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7126
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7093
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7094
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7100
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7101
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7062
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7068
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7083
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7089
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache;",
            ">;"
        }
    .end annotation

    .line 7327
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 7038
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache;

    if-nez v1, :cond_d

    .line 7039
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7041
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache;

    .line 7043
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2

    .line 7337
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache;",
            ">;"
        }
    .end annotation

    .line 7332
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .line 7024
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 7028
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    .line 7029
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 7049
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 7053
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 7054
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7055
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 78
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 7008
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 7012
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7130
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 4

    .line 7146
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 3

    .line 7139
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 7140
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7019
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7316
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7322
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7316
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.Builder (io.bidmachine.protobuf.sdk.AssetCache$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCacheOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCacheOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7170
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 7171
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 7176
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 7177
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 7152
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 7152
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7158
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 7181
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->access$7300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 3

    .line 7247
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3

    .line 7203
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    .line 7204
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 7205
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 3

    .line 7212
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 7213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 1

    .line 7186
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7230
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7235
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7219
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache;
    .registers 2

    .line 7198
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 7193
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 7164
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    .line 7165
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

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

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

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

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

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

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

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7278
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->access$7600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 7284
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 7280
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 7281
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

    .line 7284
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    .line 7286
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 3

    .line 7251
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache;

    if-eqz v0, :cond_b

    .line 7252
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1

    .line 7254
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 3

    .line 7260
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 7261
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache;->access$7500(Lio/bidmachine/protobuf/sdk/AssetCache;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    .line 7262
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7298
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 7152
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 3

    .line 7225
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 7152
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 7152
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 4

    .line 7241
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7152
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Builder;
    .registers 2

    .line 7292
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.CleanConfiguration (io.bidmachine.protobuf.sdk.AssetCache$CleanConfiguration)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CleanConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRIGGER_ON_CACHING_FIELD_NUMBER:I = 0x2

.field public static final TRIGGER_ON_DISK_ISSUE_FIELD_NUMBER:I = 0x3

.field public static final TRIGGER_ON_STARTUP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private triggerOnCaching_:Z

.field private triggerOnDiskIssue_:Z

.field private triggerOnStartup_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1952
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 1960
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1337
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1463
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1356
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>()V

    .line 1358
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1361
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_5c

    .line 1365
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

    .line 1386
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

    .line 1382
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnDiskIssue_:Z

    goto :goto_b

    .line 1377
    :cond_35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnCaching_:Z

    goto :goto_b

    .line 1372
    :cond_3c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnStartup_:Z
    :try_end_42
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_42} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_42} :catch_2a
    .catchall {:try_start_d .. :try_end_42} :catchall_28

    goto :goto_b

    .line 1397
    :goto_43
    :try_start_43
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1398
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1395
    :goto_4d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_28

    .line 1400
    :goto_52
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 1402
    throw p1

    .line 1400
    :cond_5c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1328
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1335
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1463
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 1328
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1200()Z
    .registers 1

    .line 1328
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z
    .registers 2

    .line 1328
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnStartup_:Z

    return p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z
    .registers 2

    .line 1328
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnCaching_:Z

    return p1
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z
    .registers 2

    .line 1328
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnDiskIssue_:Z

    return p1
.end method

.method public static synthetic access$1700(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 1328
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 1328
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 1

    .line 1956
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1406
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_CleanConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 1

    .line 1626
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1629
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1600
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1606
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1607
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1567
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1573
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1613
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1620
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1588
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1595
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1556
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1562
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1577
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1583
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
            ">;"
        }
    .end annotation

    .line 1971
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1517
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-nez v1, :cond_d

    .line 1518
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1520
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 1522
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v1

    .line 1523
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 1524
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v1

    .line 1525
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 1526
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v1

    .line 1527
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 1528
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

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2

    .line 1981
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
            ">;"
        }
    .end annotation

    .line 1976
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 1491
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1495
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnStartup_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1497
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1499
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnCaching_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 1501
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1503
    :cond_1b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnDiskIssue_:Z

    if-eqz v1, :cond_25

    const/4 v2, 0x3

    .line 1505
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1507
    :cond_25
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTriggerOnCaching()Z
    .registers 2

    .line 1444
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnCaching_:Z

    return v0
.end method

.method public getTriggerOnDiskIssue()Z
    .registers 2

    .line 1460
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnDiskIssue_:Z

    return v0
.end method

.method public getTriggerOnStartup()Z
    .registers 2

    .line 1429
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnStartup_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 1350
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1534
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1538
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v0

    .line 1540
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1544
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v0

    .line 1543
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1547
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v0

    .line 1546
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1548
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1549
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1412
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_CleanConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1413
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1466
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1470
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1624
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 4

    .line 1640
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 1344
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 3

    .line 1633
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1634
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

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

    .line 1477
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnStartup_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1478
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1480
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnCaching_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1481
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1483
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->triggerOnDiskIssue_:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 1484
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1486
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.CleanConfiguration.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$CleanConfiguration$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1960
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1966
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1960
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.CleanConfiguration.Builder (io.bidmachine.protobuf.sdk.AssetCache$CleanConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private triggerOnCaching_:Z

.field private triggerOnDiskIssue_:Z

.field private triggerOnStartup_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1664
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1665
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1670
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1671
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 1646
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 1646
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1652
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_CleanConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1675
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 3

    .line 1750
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3

    .line 1703
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    .line 1704
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1705
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 3

    .line 1712
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 1713
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnStartup_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1402(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z

    .line 1714
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnCaching_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1502(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z

    .line 1715
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnDiskIssue_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1602(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;Z)Z

    .line 1716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1680
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1681
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnStartup_:Z

    .line 1683
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnCaching_:Z

    .line 1685
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnDiskIssue_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1733
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1738
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public clearTriggerOnCaching()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1883
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnCaching_:Z

    .line 1884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTriggerOnDiskIssue()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1929
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnDiskIssue_:Z

    .line 1930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTriggerOnStartup()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1840
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnStartup_:Z

    .line 1841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1722
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2

    .line 1698
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1693
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_CleanConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getTriggerOnCaching()Z
    .registers 2

    .line 1856
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnCaching_:Z

    return v0
.end method

.method public getTriggerOnDiskIssue()Z
    .registers 2

    .line 1900
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnDiskIssue_:Z

    return v0
.end method

.method public getTriggerOnStartup()Z
    .registers 2

    .line 1813
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnStartup_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1658
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_CleanConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1659
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

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

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

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

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

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

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

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1790
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1796
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1792
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1793
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

    .line 1796
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1798
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 3

    .line 1754
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v0, :cond_b

    .line 1755
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 1757
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 3

    .line 1763
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1764
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1765
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setTriggerOnStartup(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1767
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1768
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setTriggerOnCaching(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1770
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1771
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setTriggerOnDiskIssue(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1773
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->access$1700(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 1774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1942
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1646
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 3

    .line 1728
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1646
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1646
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 4

    .line 1744
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

.method public setTriggerOnCaching(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1869
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnCaching_:Z

    .line 1870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTriggerOnDiskIssue(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1914
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnDiskIssue_:Z

    .line 1915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTriggerOnStartup(Z)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1826
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->triggerOnStartup_:Z

    .line 1827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 1936
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.CleanConfigurationOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$CleanConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CleanConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getTriggerOnCaching()Z
.end method

.method public abstract getTriggerOnDiskIssue()Z
.end method

.method public abstract getTriggerOnStartup()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.Configuration (io.bidmachine.protobuf.sdk.AssetCache$Configuration)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final CLEAN_CONFIGURATION_FIELD_NUMBER:I = 0x1

.field public static final CONNECTION_CONFIGURATION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_CONFIGURATION_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

.field private connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

.field private memoizedIsInitialized:B

.field private policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1256
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 1264
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 180
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 398
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>()V

    .line 201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_aa

    .line 208
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_70

    const/16 v4, 0x12

    if-eq v2, v4, :cond_50

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_30

    .line 253
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_27
    move v1, v3

    goto :goto_b

    :catchall_29
    move-exception p1

    goto/16 :goto_a0

    :catch_2c
    move-exception p1

    goto :goto_91

    :catch_2e
    move-exception p1

    goto :goto_9b

    .line 241
    :cond_30
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v2, :cond_38

    .line 242
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v5

    .line 244
    :cond_38
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v5, :cond_b

    .line 246
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 247
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    goto :goto_b

    .line 228
    :cond_50
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v2, :cond_58

    .line 229
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v5

    .line 231
    :cond_58
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v5, :cond_b

    .line 233
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 234
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    goto :goto_b

    .line 215
    :cond_70
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v2, :cond_78

    .line 216
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v5

    .line 218
    :cond_78
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v5, :cond_b

    .line 220
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    .line 221
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    :try_end_8f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_8f} :catch_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8f} :catch_2c
    .catchall {:try_start_d .. :try_end_8f} :catchall_29

    goto/16 :goto_b

    .line 264
    :goto_91
    :try_start_91
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 265
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 262
    :goto_9b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_29

    .line 267
    :goto_a0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 269
    throw p1

    .line 267
    :cond_aa
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 178
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 398
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 171
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 171
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2

    .line 171
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2

    .line 171
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2

    .line 171
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 171
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 1

    .line 1260
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 273
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 1

    .line 573
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 576
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 547
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 554
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 514
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 520
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 560
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 567
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 535
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 542
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 503
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 509
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 524
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 530
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
            ">;"
        }
    .end annotation

    .line 1275
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 452
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-nez v1, :cond_d

    .line 453
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 455
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasCleanConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasCleanConfiguration()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 458
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasCleanConfiguration()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 459
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 462
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasConnectionConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasConnectionConfiguration()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 463
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasConnectionConfiguration()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 467
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasPolicyConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasPolicyConfiguration()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 468
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasPolicyConfiguration()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v1

    .line 470
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 472
    :cond_70
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    return v3

    :cond_7b
    return v0
.end method

.method public getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2

    .line 308
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCleanConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2

    .line 346
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getConnectionConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;
    .registers 2

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2

    .line 1285
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
            ">;"
        }
    .end annotation

    .line 1280
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2

    .line 384
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPolicyConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 426
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 430
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 434
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 436
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCleanConfiguration()Z
    .registers 2

    .line 296
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasConnectionConfiguration()Z
    .registers 2

    .line 334
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPolicyConfiguration()Z
    .registers 2

    .line 372
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 478
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 482
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 483
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasCleanConfiguration()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 485
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 487
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 489
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 491
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasPolicyConfiguration()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 493
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 495
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 496
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 279
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 401
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 405
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 571
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 4

    .line 587
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 187
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 580
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 581
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

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

    .line 412
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 415
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 418
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 419
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 421
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.Configuration.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$Configuration$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1264
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1270
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.Configuration.Builder (io.bidmachine.protobuf.sdk.AssetCache$Configuration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

.field private connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

.field private policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 611
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 612
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 617
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 618
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 593
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 593
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;-><init>()V

    return-void
.end method

.method private getCleanConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 918
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 920
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v1

    .line 921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 922
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 925
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getConnectionConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1073
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1075
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v1

    .line 1076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1078
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 1080
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 599
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getPolicyConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1228
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1230
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v1

    .line 1231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1233
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1235
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 622
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 721
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3

    .line 662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 664
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 3

    .line 671
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 672
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 673
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$402(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    goto :goto_19

    .line 675
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$402(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 677
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 678
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$502(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    goto :goto_2c

    .line 680
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$502(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 682
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 683
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$602(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    goto :goto_3f

    .line 685
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$602(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 687
    :goto_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 627
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 628
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 629
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    goto :goto_f

    .line 631
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 632
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 634
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 635
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    goto :goto_1a

    .line 637
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 638
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 640
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 641
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0

    .line 643
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 644
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 870
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 871
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 874
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 875
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1025
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1026
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 1027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1029
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 1030
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 704
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 709
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public clearPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1180
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1181
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1182
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1184
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1185
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 693
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
    .registers 2

    .line 796
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 797
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 799
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    return-object v0
.end method

.method public getCleanConfigurationBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;
    .registers 2

    .line 889
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 890
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getCleanConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    return-object v0
.end method

.method public getCleanConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;
    .registers 2

    .line 900
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 901
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;

    return-object v0

    .line 903
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-nez v0, :cond_13

    .line 904
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2

    .line 951
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 952
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 954
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object v0
.end method

.method public getConnectionConfigurationBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 1044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1045
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getConnectionConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object v0
.end method

.method public getConnectionConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;
    .registers 2

    .line 1055
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1056
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;

    return-object v0

    .line 1058
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-nez v0, :cond_13

    .line 1059
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2

    .line 657
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 652
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2

    .line 1106
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1107
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1109
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object v0
.end method

.method public getPolicyConfigurationBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 1199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1200
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->getPolicyConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object v0
.end method

.method public getPolicyConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;
    .registers 2

    .line 1210
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1211
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;

    return-object v0

    .line 1213
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-nez v0, :cond_13

    .line 1214
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasCleanConfiguration()Z
    .registers 2

    .line 785
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

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

.method public hasConnectionConfiguration()Z
    .registers 2

    .line 940
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

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

.method public hasPolicyConfiguration()Z
    .registers 2

    .line 1095
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

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

    .line 605
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 606
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

.method public mergeCleanConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 848
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 849
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    if-eqz v0, :cond_17

    .line 851
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    goto :goto_19

    .line 853
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 855
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 857
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeConnectionConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1003
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1004
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v0, :cond_17

    .line 1006
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    goto :goto_19

    .line 1008
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 1010
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1012
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

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

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

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

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

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

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

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 761
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 767
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 763
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 764
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

    .line 767
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 769
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 725
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v0, :cond_b

    .line 726
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1

    .line 728
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 734
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 735
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasCleanConfiguration()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 736
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeCleanConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 738
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 739
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeConnectionConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 741
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hasPolicyConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 742
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergePolicyConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 744
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->access$700(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePolicyConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1158
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1159
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v0, :cond_17

    .line 1161
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    goto :goto_19

    .line 1163
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1165
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1167
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 1246
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public setCleanConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 831
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 832
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 835
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCleanConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 810
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->cleanConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    .line 815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 817
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setConnectionConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 986
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 987
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 990
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setConnectionConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 965
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 967
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->connectionConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 972
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 699
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public setPolicyConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1141
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1142
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1145
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPolicyConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 3

    .line 1120
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->policyConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 1125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1127
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 593
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 593
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 4

    .line 715
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 593
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 1240
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.ConfigurationOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$ConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;
.end method

.method public abstract getCleanConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfigurationOrBuilder;
.end method

.method public abstract getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
.end method

.method public abstract getConnectionConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
.end method

.method public abstract getPolicyConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;
.end method

.method public abstract hasCleanConfiguration()Z
.end method

.method public abstract hasConnectionConfiguration()Z
.end method

.method public abstract hasPolicyConfiguration()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.ConnectionConfiguration (io.bidmachine.protobuf.sdk.AssetCache$ConnectionConfiguration)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

.field public static final DOWNLOAD_REQUEST_TIMEOUT_MS_FIELD_NUMBER:I = 0x2

.field public static final HEAD_REQUEST_TIMEOUT_MS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private downloadRequestTimeoutMs_:J

.field private headRequestTimeoutMs_:J

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2552
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 2560
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2022
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2127
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2041
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>()V

    .line 2043
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2046
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 2050
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 2066
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

    .line 2062
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->downloadRequestTimeoutMs_:J

    goto :goto_b

    .line 2057
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->headRequestTimeoutMs_:J
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 2077
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2078
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2075
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 2080
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2082
    throw p1

    .line 2080
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2013
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2020
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2127
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 2013
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2200()Z
    .registers 1

    .line 2013
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2402(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;J)J
    .registers 3

    .line 2013
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->headRequestTimeoutMs_:J

    return-wide p1
.end method

.method public static synthetic access$2502(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;J)J
    .registers 3

    .line 2013
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->downloadRequestTimeoutMs_:J

    return-wide p1
.end method

.method public static synthetic access$2600(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2013
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2013
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 1

    .line 2556
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2086
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_ConnectionConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 1

    .line 2278
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2281
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2252
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2259
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2219
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2225
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2264
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2271
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2239
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2240
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2246
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2247
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2208
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2214
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2229
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2235
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    .line 2571
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2174
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-nez v1, :cond_d

    .line 2175
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2177
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    .line 2179
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v1

    .line 2180
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 2181
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v3

    .line 2182
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2a

    return v2

    .line 2183
    :cond_2a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2

    .line 2581
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    return-object v0
.end method

.method public getDownloadRequestTimeoutMs()J
    .registers 3

    .line 2124
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->downloadRequestTimeoutMs_:J

    return-wide v0
.end method

.method public getHeadRequestTimeoutMs()J
    .registers 3

    .line 2109
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->headRequestTimeoutMs_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    .line 2576
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 2152
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2156
    :cond_6
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->headRequestTimeoutMs_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    .line 2158
    invoke-static {v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2160
    :goto_15
    iget-wide v4, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->downloadRequestTimeoutMs_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    .line 2162
    invoke-static {v1, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2164
    :cond_21
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2165
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2035
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 2189
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2193
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v2

    .line 2195
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v2

    .line 2198
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 2200
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2201
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2092
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_ConnectionConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2093
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2130
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2134
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2276
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 4

    .line 2292
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2029
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2285
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2286
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->headRequestTimeoutMs_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 2142
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2144
    :cond_c
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->downloadRequestTimeoutMs_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    .line 2145
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2147
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.ConnectionConfiguration.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$ConnectionConfiguration$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2560
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2566
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.ConnectionConfiguration.Builder (io.bidmachine.protobuf.sdk.AssetCache$ConnectionConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private downloadRequestTimeoutMs_:J

.field private headRequestTimeoutMs_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2316
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2317
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2322
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2323
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 2298
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 2298
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2304
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_ConnectionConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2327
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->access$2200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2399
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 3

    .line 2353
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    .line 2354
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2355
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 4

    .line 2362
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 2363
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->headRequestTimeoutMs_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->access$2402(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;J)J

    .line 2364
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->downloadRequestTimeoutMs_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->access$2502(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;J)J

    .line 2365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2332
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 2333
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->headRequestTimeoutMs_:J

    .line 2335
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->downloadRequestTimeoutMs_:J

    return-object p0
.end method

.method public clearDownloadRequestTimeoutMs()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 2529
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->downloadRequestTimeoutMs_:J

    .line 2530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2382
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public clearHeadRequestTimeoutMs()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 2486
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->headRequestTimeoutMs_:J

    .line 2487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2387
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2371
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    .registers 2

    .line 2348
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2343
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_ConnectionConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDownloadRequestTimeoutMs()J
    .registers 3

    .line 2502
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->downloadRequestTimeoutMs_:J

    return-wide v0
.end method

.method public getHeadRequestTimeoutMs()J
    .registers 3

    .line 2459
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->headRequestTimeoutMs_:J

    return-wide v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2310
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_ConnectionConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2311
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

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

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

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

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

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

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

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2436
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->access$2700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2442
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2438
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2439
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

    .line 2442
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2444
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2403
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    if-eqz v0, :cond_b

    .line 2404
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 2406
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 6

    .line 2412
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2413
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 2414
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setHeadRequestTimeoutMs(J)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2416
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 2417
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setDownloadRequestTimeoutMs(J)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2419
    :cond_27
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->access$2600(Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    .line 2420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2542
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public setDownloadRequestTimeoutMs(J)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2515
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->downloadRequestTimeoutMs_:J

    .line 2516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2298
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2377
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public setHeadRequestTimeoutMs(J)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 3

    .line 2472
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->headRequestTimeoutMs_:J

    .line 2473
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2298
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2298
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 4

    .line 2393
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;
    .registers 2

    .line 2536
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.ConnectionConfigurationOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$ConnectionConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDownloadRequestTimeoutMs()J
.end method

.method public abstract getHeadRequestTimeoutMs()J
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.DownloadPolicy (io.bidmachine.protobuf.sdk.AssetCache$DownloadPolicy)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

.field public static final MAX_FILE_SIZE_BYTES_FIELD_NUMBER:I = 0x2

.field public static final MAX_PING_TIME_MS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6410
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 6418
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5570
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5737
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5589
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>()V

    .line 5591
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5594
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_84

    .line 5598
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2b

    .line 5630
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_23
    move v1, v3

    goto :goto_b

    :catchall_25
    move-exception p1

    goto :goto_7a

    :catch_27
    move-exception p1

    goto :goto_6b

    :catch_29
    move-exception p1

    goto :goto_75

    .line 5618
    :cond_2b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_33

    .line 5619
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 5621
    :cond_33
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 5623
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 5624
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_b

    .line 5605
    :cond_4b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_53

    .line 5606
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 5608
    :cond_53
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 5610
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 5611
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    :try_end_6a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_6a} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6a} :catch_27
    .catchall {:try_start_d .. :try_end_6a} :catchall_25

    goto :goto_b

    .line 5641
    :goto_6b
    :try_start_6b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5642
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 5639
    :goto_75
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_25

    .line 5644
    :goto_7a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 5646
    throw p1

    .line 5644
    :cond_84
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5561
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 5568
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5737
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 5561
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$5500()Z
    .registers 1

    .line 5561
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5702(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5561
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$5802(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5561
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$5900(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 5561
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$6000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 5561
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 1

    .line 6414
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5650
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_DownloadPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 1

    .line 5896
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 5899
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5869
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5870
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5876
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5877
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5837
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5843
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5882
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5883
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5889
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5890
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5857
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5858
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5864
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5865
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5826
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5832
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5847
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5853
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
            ">;"
        }
    .end annotation

    .line 6429
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 5784
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-nez v1, :cond_d

    .line 5785
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5787
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 5789
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxPingTimeMs()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxPingTimeMs()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5790
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxPingTimeMs()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5791
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 5792
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 5794
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxFileSizeBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxFileSizeBytes()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 5795
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxFileSizeBytes()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5796
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 5797
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 5799
    :cond_50
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    return v3

    :cond_5b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2

    .line 6439
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object v0
.end method

.method public getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5723
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaxFileSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 5734
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5685
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaxPingTimeMsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 5696
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
            ">;"
        }
    .end annotation

    .line 6434
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 5762
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5766
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 5768
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5770
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 5772
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5774
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5775
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 5583
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMaxFileSizeBytes()Z
    .registers 2

    .line 5711
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaxPingTimeMs()Z
    .registers 2

    .line 5673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5805
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5809
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 5810
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxPingTimeMs()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 5812
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5814
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxFileSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5816
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3a
    mul-int/lit8 v1, v1, 0x1d

    .line 5818
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5819
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 5656
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_DownloadPolicy_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 5657
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 5740
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 5744
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5561
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 5894
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 4

    .line 5910
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 5577
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 5903
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5904
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

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

    .line 5751
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 5752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5754
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 5755
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5757
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.DownloadPolicy.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$DownloadPolicy$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6418
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6424
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6418
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.DownloadPolicy.Builder (io.bidmachine.protobuf.sdk.AssetCache$DownloadPolicy$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;"
    }
.end annotation


# instance fields
.field private maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5934
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5935
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 5940
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5941
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 5916
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 5916
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5922
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_DownloadPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMaxFileSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6381
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6382
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6384
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 6385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6387
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6389
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMaxPingTimeMsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6226
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6227
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6229
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 6230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6232
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6234
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 5945
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6033
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3

    .line 5979
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    .line 5980
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 5981
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 3

    .line 5988
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 5989
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 5990
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5702(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 5992
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5702(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5994
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 5995
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5802(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_2c

    .line 5997
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5802(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5999
    :goto_2c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 5950
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 5951
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5952
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_f

    .line 5954
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5955
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5957
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 5958
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0

    .line 5960
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5961
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 6016
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public clearMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6334
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6335
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6338
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6339
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6179
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6180
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6181
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6183
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6184
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 6021
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 6005
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5916
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2

    .line 5974
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 5969
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_DownloadPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 6260
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6263
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMaxFileSizeBytesBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6354
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getMaxFileSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMaxFileSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 6364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6365
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 6367
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 6368
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 6105
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6106
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6108
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMaxPingTimeMsBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6199
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->getMaxPingTimeMsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMaxPingTimeMsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 6209
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6210
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 6212
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 6213
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasMaxFileSizeBytes()Z
    .registers 2

    .line 6249
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

.method public hasMaxPingTimeMs()Z
    .registers 2

    .line 6094
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

    .line 5928
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_DownloadPolicy_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 5929
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

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

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

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

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

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

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

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6070
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$6000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 6076
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 6072
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 6073
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

    .line 6076
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 6078
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6037
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v0, :cond_b

    .line 6038
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1

    .line 6040
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6046
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 6047
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxPingTimeMs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6048
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeMaxPingTimeMs(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 6050
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hasMaxFileSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6051
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeMaxFileSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 6053
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->access$5900(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 6054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMaxFileSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6312
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6313
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 6315
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 6317
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6319
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6321
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMaxPingTimeMs(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6157
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6158
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 6160
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 6162
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6164
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6166
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 6400
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5916
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6011
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public setMaxFileSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6295
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6296
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6297
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6299
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxFileSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6274
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6278
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxFileSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6281
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxPingTimeMs(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6140
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6141
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6144
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxPingTimeMs(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 3

    .line 6119
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6123
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->maxPingTimeMs_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6126
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 5916
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 5916
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 4

    .line 6027
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5916
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 6394
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.DownloadPolicyOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$DownloadPolicyOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadPolicyOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMaxFileSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMaxPingTimeMsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract hasMaxFileSizeBytes()Z
.end method

.method public abstract hasMaxPingTimeMs()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.EvictionPolicy (io.bidmachine.protobuf.sdk.AssetCache$EvictionPolicy)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EvictionPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

.field public static final MAX_DISK_APPLIED_PERCENT_FIELD_NUMBER:I = 0x3

.field public static final MAX_IMAGE_SIZE_BYTES_FIELD_NUMBER:I = 0x6

.field public static final MAX_TTL_SECONDS_FIELD_NUMBER:I = 0x4

.field public static final MAX_VIDEO_SIZE_BYTES_FIELD_NUMBER:I = 0x7

.field public static final MIN_DISK_APPLIED_PERCENT_FIELD_NUMBER:I = 0x2

.field public static final MIN_FREQUENCY_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private maxDiskAppliedPercent_:D

.field private maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private memoizedIsInitialized:B

.field private minDiskAppliedPercent_:D

.field private minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private score_:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5466
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    .line 5474
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3908
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4237
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3927
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>()V

    .line 3929
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3932
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_f5

    .line 3936
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    const/16 v4, 0x9

    if-eq v2, v4, :cond_d4

    const/16 v4, 0x11

    if-eq v2, v4, :cond_cc

    const/16 v4, 0x19

    if-eq v2, v4, :cond_c4

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_a3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_82

    const/16 v4, 0x32

    if-eq v2, v4, :cond_62

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_42

    .line 4009
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_37
    move v1, v3

    goto :goto_b

    :catchall_39
    move-exception p1

    goto/16 :goto_eb

    :catch_3c
    move-exception p1

    goto/16 :goto_dc

    :catch_3f
    move-exception p1

    goto/16 :goto_e6

    .line 3997
    :cond_42
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_4a

    .line 3998
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 4000
    :cond_4a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 4002
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 4003
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_b

    .line 3984
    :cond_62
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_6a

    .line 3985
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 3987
    :cond_6a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 3989
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 3990
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_b

    .line 3971
    :cond_82
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_8a

    .line 3972
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 3974
    :cond_8a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 3976
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 3977
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto/16 :goto_b

    .line 3958
    :cond_a3
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v2, :cond_ab

    .line 3959
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v5

    .line 3961
    :cond_ab
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v5, :cond_b

    .line 3963
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 3964
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto/16 :goto_b

    .line 3953
    :cond_c4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxDiskAppliedPercent_:D

    goto/16 :goto_b

    .line 3948
    :cond_cc
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minDiskAppliedPercent_:D

    goto/16 :goto_b

    .line 3943
    :cond_d4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->score_:D
    :try_end_da
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_da} :catch_3f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_da} :catch_3c
    .catchall {:try_start_d .. :try_end_da} :catchall_39

    goto/16 :goto_b

    .line 4020
    :goto_dc
    :try_start_dc
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4021
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 4018
    :goto_e6
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_39

    .line 4023
    :goto_eb
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 4025
    throw p1

    .line 4023
    :cond_f5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3899
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3906
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4237
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 3899
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4100()Z
    .registers 1

    .line 3899
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D
    .registers 3

    .line 3899
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->score_:D

    return-wide p1
.end method

.method public static synthetic access$4402(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D
    .registers 3

    .line 3899
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minDiskAppliedPercent_:D

    return-wide p1
.end method

.method public static synthetic access$4502(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D
    .registers 3

    .line 3899
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxDiskAppliedPercent_:D

    return-wide p1
.end method

.method public static synthetic access$4602(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 3899
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$4702(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 3899
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$4802(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 3899
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$4902(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 3899
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p1
.end method

.method public static synthetic access$5000(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 3899
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5100()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 3899
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 1

    .line 5470
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4029
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_EvictionPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 1

    .line 4467
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 4470
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4440
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4441
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4447
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4448
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4408
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4414
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4453
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4454
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4460
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4461
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4428
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4429
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4435
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4436
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4397
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4403
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4418
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4424
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation

    .line 5485
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 4319
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    if-nez v1, :cond_d

    .line 4320
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4322
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    .line 4324
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 4326
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v3

    .line 4325
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    return v2

    .line 4327
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 4329
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v5

    .line 4328
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3a

    return v2

    .line 4330
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 4332
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v5

    .line 4331
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4f

    return v2

    .line 4333
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxTtlSeconds()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxTtlSeconds()Z

    move-result v3

    if-eq v1, v3, :cond_5a

    return v2

    .line 4334
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxTtlSeconds()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 4336
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    .line 4338
    :cond_6f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMinFrequency()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMinFrequency()Z

    move-result v3

    if-eq v1, v3, :cond_7a

    return v2

    .line 4339
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMinFrequency()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 4340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 4341
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    return v2

    .line 4343
    :cond_8f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxImageSizeBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxImageSizeBytes()Z

    move-result v3

    if-eq v1, v3, :cond_9a

    return v2

    .line 4344
    :cond_9a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxImageSizeBytes()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 4345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 4346
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    .line 4348
    :cond_af
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxVideoSizeBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxVideoSizeBytes()Z

    move-result v3

    if-eq v1, v3, :cond_ba

    return v2

    .line 4349
    :cond_ba
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxVideoSizeBytes()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 4350
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 4351
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    return v2

    .line 4353
    :cond_cf
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    return v2

    :cond_da
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2

    .line 5495
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object v0
.end method

.method public getMaxDiskAppliedPercent()D
    .registers 3

    .line 4082
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxDiskAppliedPercent_:D

    return-wide v0
.end method

.method public getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 4185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaxImageSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 4196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 4109
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaxTtlSecondsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 4120
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 4223
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMaxVideoSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 4234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getMinDiskAppliedPercent()D
    .registers 3

    .line 4067
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minDiskAppliedPercent_:D

    return-wide v0
.end method

.method public getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 4147
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMinFrequencyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 4158
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation

    .line 5490
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getScore()D
    .registers 3

    .line 4052
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->score_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 4277
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 4281
    :cond_6
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->score_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    .line 4283
    invoke-static {v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 4285
    :goto_15
    iget-wide v4, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minDiskAppliedPercent_:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    .line 4287
    invoke-static {v1, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4289
    :cond_21
    iget-wide v4, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxDiskAppliedPercent_:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    .line 4291
    invoke-static {v1, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4293
    :cond_2d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v1, :cond_3b

    const/4 v1, 0x4

    .line 4295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4297
    :cond_3b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v1, :cond_49

    const/4 v1, 0x5

    .line 4299
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4301
    :cond_49
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v1, :cond_57

    const/4 v1, 0x6

    .line 4303
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4305
    :cond_57
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v1, :cond_65

    const/4 v1, 0x7

    .line 4307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4309
    :cond_65
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4310
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 3921
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMaxImageSizeBytes()Z
    .registers 2

    .line 4173
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaxTtlSeconds()Z
    .registers 2

    .line 4097
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaxVideoSizeBytes()Z
    .registers 2

    .line 4211
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinFrequency()Z
    .registers 2

    .line 4135
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 4359
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 4363
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 4366
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 4365
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 4369
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 4368
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 4372
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 4371
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 4373
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxTtlSeconds()Z

    move-result v0

    if-eqz v0, :cond_5e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 4375
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4377
    :cond_5e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMinFrequency()Z

    move-result v0

    if-eqz v0, :cond_73

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 4379
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4381
    :cond_73
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxImageSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_88

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 4383
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4385
    :cond_88
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxVideoSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_9d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 4387
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_9d
    mul-int/lit8 v1, v1, 0x1d

    .line 4389
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4390
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 4035
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_EvictionPolicy_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4036
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 4240
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 4244
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3899
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 4465
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 4

    .line 4481
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 3915
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4474
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 4475
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4251
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->score_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 4252
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 4254
    :cond_c
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minDiskAppliedPercent_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_16

    const/4 v4, 0x2

    .line 4255
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 4257
    :cond_16
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxDiskAppliedPercent_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    .line 4258
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 4260
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    .line 4261
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4263
    :cond_2c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_38

    const/4 v0, 0x5

    .line 4264
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4266
    :cond_38
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_44

    const/4 v0, 0x6

    .line 4267
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4269
    :cond_44
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_50

    const/4 v0, 0x7

    .line 4270
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4272
    :cond_50
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.EvictionPolicy.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$EvictionPolicy$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5474
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5480
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5474
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.EvictionPolicy.Builder (io.bidmachine.protobuf.sdk.AssetCache$EvictionPolicy$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;"
    }
.end annotation


# instance fields
.field private maxDiskAppliedPercent_:D

.field private maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private minDiskAppliedPercent_:D

.field private minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private score_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4505
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4506
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 4511
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 4512
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 4487
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 4487
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4493
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_EvictionPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMaxImageSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5282
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5283
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5285
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 5286
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5287
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5288
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5290
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMaxTtlSecondsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4972
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4973
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4975
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 4976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4978
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4980
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMaxVideoSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5437
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5438
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 5441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5443
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5445
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMinFrequencyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5127
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5128
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5130
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    .line 5131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5133
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5135
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 4516
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4635
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3

    .line 4568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    .line 4569
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 4570
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 4

    .line 4577
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 4578
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->score_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4302(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D

    .line 4579
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minDiskAppliedPercent_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4402(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D

    .line 4580
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxDiskAppliedPercent_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4502(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;D)D

    .line 4581
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1f

    .line 4582
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4602(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_28

    .line 4584
    :cond_1f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4602(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4586
    :goto_28
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_32

    .line 4587
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4702(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_3b

    .line 4589
    :cond_32
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4702(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4591
    :goto_3b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_45

    .line 4592
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4802(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_4e

    .line 4594
    :cond_45
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4802(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4596
    :goto_4e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_58

    .line 4597
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4902(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_61

    .line 4599
    :cond_58
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$4902(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4601
    :goto_61
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4521
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 4522
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->score_:D

    .line 4524
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minDiskAppliedPercent_:D

    .line 4526
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxDiskAppliedPercent_:D

    .line 4528
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 4529
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_17

    .line 4531
    :cond_13
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4532
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4534
    :goto_17
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 4535
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_22

    .line 4537
    :cond_1e
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4538
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4540
    :goto_22
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_29

    .line 4541
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_2d

    .line 4543
    :cond_29
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4544
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4546
    :goto_2d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_34

    .line 4547
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0

    .line 4549
    :cond_34
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4550
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 4618
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public clearMaxDiskAppliedPercent()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 4823
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxDiskAppliedPercent_:D

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5236
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5239
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5240
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4925
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4926
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4929
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4930
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5390
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5391
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5394
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5395
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMinDiskAppliedPercent()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 4780
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minDiskAppliedPercent_:D

    .line 4781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5080
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5081
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5084
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5085
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 4623
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public clearScore()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 4737
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->score_:D

    .line 4738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 4607
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 2

    .line 4563
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 4558
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_EvictionPolicy_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxDiskAppliedPercent()D
    .registers 3

    .line 4796
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxDiskAppliedPercent_:D

    return-wide v0
.end method

.method public getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5161
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5162
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5164
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMaxImageSizeBytesBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 5254
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5255
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxImageSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMaxImageSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 5265
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5266
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 5268
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 5269
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 4851
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4852
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4854
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMaxTtlSecondsBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 4944
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4945
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxTtlSecondsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMaxTtlSecondsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 4955
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4956
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 4958
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 4959
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5316
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5317
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5319
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMaxVideoSizeBytesBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 5409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5410
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMaxVideoSizeBytesFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMaxVideoSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 5420
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5421
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 5423
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 5424
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMinDiskAppliedPercent()D
    .registers 3

    .line 4753
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minDiskAppliedPercent_:D

    return-wide v0
.end method

.method public getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 5006
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5007
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5009
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getMinFrequencyBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 5099
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5100
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->getMinFrequencyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public getMinFrequencyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
    .registers 2

    .line 5110
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;

    return-object v0

    .line 5113
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v0, :cond_13

    .line 5114
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getScore()D
    .registers 3

    .line 4710
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->score_:D

    return-wide v0
.end method

.method public hasMaxImageSizeBytes()Z
    .registers 2

    .line 5150
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

.method public hasMaxTtlSeconds()Z
    .registers 2

    .line 4840
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

.method public hasMaxVideoSizeBytes()Z
    .registers 2

    .line 5305
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

.method public hasMinFrequency()Z
    .registers 2

    .line 4995
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

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

    .line 4499
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_EvictionPolicy_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4500
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

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

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

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

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

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

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

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4687
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$5100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 4693
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 4689
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 4690
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

    .line 4693
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4695
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4639
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    if-eqz v0, :cond_b

    .line 4640
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1

    .line 4642
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 6

    .line 4648
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4649
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_18

    .line 4650
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setScore(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4652
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_27

    .line 4653
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setMinDiskAppliedPercent(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4655
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_36

    .line 4656
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setMaxDiskAppliedPercent(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4658
    :cond_36
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxTtlSeconds()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4659
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeMaxTtlSeconds(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4661
    :cond_43
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMinFrequency()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4662
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeMinFrequency(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4664
    :cond_50
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxImageSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4665
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeMaxImageSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4667
    :cond_5d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->hasMaxVideoSizeBytes()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 4668
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeMaxVideoSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4670
    :cond_6a
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->access$5000(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    .line 4671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMaxImageSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5213
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5214
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 5216
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 5218
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5220
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5222
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMaxTtlSeconds(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4903
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4904
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 4906
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 4908
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4910
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4912
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMaxVideoSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5368
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5369
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 5371
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 5373
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5375
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5377
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMinFrequency(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5058
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5059
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_17

    .line 5061
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    goto :goto_19

    .line 5063
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5065
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5067
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 5456
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 4487
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4613
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public setMaxDiskAppliedPercent(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4809
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxDiskAppliedPercent_:D

    .line 4810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxImageSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5196
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5197
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5200
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxImageSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5175
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5179
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxImageSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5182
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxTtlSeconds(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4886
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4887
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4890
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxTtlSeconds(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4865
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSecondsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4869
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxTtlSeconds_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 4870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4872
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxVideoSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5351
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5352
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5355
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMaxVideoSizeBytes(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5330
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytesBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5334
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->maxVideoSizeBytes_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5337
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMinDiskAppliedPercent(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4766
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minDiskAppliedPercent_:D

    .line 4767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinFrequency(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5041
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5042
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5043
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5045
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMinFrequency(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 5020
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequencyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5024
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->minFrequency_:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 5025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5027
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 4487
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 4487
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 4

    .line 4629
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public setScore(D)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 4723
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->score_:D

    .line 4724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4487
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 2

    .line 5450
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.EvictionPolicyOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$EvictionPolicyOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EvictionPolicyOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getMaxDiskAppliedPercent()D
.end method

.method public abstract getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMaxImageSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMaxTtlSecondsOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMaxVideoSizeBytesOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract getMinDiskAppliedPercent()D
.end method

.method public abstract getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end method

.method public abstract getMinFrequencyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.end method

.method public abstract getScore()D
.end method

.method public abstract hasMaxImageSizeBytes()Z
.end method

.method public abstract hasMaxTtlSeconds()Z
.end method

.method public abstract hasMaxVideoSizeBytes()Z
.end method

.method public abstract hasMinFrequency()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyConfiguration (io.bidmachine.protobuf.sdk.AssetCache$PolicyConfiguration)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

.field public static final DOWNLOAD_POLICY_FIELD_NUMBER:I = 0x1

.field public static final EVICTION_POLICIES_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

.field private evictionPolicies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3720
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 3728
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2673
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2863
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->memoizedIsInitialized:B

    .line 2674
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2693
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>()V

    .line 2695
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2699
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_88

    .line 2703
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    const/16 v5, 0xa

    if-eq v3, v5, :cond_43

    const/16 v5, 0x12

    if-eq v3, v5, :cond_2b

    .line 2731
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_23
    move v1, v4

    goto :goto_c

    :catchall_25
    move-exception p1

    goto :goto_74

    :catch_27
    move-exception p1

    goto :goto_65

    :catch_29
    move-exception p1

    goto :goto_6f

    :cond_2b
    if-nez v2, :cond_35

    .line 2723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    move v2, v4

    .line 2726
    :cond_35
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    .line 2727
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 2726
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2710
    :cond_43
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v3, :cond_4c

    .line 2711
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    .line 2713
    :goto_4d
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v3, :cond_c

    .line 2715
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    .line 2716
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    :try_end_64
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_64} :catch_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_64} :catch_27
    .catchall {:try_start_e .. :try_end_64} :catchall_25

    goto :goto_c

    .line 2742
    :goto_65
    :try_start_65
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2743
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2740
    :goto_6f
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_25

    :goto_74
    if-eqz v2, :cond_7e

    .line 2746
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    .line 2748
    :cond_7e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2750
    throw p1

    :cond_88
    if-eqz v2, :cond_92

    .line 2746
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    .line 2748
    :cond_92
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2664
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2671
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2863
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 2664
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3100()Z
    .registers 1

    .line 2664
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3302(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2

    .line 2664
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object p1
.end method

.method public static synthetic access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;
    .registers 1

    .line 2664
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$3402(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 2664
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$3500()Z
    .registers 1

    .line 2664
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3600(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2664
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2664
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 1

    .line 3724
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2754
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 1

    .line 3019
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3022
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2992
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2993
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3000
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2960
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2966
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3005
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3006
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3012
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3013
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2980
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2981
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2987
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2988
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2949
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2955
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2970
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2976
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
            ">;"
        }
    .end annotation

    .line 3739
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2910
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-nez v1, :cond_d

    .line 2911
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2913
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    .line 2915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hasDownloadPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hasDownloadPolicy()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 2916
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hasDownloadPolicy()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2917
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v1

    .line 2918
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 2920
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getEvictionPoliciesList()Ljava/util/List;

    move-result-object v1

    .line 2921
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getEvictionPoliciesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v3

    .line 2922
    :cond_3f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v3

    :cond_4a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2

    .line 3749
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    return-object v0
.end method

.method public getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2

    .line 2789
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDownloadPolicyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;
    .registers 2

    .line 2800
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEvictionPolicies(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3

    .line 2848
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p1
.end method

.method public getEvictionPoliciesCount()I
    .registers 2

    .line 2837
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEvictionPoliciesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation

    .line 2814
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getEvictionPoliciesOrBuilder(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;
    .registers 3

    .line 2860
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;

    return-object p1
.end method

.method public getEvictionPoliciesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2826
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
            ">;"
        }
    .end annotation

    .line 3744
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 2888
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2892
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2894
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 2896
    :goto_16
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 2897
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    .line 2898
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2900
    :cond_2f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2901
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2687
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDownloadPolicy()Z
    .registers 2

    .line 2777
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2928
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2932
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2933
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hasDownloadPolicy()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2935
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2937
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getEvictionPoliciesCount()I

    move-result v0

    if-lez v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2939
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getEvictionPoliciesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3a
    mul-int/lit8 v1, v1, 0x1d

    .line 2941
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2942
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2760
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 2761
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2866
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2870
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2664
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3017
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3033
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2681
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3026
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3027
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

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

    .line 2877
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v0, :cond_c

    .line 2878
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_c
    const/4 v0, 0x0

    .line 2880
    :goto_d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2881
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2883
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyConfiguration.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$PolicyConfiguration$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3728
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3734
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3728
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyConfiguration.Builder (io.bidmachine.protobuf.sdk.AssetCache$PolicyConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

.field private evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private evictionPolicies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3057
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3391
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3058
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3063
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3391
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3064
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 3039
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 3039
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;-><init>()V

    return-void
.end method

.method private ensureEvictionPoliciesIsMutable()V
    .registers 3

    .line 3393
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 3394
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3395
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3045
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDownloadPolicyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3379
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3380
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v1

    .line 3383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3385
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3387
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3690
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 3691
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 3695
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3697
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3699
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 3068
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3069
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllEvictionPolicies(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;"
        }
    .end annotation

    .line 3569
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 3570
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3571
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3575
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvictionPolicies(ILio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3551
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3552
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3553
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3556
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvictionPolicies(ILio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3512
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3514
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3516
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3517
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3520
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvictionPolicies(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3533
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3534
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3535
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3538
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvictionPolicies(Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3491
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3495
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3496
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3499
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvictionPoliciesBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 3661
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3662
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v1

    .line 3661
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object v0
.end method

.method public addEvictionPoliciesBuilder(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 4

    .line 3673
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3674
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object v1

    .line 3673
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3162
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3

    .line 3103
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    .line 3104
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3105
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 3

    .line 3112
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 3114
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 3115
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3302(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    goto :goto_19

    .line 3117
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3302(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3119
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_37

    .line 3120
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 3121
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3122
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    .line 3124
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3402(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Ljava/util/List;)Ljava/util/List;

    goto :goto_3e

    .line 3126
    :cond_37
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3402(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;Ljava/util/List;)Ljava/util/List;

    .line 3128
    :goto_3e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3074
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3075
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3076
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    goto :goto_f

    .line 3078
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3079
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3081
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 3082
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3083
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    return-object p0

    .line 3085
    :cond_1e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3332
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3333
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3336
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3337
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearEvictionPolicies()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3587
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 3588
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3589
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    .line 3590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3592
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3145
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3150
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3134
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    .registers 2

    .line 3098
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3093
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
    .registers 2

    .line 3258
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3259
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3261
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    return-object v0
.end method

.method public getDownloadPolicyBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;
    .registers 2

    .line 3351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3352
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getDownloadPolicyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    return-object v0
.end method

.method public getDownloadPolicyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;
    .registers 2

    .line 3362
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3363
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;

    return-object v0

    .line 3365
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-nez v0, :cond_13

    .line 3366
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getEvictionPolicies(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
    .registers 3

    .line 3438
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3439
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p1

    .line 3441
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    return-object p1
.end method

.method public getEvictionPoliciesBuilder(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;
    .registers 3

    .line 3622
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;

    return-object p1
.end method

.method public getEvictionPoliciesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;",
            ">;"
        }
    .end annotation

    .line 3685
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEvictionPoliciesCount()I
    .registers 2

    .line 3424
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 3425
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3427
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEvictionPoliciesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation

    .line 3410
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 3411
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3413
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEvictionPoliciesOrBuilder(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;
    .registers 3

    .line 3633
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3634
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;

    return-object p1

    .line 3635
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;

    return-object p1
.end method

.method public getEvictionPoliciesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3647
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 3648
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3650
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDownloadPolicy()Z
    .registers 2

    .line 3247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

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

    .line 3051
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 3052
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

.method public mergeDownloadPolicy(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3310
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3311
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    if-eqz v0, :cond_17

    .line 3313
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    goto :goto_19

    .line 3315
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3317
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3319
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

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

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

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

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

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

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

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3222
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 3228
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 3224
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 3225
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

    .line 3228
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 3230
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3166
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    if-eqz v0, :cond_b

    .line 3167
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 3169
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3175
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3176
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->hasDownloadPolicy()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeDownloadPolicy(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 3179
    :cond_14
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_47

    .line 3180
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 3181
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3182
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3183
    iget v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    goto :goto_43

    .line 3185
    :cond_37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3186
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3188
    :goto_43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_83

    .line 3191
    :cond_47
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 3192
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3193
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 3194
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3195
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    .line 3196
    iget v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->bitField0_:I

    .line 3198
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3500()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 3199
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->getEvictionPoliciesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_77
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_83

    .line 3201
    :cond_7a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3400(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3205
    :cond_83
    :goto_83
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->access$3600(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    .line 3206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3710
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public removeEvictionPolicies(I)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3604
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 3605
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3606
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3609
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setDownloadPolicy(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3293
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3294
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3297
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDownloadPolicy(Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3272
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3276
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->downloadPolicy_:Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    .line 3277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3279
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setEvictionPolicies(ILio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3474
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3475
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3476
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3479
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEvictionPolicies(ILio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3453
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPoliciesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3455
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3457
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->ensureEvictionPoliciesIsMutable()V

    .line 3458
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->evictionPolicies_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3461
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3039
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 3

    .line 3140
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3039
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3039
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 4

    .line 3156
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;
    .registers 2

    .line 3704
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyConfigurationOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$PolicyConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PolicyConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;
.end method

.method public abstract getDownloadPolicyOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicyOrBuilder;
.end method

.method public abstract getEvictionPolicies(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;
.end method

.method public abstract getEvictionPoliciesCount()I
.end method

.method public abstract getEvictionPoliciesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEvictionPoliciesOrBuilder(I)Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;
.end method

.method public abstract getEvictionPoliciesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicyOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDownloadPolicy()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyLimit (io.bidmachine.protobuf.sdk.AssetCache$PolicyLimit)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyLimit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            ">;"
        }
    .end annotation
.end field

.field public static final THRESHOLD_FIELD_NUMBER:I = 0x1

.field public static final WEIGHT_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private threshold_:J

.field private weight_:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6971
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6979
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 6472
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6569
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6491
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>()V

    .line 6493
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6496
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 6500
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2a

    .line 6516
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

    .line 6512
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->weight_:D

    goto :goto_b

    .line 6507
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->threshold_:J
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 6527
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 6528
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 6525
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 6530
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 6532
    throw p1

    .line 6530
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6463
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 6470
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 6569
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 6463
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$6400()Z
    .registers 1

    .line 6463
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$6602(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;J)J
    .registers 3

    .line 6463
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->threshold_:J

    return-wide p1
.end method

.method public static synthetic access$6702(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;D)D
    .registers 3

    .line 6463
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->weight_:D

    return-wide p1
.end method

.method public static synthetic access$6800(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 6463
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$6900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 6463
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 1

    .line 6975
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6536
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyLimit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 1

    .line 6721
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6724
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6694
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6695
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6701
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6702
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6662
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6668
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6707
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6708
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6714
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6715
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6682
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6683
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6689
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6690
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6651
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6657
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6672
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6678
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            ">;"
        }
    .end annotation

    .line 6990
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 6616
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-nez v1, :cond_d

    .line 6617
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6619
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    .line 6621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v1

    .line 6622
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 6623
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 6625
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v5

    .line 6624
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    .line 6626
    :cond_32
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    return v2

    :cond_3d
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 7000
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
            ">;"
        }
    .end annotation

    .line 6995
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 6594
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6598
    :cond_6
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->threshold_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 6600
    invoke-static {v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6602
    :goto_15
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->weight_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_23

    const/4 v3, 0x2

    .line 6604
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 6606
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6607
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getThreshold()J
    .registers 3

    .line 6555
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->threshold_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 6485
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWeight()D
    .registers 3

    .line 6566
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->weight_:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 6632
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 6636
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 6639
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v2

    .line 6638
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 6642
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 6641
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 6643
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6644
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 6542
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyLimit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6543
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 6572
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 6576
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6463
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6719
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->newBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 4

    .line 6735
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 6479
    new-instance p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6728
    sget-object v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 6729
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;-><init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

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

    .line 6583
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->threshold_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    .line 6584
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6586
    :cond_c
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->weight_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    .line 6587
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6589
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyLimit.AnonymousClass1 (io.bidmachine.protobuf.sdk.AssetCache$PolicyLimit$1)
.class Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6979
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6985
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6979
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyLimit.Builder (io.bidmachine.protobuf.sdk.AssetCache$PolicyLimit$Builder)
.class public final Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AssetCache.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;"
    }
.end annotation


# instance fields
.field private threshold_:J

.field private weight_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 6759
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 6760
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 6765
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6766
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 3

    .line 6741
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/AssetCache$1;)V
    .registers 2

    .line 6741
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6747
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyLimit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 6770
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->access$6400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6842
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 3

    .line 6796
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    .line 6797
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 6798
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 4

    .line 6805
    new-instance v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/AssetCache$1;)V

    .line 6806
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->threshold_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->access$6602(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;J)J

    .line 6807
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->weight_:D

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->access$6702(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;D)D

    .line 6808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6775
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 6776
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->threshold_:J

    const-wide/16 v0, 0x0

    .line 6778
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->weight_:D

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6825
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6830
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public clearThreshold()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 6917
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->threshold_:J

    .line 6918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWeight()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 6948
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->weight_:D

    .line 6949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6814
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->clone()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    .registers 2

    .line 6791
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 6786
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyLimit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getThreshold()J
    .registers 3

    .line 6898
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->threshold_:J

    return-wide v0
.end method

.method public getWeight()D
    .registers 3

    .line 6929
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->weight_:D

    return-wide v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 6753
    sget-object v0, Lio/bidmachine/protobuf/sdk/CacheProto;->internal_static_bidmachine_protobuf_sdk_cache_AssetCache_PolicyLimit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    const-class v2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6754
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

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

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

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

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

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

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

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6879
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->access$6900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 6885
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 6881
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 6882
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

    .line 6885
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6887
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6846
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    if-eqz v0, :cond_b

    .line 6847
    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1

    .line 6849
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 6

    .line 6855
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 6856
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 6857
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setThreshold(J)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6859
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_29

    .line 6860
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setWeight(D)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6862
    :cond_29
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->access$6800(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    .line 6863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6961
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6741
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6820
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 6741
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 6741
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 4

    .line 6836
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public setThreshold(J)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6907
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->threshold_:J

    .line 6908
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6741
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 2

    .line 6955
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;

    return-object p1
.end method

.method public setWeight(D)Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;
    .registers 3

    .line 6938
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit$Builder;->weight_:D

    .line 6939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.sdk.AssetCache.PolicyLimitOrBuilder (io.bidmachine.protobuf.sdk.AssetCache$PolicyLimitOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimitOrBuilder;
.super Ljava/lang/Object;
.source "AssetCache.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PolicyLimitOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getThreshold()J
.end method

.method public abstract getWeight()D
.end method

.method public abstract synthetic isInitialized()Z
.end method
