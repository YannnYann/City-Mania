###### Class androidx.core.net.ConnectivityManagerCompat (androidx.core.net.ConnectivityManagerCompat)
.class public final Landroidx/core/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# direct methods
.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0
.end method
