###### Class gatewayprotocol.v1.CampaignMetadataOuterClass (gatewayprotocol.v1.CampaignMetadataOuterClass)
.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.super Ljava/lang/Object;
.source "CampaignMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;,
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;,
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;,
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.AnonymousClass1 (gatewayprotocol.v1.CampaignMetadataOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;
.super Ljava/lang/Object;
.source "CampaignMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 359
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignAsset (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignAsset)
.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignAsset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x2

.field public static final REQUIRED_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private priority_:I

.field private required_:Z

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 410
    new-instance v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;-><init>()V

    .line 413
    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 414
    const-class v1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 1

    .line 43
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearUrl()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;I)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setPriority(I)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearPriority()V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Z)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setRequired(Z)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearRequired()V

    return-void
.end method

.method private clearPriority()V
    .registers 2

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return-void
.end method

.method private clearRequired()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return-void
.end method

.method private clearUrl()V
    .registers 2

    .line 85
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 1

    .line 419
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 1

    .line 227
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 2

    .line 230
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 178
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 425
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPriority(I)V
    .registers 2

    .line 114
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return-void
.end method

.method private setRequired(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 93
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 359
    sget-object p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_58

    .line 403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 397
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 384
    const-class p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    monitor-enter p2

    .line 385
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 387
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 390
    sput-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 392
    :cond_30
    :goto_30
    monitor-exit p2

    return-object p1

    :goto_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p1

    :cond_34
    return-object p1

    .line 379
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p1

    .line 367
    :pswitch_38
    const-string p1, "url_"

    const-string p2, "priority_"

    const-string p3, "required_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 372
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u000b\u0003\u0007"

    .line 375
    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 364
    :pswitch_4b
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;-><init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V

    return-object p1

    .line 361
    :pswitch_51
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;-><init>()V

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getPriority()I
    .registers 2

    .line 106
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return v0
.end method

.method public getRequired()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignAsset.Builder (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignAsset$Builder)
.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 243
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$000()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V
    .registers 2

    .line 236
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPriority()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearRequired()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearUrl()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 2

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public getPriority()I
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRequired()Z
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getRequired()Z

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 3

    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;I)V

    return-object p0
.end method

.method public setRequired(Z)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 3

    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Z)V

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 3

    .line 271
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignAssetOrBuilder (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignAssetOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;
.super Ljava/lang/Object;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CampaignAssetOrBuilder"
.end annotation


# virtual methods
.method public abstract getPriority()I
.end method

.method public abstract getRequired()Z
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/google/protobuf/ByteString;
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignMetadata (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignMetadata)
.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_DELAY_MS_FIELD_NUMBER:I = 0x4

.field public static final ASSETS_TO_CACHE_FIELD_NUMBER:I = 0x3

.field public static final CAMPAIGN_STATE_DATA_FIELD_NUMBER:I = 0x2

.field public static final CAMPAIGN_STATE_DATA_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final TTL_SECONDS_FIELD_NUMBER:I = 0x5


# instance fields
.field private adDataRefreshDelayMs_:I

.field private assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation
.end field

.field private campaignStateDataVersion_:I

.field private campaignStateData_:Lcom/google/protobuf/ByteString;

.field private ttlSeconds_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1110
    new-instance v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;-><init>()V

    .line 1113
    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 1114
    const-class v1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 487
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 488
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    .line 489
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setCampaignStateDataVersion(I)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 1

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearCampaignStateDataVersion()V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setCampaignStateData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 1

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearCampaignStateData()V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 3

    .line 482
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 3

    .line 482
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method public static synthetic access$1700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Ljava/lang/Iterable;)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAllAssetsToCache(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1800(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 1

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearAssetsToCache()V

    return-void
.end method

.method public static synthetic access$1900(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->removeAssetsToCache(I)V

    return-void
.end method

.method public static synthetic access$2000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setAdDataRefreshDelayMs(I)V

    return-void
.end method

.method public static synthetic access$2100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 1

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearAdDataRefreshDelayMs()V

    return-void
.end method

.method public static synthetic access$2200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .registers 2

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setTtlSeconds(I)V

    return-void
.end method

.method public static synthetic access$2300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 1

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearTtlSeconds()V

    return-void
.end method

.method public static synthetic access$900()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 1

    .line 482
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object v0
.end method

.method private addAllAssetsToCache(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;)V"
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 621
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 4

    .line 611
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 613
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 3

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 604
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAdDataRefreshDelayMs()V
    .registers 2

    const/4 v0, 0x0

    .line 673
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return-void
.end method

.method private clearAssetsToCache()V
    .registers 2

    .line 628
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCampaignStateData()V
    .registers 2

    .line 541
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCampaignStateDataVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return-void
.end method

.method private clearTtlSeconds()V
    .registers 2

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return-void
.end method

.method private ensureAssetsToCacheIsMutable()V
    .registers 3

    .line 582
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 583
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 585
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 1

    .line 1119
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 1

    .line 791
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 794
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 730
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 737
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 717
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 724
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 742
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
            ">;"
        }
    .end annotation

    .line 1125
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAssetsToCache(I)V
    .registers 3

    .line 634
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 635
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAdDataRefreshDelayMs(I)V
    .registers 2

    .line 662
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return-void
.end method

.method private setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .registers 4

    .line 594
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 596
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCampaignStateData(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCampaignStateDataVersion(I)V
    .registers 2

    .line 507
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return-void
.end method

.method private setTtlSeconds(I)V
    .registers 2

    .line 700
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1056
    sget-object p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 1103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 1097
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1082
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 1084
    const-class p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    monitor-enter p2

    .line 1085
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 1087
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1090
    sput-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 1092
    :cond_31
    :goto_31
    monitor-exit p2

    return-object p1

    :goto_33
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p1

    :cond_35
    return-object p1

    .line 1079
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p1

    .line 1064
    :pswitch_39
    const-string v0, "campaignStateDataVersion_"

    const-string v1, "campaignStateData_"

    const-string v2, "assetsToCache_"

    const-class v3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    const-string v4, "adDataRefreshDelayMs_"

    const-string v5, "ttlSeconds_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1072
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0004\u0002\n\u0003\u001b\u0004\u0004\u0005\u0004"

    .line 1075
    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1061
    :pswitch_52
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;-><init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V

    return-object p1

    .line 1058
    :pswitch_58
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAdDataRefreshDelayMs()I
    .registers 2

    .line 650
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return v0
.end method

.method public getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3

    .line 572
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p1
.end method

.method public getAssetsToCacheCount()I
    .registers 2

    .line 565
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssetsToCacheList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAssetsToCacheOrBuilder(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;
    .registers 3

    .line 579
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;

    return-object p1
.end method

.method public getAssetsToCacheOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCampaignStateData()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 525
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCampaignStateDataVersion()I
    .registers 2

    .line 499
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return v0
.end method

.method public getTtlSeconds()I
    .registers 2

    .line 688
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return v0
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignMetadata.Builder (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignMetadata$Builder)
.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 807
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$900()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V
    .registers 2

    .line 800
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAssetsToCache(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;)",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;"
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 4

    .line 938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 940
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 939
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 4

    .line 920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 929
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearAdDataRefreshDelayMs()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearAssetsToCache()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 956
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1800(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearCampaignStateData()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 862
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearCampaignStateDataVersion()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 834
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearTtlSeconds()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 2

    .line 1044
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public getAdDataRefreshDelayMs()I
    .registers 2

    .line 979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAdDataRefreshDelayMs()I

    move-result v0

    return v0
.end method

.method public getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object p1

    return-object p1
.end method

.method public getAssetsToCacheCount()I
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheCount()I

    move-result v0

    return v0
.end method

.method public getAssetsToCacheList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 873
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStateData()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStateDataVersion()I
    .registers 2

    .line 817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateDataVersion()I

    move-result v0

    return v0
.end method

.method public getTtlSeconds()I
    .registers 2

    .line 1019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getTtlSeconds()I

    move-result v0

    return v0
.end method

.method public removeAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 964
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1900(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setAdDataRefreshDelayMs(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 4

    .line 902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 903
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 904
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 903
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 4

    .line 893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public setCampaignStateData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignStateDataVersion(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 825
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setTtlSeconds(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .registers 3

    .line 1031
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignMetadataOrBuilder (gatewayprotocol.v1.CampaignMetadataOuterClass$CampaignMetadataOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;
.super Ljava/lang/Object;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CampaignMetadataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdDataRefreshDelayMs()I
.end method

.method public abstract getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
.end method

.method public abstract getAssetsToCacheCount()I
.end method

.method public abstract getAssetsToCacheList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCampaignStateData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCampaignStateDataVersion()I
.end method

.method public abstract getTtlSeconds()I
.end method
