###### Class info.flowersoft.theotown.util.RandomUtil (info.flowersoft.theotown.util.RandomUtil)
.class public final Linfo/flowersoft/theotown/util/RandomUtil;
.super Ljava/lang/Object;
.source "RandomUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomLowercaseString(I)Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789"

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateRandomString(I)Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateRandomString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, p0, :cond_1f

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 31
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomBytes(I)[B
    .registers 2

    .line 35
    new-array p0, p0, [B

    .line 36
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
