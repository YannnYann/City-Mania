###### Class io.bidmachine.analytics.internal.e.C4111a (io.bidmachine.analytics.internal.e.a)
.class public final Lio/bidmachine/analytics/internal/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/e/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;[B[B[BI)[B
    .registers 10

    .line 2
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p5, v1, :cond_5e

    if-eqz p3, :cond_1b

    .line 6
    array-length v1, p3

    if-nez v1, :cond_12

    goto :goto_1b

    .line 11
    :cond_12
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_29

    .line 12
    :cond_1b
    :goto_1b
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {p3, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 16
    :goto_29
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 17
    new-array p3, p5, [B

    .line 20
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 21
    new-array p2, p1, [B

    const/4 v1, 0x1

    move v2, p1

    .line 23
    :goto_3c
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    if-eqz p4, :cond_44

    .line 25
    invoke-virtual {v0, p4}, Ljavax/crypto/Mac;->update([B)V

    :cond_44
    int-to-byte p2, v1

    .line 27
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(B)V

    .line 28
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    .line 29
    array-length v3, p2

    add-int/2addr v3, v2

    if-ge v3, p5, :cond_59

    .line 30
    array-length v3, p2

    invoke-static {p2, p1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length v3, p2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_59
    sub-int/2addr p5, v2

    .line 34
    invoke-static {p2, p1, p3, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    .line 35
    :cond_5e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([B[B[B)[B
    .registers 10

    .line 1
    const-string v1, "HMACSHA256"

    const/16 v5, 0x20

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/internal/e/a;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    return-object p1
.end method
