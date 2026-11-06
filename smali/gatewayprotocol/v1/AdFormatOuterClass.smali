###### Class gatewayprotocol.v1.AdFormatOuterClass (gatewayprotocol.v1.AdFormatOuterClass)
.class public final Lgatewayprotocol/v1/AdFormatOuterClass;
.super Ljava/lang/Object;
.source "AdFormatOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
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

###### Class gatewayprotocol.v1.AdFormatOuterClass.AdFormat (gatewayprotocol.v1.AdFormatOuterClass$AdFormat)
.class public final enum Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
.super Ljava/lang/Enum;
.source "AdFormatOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdFormatOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final enum AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_BANNER_VALUE:I = 0x3

.field public static final enum AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_INTERSTITIAL_VALUE:I = 0x1

.field public static final enum AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_MREC_VALUE:I = 0x4

.field public static final enum AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_NATIVE_VALUE:I = 0x5

.field public static final enum AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_REWARDED_VALUE:I = 0x2

.field public static final enum AD_FORMAT_UNSPECIFIED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field public static final AD_FORMAT_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 7

    .line 15
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_UNSPECIFIED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v1, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v2, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v3, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v4, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v5, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    sget-object v6, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    filled-new-array/range {v0 .. v6}, [Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 20
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_UNSPECIFIED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 24
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_INTERSTITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 28
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_REWARDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 32
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_BANNER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 36
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_MREC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 40
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_NATIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 41
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 15
    invoke-static {}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->$values()[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->$VALUES:[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 106
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_13
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 95
    :cond_16
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 94
    :cond_19
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 93
    :cond_1c
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 92
    :cond_1f
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 91
    :cond_22
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_UNSPECIFIED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 116
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-static {p0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 15
    const-class v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 1

    .line 15
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->$VALUES:[Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 72
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    if-eq p0, v0, :cond_7

    .line 76
    iget v0, p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->value:I

    return v0

    .line 73
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.AdFormatOuterClass.AdFormat.AnonymousClass1 (gatewayprotocol.v1.AdFormatOuterClass$AdFormat$1)
.class public Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$1;
.super Ljava/lang/Object;
.source "AdFormatOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$1;->findValueByNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 110
    invoke-static {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.AdFormatOuterClass.AdFormat.AdFormatVerifier (gatewayprotocol.v1.AdFormatOuterClass$AdFormat$AdFormatVerifier)
.class public final Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;
.super Ljava/lang/Object;
.source "AdFormatOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdFormatVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat$AdFormatVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 124
    invoke-static {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
