###### Class io.bidmachine.protobuf.TokenConfiguration (io.bidmachine.protobuf.TokenConfiguration)
.class public final Lio/bidmachine/protobuf/TokenConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "TokenConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final AD_NETWORKS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

.field public static final EXPIRATION_TIME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

.field private expirationTime_:I

.field private memoizedIsInitialized:B

.field private volatile type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 783
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    .line 791
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/TokenConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 193
    iput-byte v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_74

    .line 49
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x10

    if-eq v3, v5, :cond_43

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 75
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_60

    :catch_2b
    move-exception p1

    goto :goto_51

    :catch_2d
    move-exception p1

    goto :goto_5b

    .line 66
    :cond_2f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3d

    .line 68
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v4

    .line 71
    :cond_3d
    iget-object v4, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 62
    :cond_43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/TokenConfiguration;->expirationTime_:I

    goto :goto_c

    .line 55
    :cond_4a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 57
    iput-object v3, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;
    :try_end_50
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_50} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_50} :catch_2b
    .catchall {:try_start_e .. :try_end_50} :catchall_29

    goto :goto_c

    .line 86
    :goto_51
    :try_start_51
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 87
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 84
    :goto_5b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_29

    :goto_60
    if-eqz v2, :cond_6a

    .line 90
    iget-object p2, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 92
    :cond_6a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 94
    throw p1

    :cond_74
    if-eqz v2, :cond_7e

    .line 90
    iget-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 92
    :cond_7e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/TokenConfiguration$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 193
    iput-byte p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/TokenConfiguration$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$400(Lio/bidmachine/protobuf/TokenConfiguration;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/TokenConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/TokenConfiguration;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->expirationTime_:I

    return p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/TokenConfiguration;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 1

    .line 787
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 98
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_TokenConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 1

    .line 358
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->toBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 361
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->toBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 332
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 339
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 299
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 305
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 345
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 352
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 320
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 327
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 288
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 309
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 315
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation

    .line 802
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 250
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/TokenConfiguration;

    if-nez v1, :cond_d

    .line 251
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 253
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 257
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result v1

    .line 258
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 259
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    .line 261
    :cond_39
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    return v2

    :cond_44
    return v0
.end method

.method public getAdNetworks(I)Ljava/lang/String;
    .registers 3

    .line 181
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdNetworksBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 190
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdNetworksCount()I
    .registers 2

    .line 173
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 166
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getAdNetworksList()Ljava/util/List;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2

    .line 812
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    return-object v0
.end method

.method public getExpirationTime()I
    .registers 2

    .line 155
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->expirationTime_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation

    .line 807
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 221
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 225
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 226
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 228
    :goto_1a
    iget v2, p0, Lio/bidmachine/protobuf/TokenConfiguration;->expirationTime_:I

    if-eqz v2, :cond_24

    const/4 v3, 0x2

    .line 230
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_24
    move v2, v1

    .line 234
    :goto_25
    iget-object v3, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3b

    .line 235
    iget-object v3, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3b
    add-int/2addr v0, v2

    .line 238
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 117
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    .line 118
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 119
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 121
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 123
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 124
    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 135
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    .line 136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 140
    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    return-object v0

    .line 143
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 267
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 271
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 273
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result v0

    add-int/2addr v1, v0

    .line 276
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksCount()I

    move-result v0

    if-lez v0, :cond_3f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 278
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3f
    mul-int/lit8 v1, v1, 0x1d

    .line 280
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 281
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 104
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_TokenConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/TokenConfiguration;

    const-class v2, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 196
    iget-byte v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 356
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 4

    .line 372
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/TokenConfiguration$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/TokenConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->toBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->toBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 365
    sget-object v0, Lio/bidmachine/protobuf/TokenConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/TokenConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 366
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/TokenConfiguration$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/TokenConfiguration$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

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

    .line 207
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 208
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->type_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 210
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration;->expirationTime_:I

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    .line 211
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_18
    const/4 v0, 0x0

    .line 213
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 214
    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 216
    :cond_2e
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.TokenConfiguration.AnonymousClass1 (io.bidmachine.protobuf.TokenConfiguration$1)
.class Lio/bidmachine/protobuf/TokenConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "TokenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/TokenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/TokenConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 791
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 797
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/TokenConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.TokenConfiguration.Builder (io.bidmachine.protobuf.TokenConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/TokenConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "TokenConfiguration.java"

# interfaces
.implements Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/TokenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

.field private bitField0_:I

.field private expirationTime_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 396
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 397
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 402
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 548
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 655
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 403
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/TokenConfiguration$1;)V
    .registers 3

    .line 378
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/TokenConfiguration$1;)V
    .registers 2

    .line 378
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;-><init>()V

    return-void
.end method

.method private ensureAdNetworksIsMutable()V
    .registers 3

    .line 657
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 658
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 659
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 384
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_TokenConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 407
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAdNetworks(Ljava/lang/String;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->ensureAdNetworksIsMutable()V

    .line 721
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAdNetworksBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 759
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->ensureAdNetworksIsMutable()V

    .line 760
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllAdNetworks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;"
        }
    .end annotation

    .line 732
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->ensureAdNetworksIsMutable()V

    .line 733
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 487
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3

    .line 435
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 437
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3

    .line 444
    new-instance v0, Lio/bidmachine/protobuf/TokenConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/TokenConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/TokenConfiguration$1;)V

    .line 446
    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$402(Lio/bidmachine/protobuf/TokenConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->expirationTime_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$502(Lio/bidmachine/protobuf/TokenConfiguration;I)I

    .line 448
    iget v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    .line 449
    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 450
    iget v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    .line 452
    :cond_24
    iget-object v1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$602(Lio/bidmachine/protobuf/TokenConfiguration;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clear()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clear()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clear()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clear()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 412
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 415
    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->expirationTime_:I

    .line 417
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 418
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAdNetworks()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 743
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 744
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExpirationTime()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 650
    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->expirationTime_:I

    .line 651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 470
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 475
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public clearType()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 603
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 459
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->clone()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworks(I)Ljava/lang/String;
    .registers 3

    .line 683
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdNetworksBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 692
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdNetworksCount()I
    .registers 2

    .line 675
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 668
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdNetworksList()Ljava/util/List;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2

    .line 430
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 425
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_TokenConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExpirationTime()I
    .registers 2

    .line 631
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->expirationTime_:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 554
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 555
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 556
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 558
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 559
    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 562
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 571
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 572
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 573
    check-cast v0, Ljava/lang/String;

    .line 574
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 576
    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 579
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 390
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_TokenConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/TokenConfiguration;

    const-class v2, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 391
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

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

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

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

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

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

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

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 535
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 541
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 537
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/TokenConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 538
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

    .line 541
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 543
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 491
    instance-of v0, p1, Lio/bidmachine/protobuf/TokenConfiguration;

    if-eqz v0, :cond_b

    .line 492
    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 494
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 4

    .line 500
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 501
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 502
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$400(Lio/bidmachine/protobuf/TokenConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 505
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result v0

    if-eqz v0, :cond_27

    .line 506
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setExpirationTime(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 508
    :cond_27
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$600(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 509
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 510
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$600(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    .line 511
    iget v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->bitField0_:I

    goto :goto_52

    .line 513
    :cond_46
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->ensureAdNetworksIsMutable()V

    .line 514
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$600(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    :goto_52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 518
    :cond_55
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$700(Lio/bidmachine/protobuf/TokenConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 519
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 773
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public setAdNetworks(ILjava/lang/String;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 4

    .line 703
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    invoke-direct {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->ensureAdNetworksIsMutable()V

    .line 706
    iget-object v0, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->adNetworks_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setExpirationTime(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 640
    iput p1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->expirationTime_:I

    .line 641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 465
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 4

    .line 481
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    invoke-static {p1}, Lio/bidmachine/protobuf/TokenConfiguration;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 619
    iput-object p1, p0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->type_:Ljava/lang/Object;

    .line 620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 2

    .line 767
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method
