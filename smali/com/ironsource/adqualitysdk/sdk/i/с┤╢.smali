###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0658 (com.ironsource.adqualitysdk.sdk.i.ᴶ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ᴶ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ([B[B)Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    array-length v1, p0

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_7
    if-ge v4, v1, :cond_19

    if-lt v5, v2, :cond_c

    move v5, v3

    .line 10
    :cond_c
    aget-byte v6, p0, v4

    aget-byte v7, p1, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 11
    :cond_19
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
