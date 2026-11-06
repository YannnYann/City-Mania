###### Class com.vungle.ads.internal.platform.a (com.vungle.ads.internal.platform.a)
.class public abstract Lcom/vungle/ads/internal/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    check-cast p0, Landroid/telephony/TelephonyManager;

    goto :goto_14

    :cond_13
    move-object p0, v1

    :goto_14
    if-eqz p0, :cond_1a

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    if-nez v1, :cond_1f

    const-string p0, ""

    return-object p0

    :cond_1f
    return-object v1
.end method
