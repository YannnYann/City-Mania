###### Class ads_mobile_sdk.zs (ads_mobile_sdk.zs)
.class public final Lads_mobile_sdk/zs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljavax/crypto/SecretKey;[B)[B
    .registers 3

    .line 12
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 14
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const-string p1, "doFinal(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a([B[B)[B
    .registers 10

    .line 1
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
    new-array v3, v2, [B

    fill-array-data v3, :array_38

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 8
    array-length p1, p0

    if-ge p1, v2, :cond_1f

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_1f
    aget-byte p1, p0, v1

    const/4 v0, 0x1

    aget-byte v3, p0, v0

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    const/4 v7, 0x5

    new-array v7, v7, [B

    aput-byte v1, v7, v1

    aput-byte p1, v7, v0

    aput-byte v3, v7, v4

    aput-byte v5, v7, v6

    aput-byte p0, v7, v2

    return-object v7

    :array_38
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method
