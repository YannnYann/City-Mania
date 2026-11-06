###### Class ads_mobile_sdk.s81 (ads_mobile_sdk.s81)
.class public final Lads_mobile_sdk/s81;
.super Lads_mobile_sdk/fs;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/u81;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 92
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/fs;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
