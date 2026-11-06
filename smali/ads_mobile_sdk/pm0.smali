###### Class ads_mobile_sdk.pm0 (ads_mobile_sdk.pm0)
.class public abstract synthetic Lads_mobile_sdk/pm0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 1
    const-string p0, "other"

    return-object p0

    :cond_c
    const/4 p0, 0x0

    throw p0

    :cond_e
    const-string p0, "mobile"

    return-object p0

    :cond_11
    const-string p0, "ctv"

    return-object p0
.end method
