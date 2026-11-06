###### Class ads_mobile_sdk.fo (ads_mobile_sdk.fo)
.class public abstract Lads_mobile_sdk/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/bo;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_40

    :cond_3
    if-eqz p1, :cond_40

    .line 35
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_40

    .line 44
    :cond_10
    invoke-static {p0}, Lads_mobile_sdk/do;->a(Landroid/content/Context;)Lads_mobile_sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    sget-object v0, Lads_mobile_sdk/do;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ru1;

    if-eqz v0, :cond_40

    .line 47
    check-cast v0, Lads_mobile_sdk/ds0;

    .line 48
    invoke-virtual {v0}, Lads_mobile_sdk/ds0;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_40

    .line 49
    :cond_2a
    invoke-static {p0, p1}, Lads_mobile_sdk/eo;->a(Landroid/content/Context;Ljava/lang/String;)Lads_mobile_sdk/cs0;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 51
    invoke-virtual {p0, p2}, Lads_mobile_sdk/cs0;->a(Lads_mobile_sdk/bo;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p0

    .line 56
    const-string p2, "Error during attestation with mechanism: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string p2, "OMIDLIB"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-void
.end method
