###### Class io.bidmachine.protobuf.sdk.ViewabilityConfiguration (io.bidmachine.protobuf.sdk.ViewabilityConfiguration)
.class public final Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ViewabilityConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private rules_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 829
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 837
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 157
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_62

    .line 48
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    const/16 v5, 0xa

    if-eq v3, v5, :cond_27

    .line 63
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_1f
    move v1, v4

    goto :goto_c

    :catchall_21
    move-exception p1

    goto :goto_4e

    :catch_23
    move-exception p1

    goto :goto_3f

    :catch_25
    move-exception p1

    goto :goto_49

    :cond_27
    if-nez v2, :cond_31

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    move v2, v4

    .line 58
    :cond_31
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    .line 59
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_3e} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3e} :catch_23
    .catchall {:try_start_e .. :try_end_3e} :catchall_21

    goto :goto_c

    .line 74
    :goto_3f
    :try_start_3f
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 75
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 72
    :goto_49
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_21

    :goto_4e
    if-eqz v2, :cond_58

    .line 78
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    .line 80
    :cond_58
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 82
    throw p1

    :cond_62
    if-eqz v2, :cond_6c

    .line 78
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    .line 80
    :cond_6c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 157
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$500()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 1

    .line 833
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 86
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 1

    .line 297
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 300
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 271
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 278
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 284
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 291
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 259
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 266
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 248
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
            ">;"
        }
    .end annotation

    .line 848
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 197
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-nez v1, :cond_d

    .line 198
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 200
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 202
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getRulesList()Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getRulesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 204
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2

    .line 858
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
            ">;"
        }
    .end annotation

    .line 853
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRules(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3

    .line 142
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p1
.end method

.method public getRulesCount()I
    .registers 2

    .line 131
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;
    .registers 3

    .line 154
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 179
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 183
    :goto_8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 184
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    .line 185
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 187
    :cond_21
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 188
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 210
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 214
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getRulesCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getRulesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 219
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 220
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 92
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 160
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 164
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 295
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->newBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 311
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 304
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 305
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

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

    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 172
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->rules_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.ViewabilityConfiguration.AnonymousClass1 (io.bidmachine.protobuf.sdk.ViewabilityConfiguration$1)
.class Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "ViewabilityConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 837
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 843
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 837
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.ViewabilityConfiguration.Builder (io.bidmachine.protobuf.sdk.ViewabilityConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ViewabilityConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 335
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 500
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 336
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 341
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 500
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 342
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V
    .registers 3

    .line 317
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V
    .registers 2

    .line 317
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;-><init>()V

    return-void
.end method

.method private ensureRulesIsMutable()V
    .registers 3

    .line 502
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 504
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 323
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 800
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 804
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 806
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 808
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 346
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 347
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 679
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 680
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 684
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 429
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public addRules(ILio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 660
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 661
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 662
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 665
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(ILio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 623
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 626
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 629
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 642
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 643
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 644
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 647
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 600
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 608
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRulesBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 770
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 771
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object v0
.end method

.method public addRulesBuilder(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 782
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 783
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v1

    .line 782
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 3

    .line 375
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 377
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 4

    .line 384
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$1;)V

    .line 385
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    .line 386
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_24

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    .line 388
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 389
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    .line 391
    :cond_1e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$402(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;Ljava/util/List;)Ljava/util/List;

    goto :goto_2b

    .line 393
    :cond_24
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$402(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;Ljava/util/List;)Ljava/util/List;

    .line 395
    :goto_2b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 352
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 353
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 354
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 355
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    return-object p0

    .line 357
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 412
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 417
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public clearRules()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 696
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 697
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 698
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    .line 699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 701
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 401
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2

    .line 370
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 365
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRules(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3

    .line 547
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 548
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p1

    .line 550
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p1
.end method

.method public getRulesBuilder(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 731
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public getRulesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;",
            ">;"
        }
    .end annotation

    .line 794
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .registers 2

    .line 533
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 534
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 536
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 520
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 522
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;
    .registers 3

    .line 742
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 743
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;

    return-object p1

    .line 744
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 757
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 759
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 329
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    const-class v2, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    .line 330
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

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

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

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

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

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

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

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 486
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 492
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 488
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 489
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

    .line 492
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    .line 494
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 433
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-eqz v0, :cond_b

    .line 434
    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 436
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 442
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 443
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3a

    .line 444
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 445
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 446
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 447
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    goto :goto_36

    .line 449
    :cond_2a
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 450
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    :goto_36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_76

    .line 455
    :cond_3a
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 456
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 457
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 459
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    .line 460
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->bitField0_:I

    .line 462
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$500()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 463
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6a
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_76

    .line 465
    :cond_6d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$400(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 469
    :cond_76
    :goto_76
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->access$600(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    .line 470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 819
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public removeRules(I)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 713
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 714
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 715
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 718
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 3

    .line 407
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method

.method public setRules(ILio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 583
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 584
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 585
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 588
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRules(ILio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 4

    .line 562
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 564
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->ensureRulesIsMutable()V

    .line 567
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 570
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 813
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object p1
.end method
