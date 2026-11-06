###### Class ads_mobile_sdk.eo (ads_mobile_sdk.eo)
.class public final Lads_mobile_sdk/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lads_mobile_sdk/cs0;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p0, :cond_7

    return-object v0

    .line 2
    :cond_7
    :try_start_7
    const-string v1, "FireTVFOSDAT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    new-instance v1, Lads_mobile_sdk/cs0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/cs0;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception p0

    goto :goto_18

    :cond_17
    return-object v0

    .line 7
    :goto_18
    const-string v1, "Error creating attestation mechanism: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v1, "OMIDLIB"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
