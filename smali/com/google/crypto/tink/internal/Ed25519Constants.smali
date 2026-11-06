###### Class com.google.crypto.tink.internal.Ed25519Constants (com.google.crypto.tink.internal.Ed25519Constants)
.class public final Lcom/google/crypto/tink/internal/Ed25519Constants;
.super Ljava/lang/Object;
.source "Ed25519Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/Ed25519Constants$Point;
    }
.end annotation


# static fields
.field public static final B2:[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

.field public static final B_TABLE:[[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

.field public static final D:[J

.field public static final D2:[J

.field public static final D2_BI:Ljava/math/BigInteger;

.field public static final D_BI:Ljava/math/BigInteger;

.field public static final P_BI:Ljava/math/BigInteger;

.field public static final SQRTM1:[J

.field public static final SQRTM1_BI:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-wide/16 v0, 0x2

    .line 41
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x13

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    const-wide/32 v3, -0x1db41

    .line 43
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/32 v4, 0x1db42

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/internal/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    .line 44
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->D2_BI:Ljava/math/BigInteger;

    .line 46
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v5, 0x4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519Constants;->SQRTM1_BI:Ljava/math/BigInteger;

    .line 103
    new-instance v1, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;-><init>(Lcom/google/crypto/tink/internal/Ed25519Constants$1;)V

    .line 104
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$102(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 105
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/internal/Ed25519Constants;->recoverX(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$202(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 107
    invoke-static {v3}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->D:[J

    .line 108
    invoke-static {v4}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->D2:[J

    .line 109
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519Constants;->SQRTM1:[J

    const/4 v0, 0x2

    .line 112
    new-array v0, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v0, v2

    const/4 v2, 0x0

    const/16 v4, 0x20

    aput v4, v0, v2

    const-class v5, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    sput-object v0, Lcom/google/crypto/tink/internal/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    move-object v5, v1

    move v0, v2

    :goto_bd
    if-ge v0, v4, :cond_e1

    move v6, v2

    move-object v7, v5

    :goto_c1
    if-ge v6, v3, :cond_d4

    .line 116
    sget-object v8, Lcom/google/crypto/tink/internal/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    aget-object v8, v8, v0

    invoke-static {v7}, Lcom/google/crypto/tink/internal/Ed25519Constants;->getCachedXYT(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    move-result-object v9

    aput-object v9, v8, v6

    .line 117
    invoke-static {v7, v5}, Lcom/google/crypto/tink/internal/Ed25519Constants;->edwards(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    :cond_d4
    move v6, v2

    :goto_d5
    if-ge v6, v3, :cond_de

    .line 120
    invoke-static {v5, v5}, Lcom/google/crypto/tink/internal/Ed25519Constants;->edwards(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_d5

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 124
    :cond_e1
    invoke-static {v1, v1}, Lcom/google/crypto/tink/internal/Ed25519Constants;->edwards(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    move-result-object v0

    .line 125
    new-array v4, v3, [Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    sput-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->B2:[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    :goto_e9
    if-ge v2, v3, :cond_fa

    .line 127
    sget-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->B2:[Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519Constants;->getCachedXYT(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    move-result-object v5

    aput-object v5, v4, v2

    .line 128
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/Ed25519Constants;->edwards(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_fa
    return-void
.end method

.method public static edwards(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519Constants$Point;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;-><init>(Lcom/google/crypto/tink/internal/Ed25519Constants$1;)V

    .line 71
    sget-object v1, Lcom/google/crypto/tink/internal/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 73
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 74
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 72
    invoke-static {v0, v3}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$202(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 77
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 78
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 79
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$102(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    return-object v0
.end method

.method public static getCachedXYT(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;

    .line 97
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v1

    .line 98
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/internal/Ed25519Constants;->D2_BI:Ljava/math/BigInteger;

    .line 99
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/Field25519;->expand([B)[J

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/google/crypto/tink/internal/Ed25519$CachedXYT;-><init>([J[J[J)V

    return-object v0
.end method

.method public static recoverX(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/internal/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    .line 58
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v2, Lcom/google/crypto/tink/internal/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v3, 0x3

    .line 59
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    .line 61
    sget-object p0, Lcom/google/crypto/tink/internal/Ed25519Constants;->SQRTM1_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_59
    const/4 p0, 0x0

    .line 63
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 64
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_65
    return-object v1
.end method

.method public static toLittleEndian(Ljava/math/BigInteger;)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    const/16 v0, 0x20

    .line 84
    new-array v1, v0, [B

    .line 85
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 86
    array-length v2, p0

    sub-int/2addr v0, v2

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    const/16 p0, 0x10

    if-ge v3, p0, :cond_20

    .line 88
    aget-byte p0, v1, v3

    rsub-int/lit8 v0, v3, 0x1f

    .line 89
    aget-byte v2, v1, v0

    aput-byte v2, v1, v3

    .line 90
    aput-byte p0, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    return-object v1
.end method

###### Class com.google.crypto.tink.internal.Ed25519Constants.AnonymousClass1 (com.google.crypto.tink.internal.Ed25519Constants$1)
.class public synthetic Lcom/google/crypto/tink/internal/Ed25519Constants$1;
.super Ljava/lang/Object;
.source "Ed25519Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.internal.Ed25519Constants.Point (com.google.crypto.tink.internal.Ed25519Constants$Point)
.class public Lcom/google/crypto/tink/internal/Ed25519Constants$Point;
.super Ljava/lang/Object;
.source "Ed25519Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/internal/Ed25519Constants$1;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->y:Ljava/math/BigInteger;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;)Ljava/math/BigInteger;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/google/crypto/tink/internal/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519Constants$Point;->x:Ljava/math/BigInteger;

    return-object p1
.end method
