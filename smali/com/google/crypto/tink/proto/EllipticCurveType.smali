###### Class com.google.crypto.tink.proto.EllipticCurveType (com.google.crypto.tink.proto.EllipticCurveType)
.class public final enum Lcom/google/crypto/tink/proto/EllipticCurveType;
.super Ljava/lang/Enum;
.source "EllipticCurveType.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/proto/EllipticCurveType;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum CURVE25519:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum UNKNOWN_CURVE:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final enum UNRECOGNIZED:Lcom/google/crypto/tink/proto/EllipticCurveType;

.field public static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/proto/EllipticCurveType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final value:I


# direct methods
.method public static synthetic $values()[Lcom/google/crypto/tink/proto/EllipticCurveType;
    .registers 6

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNKNOWN_CURVE:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v1, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v2, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v3, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v4, Lcom/google/crypto/tink/proto/EllipticCurveType;->CURVE25519:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v5, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/EllipticCurveType;

    filled-new-array/range {v0 .. v5}, [Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "UNKNOWN_CURVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNKNOWN_CURVE:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 21
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "NIST_P256"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 25
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "NIST_P384"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 29
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "NIST_P521"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 33
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "CURVE25519"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->CURVE25519:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 34
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    const-string v1, "UNRECOGNIZED"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 11
    invoke-static {}, Lcom/google/crypto/tink/proto/EllipticCurveType;->$values()[Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->$VALUES:[Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 94
    new-instance v0, Lcom/google/crypto/tink/proto/EllipticCurveType$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EllipticCurveType$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/proto/EllipticCurveType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_10
    sget-object p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->CURVE25519:Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0

    .line 83
    :cond_13
    sget-object p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0

    .line 82
    :cond_16
    sget-object p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0

    .line 81
    :cond_19
    sget-object p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0

    .line 80
    :cond_1c
    sget-object p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNKNOWN_CURVE:Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/proto/EllipticCurveType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/proto/EllipticCurveType;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->$VALUES:[Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/proto/EllipticCurveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/proto/EllipticCurveType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 61
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/EllipticCurveType;

    if-eq p0, v0, :cond_7

    .line 65
    iget v0, p0, Lcom/google/crypto/tink/proto/EllipticCurveType;->value:I

    return v0

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.crypto.tink.proto.EllipticCurveType.AnonymousClass1 (com.google.crypto.tink.proto.EllipticCurveType$1)
.class public Lcom/google/crypto/tink/proto/EllipticCurveType$1;
.super Ljava/lang/Object;
.source "EllipticCurveType.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/EllipticCurveType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/crypto/tink/proto/EllipticCurveType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/crypto/tink/proto/EllipticCurveType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/crypto/tink/proto/EllipticCurveType;->forNumber(I)Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/EllipticCurveType$1;->findValueByNumber(I)Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object p1

    return-object p1
.end method
