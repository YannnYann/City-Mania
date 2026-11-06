###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0236 (com.ironsource.adqualitysdk.sdk.i.э)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/э;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾇ([B)[B
    .registers 9

    .line 1
    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    .line 2
    :cond_4
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c0

    .line 5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    .line 6
    aget-byte v1, p0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    add-int/lit8 v5, v0, -0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    const-wide/32 v2, 0x4000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9f

    long-to-int v0, v0

    .line 7
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    :try_start_42
    new-array p0, v0, [B

    const/4 v2, 0x0

    :goto_45
    const/4 v3, -0x1

    if-ge v2, v0, :cond_54

    sub-int v4, v0, v2

    .line 11
    invoke-virtual {v1, p0, v2, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    if-eq v4, v3, :cond_54

    add-int/2addr v2, v4

    goto :goto_45

    :catchall_52
    move-exception p0

    goto :goto_96

    :cond_54
    if-lt v2, v0, :cond_60

    .line 14
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_52

    if-ne v4, v3, :cond_60

    .line 18
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    return-object p0

    .line 19
    :cond_60
    :try_start_60
    new-instance p0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v8tQpCYMSYu03liwJhhHl6uRV7tyXEWTrNJR9G8IW9K01FezchQIhqrQULhjDgja\n"

    const-string v5, "2LE51AZ8KPI=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ksxMDA==\n"

    const-string v4, "sqMqLFgI0D0=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "HqQuxh46tg==\n"

    const-string v2, "PsZXsntJn5s=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_52

    .line 20
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw p0

    .line 21
    :cond_9f
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KME1mu6bpAwozzTKuoWgCyPeLsqnmrEOLs4vg6ybpFhv\n"

    const-string v4, "T7tc6s73wWI=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, "UEmhaZLo\n"

    const-string v1, "cCvYHfebsqY=\n"

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_c0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "KC5LPrjMBMojO0MquMgK3G8nSiHqyEXHIHRBL+rOHJMudE4r9tsR228gUC/x0ADB\n"

    const-string v1, "T1QiTpi8ZbM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﾒ([B)[B
    .registers 3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    .line 4
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1d

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 10
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method
