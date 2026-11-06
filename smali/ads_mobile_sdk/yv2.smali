###### Class ads_mobile_sdk.yv2 (ads_mobile_sdk.yv2)
.class public abstract synthetic Lads_mobile_sdk/yv2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic a(I)I
    .registers 1

    if-eqz p0, :cond_5

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    .line 1
    throw p0
.end method
