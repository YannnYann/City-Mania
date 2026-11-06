###### Class ads_mobile_sdk.z1 (ads_mobile_sdk.z1)
.class public abstract synthetic Lads_mobile_sdk/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;II)I
    .registers 3

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result p0

    add-int/2addr p0, p1

    mul-int/2addr p0, p2

    return p0
.end method
