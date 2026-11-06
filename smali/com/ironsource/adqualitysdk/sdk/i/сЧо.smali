###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0611 (com.ironsource.adqualitysdk.sdk.i.ᗮ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ｋ(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    :try_start_4
    const-string v0, "PnMZRppC8w==\n"

    const-string v1, "bTtYa6h3xYQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    const-string v1, "FaHbRLo=\n"

    const-string v2, "QPWdaYI8tfQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_4a

    aget-byte v3, p0, v2

    .line 5
    const-string v4, "4Qoxng==\n"

    const-string v5, "xDoD5pHMtNo=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 7
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4e} :catch_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4e} :catch_4f

    return-object p0

    :catch_4f
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_56
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cIsxmlyeOh9NrASXD91tVk+iEtsL\n"

    const-string v2, "I8Nwt26rDD8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    if-nez p1, :cond_23

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_d

    goto :goto_37

    :cond_23
    const/4 p1, 0x1

    .line 10
    :goto_24
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-gt p1, v1, :cond_d

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_37
    :goto_37
    return-object v0
.end method

.method public static ﾇ(Ljava/lang/String;)Z
    .registers 4

    .line 12
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ:Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    return v2

    .line 14
    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    .line 16
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    return p0

    :catchall_21
    return v2
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string v0, "ySTzh8zXJA==\n"

    const-string v1, "knrDqvX5eSM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1HM=\n"

    const-string v2, "iF31cUWgrxU=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "T2vhmhbH8w==\n"

    const-string v2, "FDXRty/prmY=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "zWQ=\n"

    const-string v1, "kUq1PHyprEE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :goto_33
    array-length v1, p0

    if-ge v0, v1, :cond_46

    array-length v1, p1

    if-ge v0, v1, :cond_46

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 7
    :cond_46
    array-length v1, p0

    if-ge v0, v1, :cond_61

    array-length v1, p1

    if-ge v0, v1, :cond_61

    .line 8
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    .line 11
    :cond_61
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public static ﾒ(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x2000

    const/4 v1, 0x0

    if-eqz p0, :cond_4e

    .line 99
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ:Landroid/os/Handler;

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_12

    goto :goto_4e

    .line 101
    :cond_12
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾇ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_4e

    :cond_19
    const/4 v2, 0x0

    .line 105
    :try_start_1a
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 106
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    new-array v4, v0, [B

    :goto_2f
    rsub-int v5, v2, 0x2000

    .line 113
    invoke-virtual {p0, v4, v2, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    add-int/2addr v2, v5

    goto :goto_2f

    .line 116
    :cond_3a
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 117
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    new-instance p0, Ljava/lang/String;

    const-string v0, "pCsa2as=\n"

    const-string v2, "8X9c9JPEdJ4=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_4e

    return-object p0

    :catchall_4e
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_41

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 14
    const-string p2, "1g==\n"

    const-string v0, "iA1uCPaUEOg=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v0, "6kGYI5Iw9zE=\n"

    const-string v1, "tBrEUM5jqhs=\n"

    invoke-static {v0, v1, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_23
    const-string p2, "sQ==\n"

    const-string v0, "lcM1t3ZXtaY=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, "f8e3YdC/aQ==\n"

    const-string v0, "JJvEPYPiQ3o=\n"

    invoke-static {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    :cond_41
    const/4 p2, 0x1

    .line 87
    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_54

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/String;I)Z
    .registers 4

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p1, :cond_14

    return v1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
