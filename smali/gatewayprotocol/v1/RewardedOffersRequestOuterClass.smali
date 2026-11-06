###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass (gatewayprotocol.v1.RewardedOffersRequestOuterClass)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.super Ljava/lang/Object;
.source "RewardedOffersRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;,
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;,
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
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

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.AnonymousClass1 (gatewayprotocol.v1.RewardedOffersRequestOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;
.super Ljava/lang/Object;
.source "RewardedOffersRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
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

    .line 525
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersEntryPoint (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersEntryPoint)
.class public final enum Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
.super Ljava/lang/Enum;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewardedOffersEntryPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_BRIDGE_VALUE:I = 0x1

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_OFFERWALL_VALUE:I = 0x2

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 4

    .line 22
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    filled-new-array {v0, v1, v2, v3}, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 27
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 31
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_BRIDGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 35
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_OFFERWALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 36
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 22
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 86
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_a
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0

    .line 75
    :cond_d
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0

    .line 74
    :cond_10
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 96
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 2

    .line 22
    const-class v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 1

    .line 22
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 55
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    if-eq p0, v0, :cond_7

    .line 59
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->value:I

    return v0

    .line 56
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersEntryPoint.AnonymousClass1 (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1)
.class public Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;
.super Ljava/lang/Object;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;->findValueByNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 2

    .line 90
    invoke-static {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersEntryPoint.RewardedOffersEntryPointVerifier (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;
.super Ljava/lang/Object;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewardedOffersEntryPointVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 104
    invoke-static {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersRequest (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersRequest)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewardedOffersRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CURSOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cursor_:Lcom/google/protobuf/ByteString;

.field private entryPoint_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 574
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;-><init>()V

    .line 577
    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    .line 578
    const-class v1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 182
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 183
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 1

    .line 177
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;I)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setEntryPointValue(I)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .registers 1

    .line 177
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->clearEntryPoint()V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->setCursor(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V
    .registers 1

    .line 177
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->clearCursor()V

    return-void
.end method

.method private clearCursor()V
    .registers 2

    .line 286
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearEntryPoint()V
    .registers 2

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 1

    .line 583
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 1

    .line 366
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 2

    .line 369
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 305
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 292
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 299
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
            ">;"
        }
    .end annotation

    .line 589
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCursor(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .registers 2

    .line 232
    invoke-virtual {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method

.method private setEntryPointValue(I)V
    .registers 2

    .line 221
    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 525
    sget-object p2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_56

    .line 567
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 561
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 546
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 548
    const-class p2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    monitor-enter p2

    .line 549
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 551
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 554
    sput-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 556
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

    .line 543
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object p1

    .line 533
    :pswitch_38
    const-string p1, "entryPoint_"

    const-string p2, "cursor_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 537
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\n"

    .line 539
    sget-object p3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 530
    :pswitch_49
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;-><init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;)V

    return-object p1

    .line 527
    :pswitch_4f
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;-><init>()V

    return-object p1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getCursor()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 260
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->cursor_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 2

    .line 209
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    if-nez v0, :cond_a

    .line 210
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    :cond_a
    return-object v0
.end method

.method public getEntryPointValue()I
    .registers 2

    .line 197
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->entryPoint_:I

    return v0
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 405
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$000()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;)V
    .registers 2

    .line 398
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCursor()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 2

    .line 513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$500(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-object p0
.end method

.method public clearEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 2

    .line 470
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$300(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-object p0
.end method

.method public getCursor()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPointValue()I
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getEntryPointValue()I

    move-result v0

    return v0
.end method

.method public setCursor(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 3

    .line 499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$400(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 3

    .line 457
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 458
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$200(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V

    return-object p0
.end method

.method public setEntryPointValue(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .registers 3

    .line 431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$100(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;I)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestOuterClass.RewardedOffersRequestOrBuilder (gatewayprotocol.v1.RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;
.super Ljava/lang/Object;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewardedOffersRequestOrBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getCursor()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
.end method

.method public abstract getEntryPointValue()I
.end method
