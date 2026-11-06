###### Class io.bidmachine.protobuf.SdkCrashSignalConfig (io.bidmachine.protobuf.SdkCrashSignalConfig)
.class public final Lio/bidmachine/protobuf/SdkCrashSignalConfig;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkCrashSignalConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    }
.end annotation


# static fields
.field public static final ANR_TRACKING_ENABLED_FIELD_NUMBER:I = 0x2

.field public static final CRASH_TRACKING_ENABLED_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private anrTrackingEnabled_:Z

.field private crashTrackingEnabled_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 556
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 564
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 50
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 66
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

    .line 62
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->anrTrackingEnabled_:Z

    goto :goto_b

    .line 57
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->crashTrackingEnabled_:Z
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 77
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 78
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 75
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 80
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 82
    throw p1

    .line 80
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 127
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Z)Z
    .registers 2

    .line 13
    iput-boolean p1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->crashTrackingEnabled_:Z

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Z)Z
    .registers 2

    .line 13
    iput-boolean p1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->anrTrackingEnabled_:Z

    return p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 1

    .line 560
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 86
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkCrashSignalConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 1

    .line 278
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 281
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 252
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 259
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 240
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 247
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
            ">;"
        }
    .end annotation

    .line 575
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 174
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-nez v1, :cond_d

    .line 175
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 177
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result v1

    .line 180
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 181
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result v1

    .line 182
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 183
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

.method public getAnrTrackingEnabled()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->anrTrackingEnabled_:Z

    return v0
.end method

.method public getCrashTrackingEnabled()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->crashTrackingEnabled_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2

    .line 585
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
            ">;"
        }
    .end annotation

    .line 580
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 152
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 156
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->crashTrackingEnabled_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 158
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 160
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->anrTrackingEnabled_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 162
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 189
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 193
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result v0

    .line 195
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result v0

    .line 198
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 200
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 201
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 92
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkCrashSignalConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 130
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 276
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->newBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 4

    .line 292
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 3

    .line 285
    sget-object v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 286
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

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

    .line 141
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->crashTrackingEnabled_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 144
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->anrTrackingEnabled_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 145
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.SdkCrashSignalConfig.AnonymousClass1 (io.bidmachine.protobuf.SdkCrashSignalConfig$1)
.class Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SdkCrashSignalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkCrashSignalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 570
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.SdkCrashSignalConfig.Builder (io.bidmachine.protobuf.SdkCrashSignalConfig$Builder)
.class public final Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkCrashSignalConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkCrashSignalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private anrTrackingEnabled_:Z

.field private crashTrackingEnabled_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 321
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 326
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 327
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V
    .registers 3

    .line 302
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V
    .registers 2

    .line 302
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 308
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkCrashSignalConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 331
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 3

    .line 403
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->build()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->build()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 359
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 3

    .line 366
    new-instance v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkCrashSignalConfig$1;)V

    .line 367
    iget-boolean v1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->crashTrackingEnabled_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->access$402(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Z)Z

    .line 368
    iget-boolean v1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->anrTrackingEnabled_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->access$502(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Z)Z

    .line 369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 336
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->crashTrackingEnabled_:Z

    .line 339
    iput-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->anrTrackingEnabled_:Z

    return-object p0
.end method

.method public clearAnrTrackingEnabled()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->anrTrackingEnabled_:Z

    .line 534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCrashTrackingEnabled()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->crashTrackingEnabled_:Z

    .line 491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 386
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 391
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 375
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnrTrackingEnabled()Z
    .registers 2

    .line 506
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->anrTrackingEnabled_:Z

    return v0
.end method

.method public getCrashTrackingEnabled()Z
    .registers 2

    .line 463
    iget-boolean v0, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->crashTrackingEnabled_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2

    .line 352
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 347
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkCrashSignalConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 314
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkCrashSignalConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 315
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

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

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

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

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

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

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

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 440
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 446
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 442
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 443
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

    .line 446
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 448
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 3

    .line 407
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v0, :cond_b

    .line 408
    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1

    .line 410
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 3

    .line 416
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 417
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 418
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setCrashTrackingEnabled(Z)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 420
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 421
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setAnrTrackingEnabled(Z)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 423
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->access$600(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 546
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public setAnrTrackingEnabled(Z)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 519
    iput-boolean p1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->anrTrackingEnabled_:Z

    .line 520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCrashTrackingEnabled(Z)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 476
    iput-boolean p1, p0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->crashTrackingEnabled_:Z

    .line 477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 3

    .line 381
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 4

    .line 397
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 540
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object p1
.end method
