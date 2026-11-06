###### Class ads_mobile_sdk.w81 (ads_mobile_sdk.w81)
.class public abstract Lads_mobile_sdk/w81;
.super Lads_mobile_sdk/hs;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/x81;


# direct methods
.method public static a(Landroid/os/IBinder;)Lads_mobile_sdk/x81;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "com.google.android.play.core.prewarm.protocol.IPrewarmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lads_mobile_sdk/x81;

    if-eqz v1, :cond_11

    .line 63
    check-cast v0, Lads_mobile_sdk/x81;

    return-object v0

    .line 65
    :cond_11
    new-instance v0, Lads_mobile_sdk/v81;

    invoke-direct {v0, p0}, Lads_mobile_sdk/v81;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
