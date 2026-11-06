###### Class com.google.android.gms.common.zzz (com.google.android.gms.common.zzz)
.class final Lcom/google/android/gms/common/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# direct methods
.method public static zza(I)I
    .registers 7

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 1
    new-array v2, v0, [I

    fill-array-data v2, :array_18

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_17

    aget v4, v2, v3

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_15

    if-ne v5, p0, :cond_13

    return v4

    :cond_13
    add-int/2addr v3, v1

    goto :goto_8

    :cond_15
    const/4 p0, 0x0

    .line 2
    throw p0

    :cond_17
    return v1

    :array_18
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
