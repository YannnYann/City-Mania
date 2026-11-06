###### Class gatewayprotocol.v1.MutableDataOuterClass (gatewayprotocol.v1.MutableDataOuterClass)
.class public final Lgatewayprotocol/v1/MutableDataOuterClass;
.super Ljava/lang/Object;
.source "MutableDataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;,
        Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;
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

###### Class gatewayprotocol.v1.MutableDataOuterClass.AnonymousClass1 (gatewayprotocol.v1.MutableDataOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/MutableDataOuterClass$1;
.super Ljava/lang/Object;
.source "MutableDataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataOuterClass;
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

    .line 1154
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.MutableDataOuterClass.MutableData (gatewayprotocol.v1.MutableDataOuterClass$MutableData)
.class public final Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MutableDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWED_PII_FIELD_NUMBER:I = 0xd

.field public static final CACHE_FIELD_NUMBER:I = 0xe

.field public static final CURRENT_STATE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_FIELD_NUMBER:I = 0xb

.field public static final PRIVACY_FSM_FIELD_NUMBER:I = 0xf

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0xc

.field public static final SESSION_TOKEN_FIELD_NUMBER:I = 0xa


# instance fields
.field private allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

.field private bitField0_:I

.field private cache_:Lcom/google/protobuf/ByteString;

.field private currentState_:Lcom/google/protobuf/ByteString;

.field private privacyFsm_:Lcom/google/protobuf/ByteString;

.field private privacy_:Lcom/google/protobuf/ByteString;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private sessionToken_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1211
    new-instance v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;-><init>()V

    .line 1214
    sput-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    .line 1215
    const-class v1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 176
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    .line 177
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    .line 178
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    .line 179
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    .line 180
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 1

    .line 170
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setCurrentState(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->mergeAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearAllowedPii()V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setCache(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearCache()V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setPrivacyFsm(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearPrivacyFsm()V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearCurrentState()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setSessionToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearSessionToken()V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setPrivacy(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearPrivacy()V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .registers 1

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearSessionCounters()V

    return-void
.end method

.method private clearAllowedPii()V
    .registers 2

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 491
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private clearCache()V
    .registers 2

    .line 545
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 546
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCurrentState()V
    .registers 2

    .line 234
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 235
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCurrentState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivacy()V
    .registers 2

    .line 348
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 349
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivacyFsm()V
    .registers 2

    .line 604
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 605
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacyFsm()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSessionCounters()V
    .registers 2

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 420
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private clearSessionToken()V
    .registers 2

    .line 293
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 294
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 1

    .line 1220
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object v0
.end method

.method private mergeAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 4

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    if-eqz v0, :cond_22

    .line 474
    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getDefaultInstance()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 475
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 476
    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->newBuilder(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    goto :goto_24

    .line 478
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 480
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 4

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_22

    .line 403
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 404
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 405
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_24

    .line 407
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 409
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 1

    .line 685
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 688
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 624
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 631
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 611
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 618
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 636
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
            ">;"
        }
    .end annotation

    .line 1226
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 2

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 460
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private setCache(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 534
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCurrentState(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 223
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrivacy(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 337
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrivacyFsm(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 592
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 389
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private setSessionToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 281
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1154
    sget-object p2, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_62

    .line 1204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 1198
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1183
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 1185
    const-class p2, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    monitor-enter p2

    .line 1186
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 1188
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1191
    sput-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 1193
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

    .line 1180
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p1

    .line 1162
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "currentState_"

    const-string v2, "sessionToken_"

    const-string v3, "privacy_"

    const-string v4, "sessionCounters_"

    const-string v5, "allowedPii_"

    const-string v6, "cache_"

    const-string v7, "privacyFsm_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 1172
    const-string p2, "\u0000\u0007\u0000\u0001\u0001\u000f\u0007\u0000\u0000\u0000\u0001\u100a\u0000\n\u100a\u0001\u000b\u100a\u0002\u000c\u1009\u0003\r\u1009\u0004\u000e\u100a\u0005\u000f\u100a\u0006"

    .line 1176
    sget-object p3, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1159
    :pswitch_56
    new-instance p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;-><init>(Lgatewayprotocol/v1/MutableDataOuterClass$1;)V

    return-object p1

    .line 1156
    :pswitch_5c
    new-instance p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;-><init>()V

    return-object p1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_56
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2

    .line 447
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getDefaultInstance()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCache()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 520
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCurrentState()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 209
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivacy()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 323
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivacyFsm()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 577
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 2

    .line 376
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSessionToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAllowedPii()Z
    .registers 2

    .line 435
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasCache()Z
    .registers 2

    .line 507
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasCurrentState()Z
    .registers 3

    .line 196
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacy()Z
    .registers 2

    .line 310
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacyFsm()Z
    .registers 2

    .line 563
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionCounters()Z
    .registers 2

    .line 364
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionToken()Z
    .registers 2

    .line 252
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.MutableDataOuterClass.MutableData.Builder (gatewayprotocol.v1.MutableDataOuterClass$MutableData$Builder)
.class public final Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MutableDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 701
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$000()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MutableDataOuterClass$1;)V
    .registers 2

    .line 694
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllowedPii()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 1026
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearCache()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 1082
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearCurrentState()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 756
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearPrivacy()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearPrivacyFsm()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 1142
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1143
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$900(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public clearSessionToken()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 2

    .line 816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2

    .line 976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCurrentState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyFsm()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacyFsm()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowedPii()Z
    .registers 2

    .line 964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasAllowedPii()Z

    move-result v0

    return v0
.end method

.method public hasCache()Z
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasCache()Z

    move-result v0

    return v0
.end method

.method public hasCurrentState()Z
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasCurrentState()Z

    move-result v0

    return v0
.end method

.method public hasPrivacy()Z
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasPrivacy()Z

    move-result v0

    return v0
.end method

.method public hasPrivacyFsm()Z
    .registers 2

    .line 1099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasPrivacyFsm()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasSessionToken()Z
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->hasSessionToken()Z

    move-result v0

    return v0
.end method

.method public mergeAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 1014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 937
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 938
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$800(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 1001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1000(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1000(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public setCache(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 1068
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCurrentState(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivacy(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivacyFsm(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 1127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$1500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$700(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$700(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .registers 3

    .line 801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->access$300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.MutableDataOuterClass.MutableDataOrBuilder (gatewayprotocol.v1.MutableDataOuterClass$MutableDataOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;
.super Ljava/lang/Object;
.source "MutableDataOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MutableDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
.end method

.method public abstract getCache()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCurrentState()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivacy()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivacyFsm()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
.end method

.method public abstract getSessionToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAllowedPii()Z
.end method

.method public abstract hasCache()Z
.end method

.method public abstract hasCurrentState()Z
.end method

.method public abstract hasPrivacy()Z
.end method

.method public abstract hasPrivacyFsm()Z
.end method

.method public abstract hasSessionCounters()Z
.end method

.method public abstract hasSessionToken()Z
.end method
