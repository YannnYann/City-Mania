###### Class com.vungle.ads.internal.s (com.vungle.ads.internal.s)
.class public abstract Lcom/vungle/ads/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .registers 3

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_c

    :cond_9
    if-nez p0, :cond_c

    return v1

    :cond_c
    :goto_c
    return v0
.end method
