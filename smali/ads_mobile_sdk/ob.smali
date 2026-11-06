###### Class ads_mobile_sdk.ob (ads_mobile_sdk.ob)
.class public abstract synthetic Lads_mobile_sdk/ob;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;II)I
    .registers 3

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, p1

    mul-int/2addr p0, p2

    return p0
.end method
