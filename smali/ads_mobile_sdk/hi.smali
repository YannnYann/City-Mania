###### Class ads_mobile_sdk.hi (ads_mobile_sdk.hi)
.class public abstract Lads_mobile_sdk/hi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)Lcom/google/common/io/BaseEncoding;
    .registers 1

    if-eqz p0, :cond_b

    .line 36
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64Url()Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0

    .line 38
    :cond_b
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)[B
    .registers 3

    .line 63
    invoke-static {p1}, Lads_mobile_sdk/hi;->a(Z)Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    .line 65
    array-length v0, p1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_12

    goto :goto_1e

    .line 66
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to decode "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :goto_1e
    return-object p1
.end method
