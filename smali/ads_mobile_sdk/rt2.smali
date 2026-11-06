###### Class ads_mobile_sdk.rt2 (ads_mobile_sdk.rt2)
.class public final Lads_mobile_sdk/rt2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/st2;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 2
    sget-object p0, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    return-object p0

    .line 3
    :cond_b
    sget-object p0, Lads_mobile_sdk/st2;->d:Lads_mobile_sdk/st2;

    return-object p0

    .line 4
    :cond_e
    sget-object p0, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    return-object p0

    .line 5
    :cond_11
    sget-object p0, Lads_mobile_sdk/st2;->b:Lads_mobile_sdk/st2;

    return-object p0
.end method
