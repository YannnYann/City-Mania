###### Class ads_mobile_sdk.sd2 (ads_mobile_sdk.sd2)
.class public abstract Lads_mobile_sdk/sd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static volatile b:I


# direct methods
.method public static a()I
    .registers 5

    .line 1
    sget v0, Lads_mobile_sdk/sd2;->b:I

    const/4 v1, 0x3

    if-nez v0, :cond_37

    sget-object v0, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    if-eqz v0, :cond_37

    .line 2
    const-class v0, Lads_mobile_sdk/sd2;

    monitor-enter v0

    .line 3
    :try_start_c
    sget-object v2, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    if-eqz v2, :cond_33

    sget v2, Lads_mobile_sdk/sd2;->b:I
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2f

    if-eqz v2, :cond_15

    goto :goto_33

    .line 7
    :cond_15
    :try_start_15
    sget-object v2, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2c

    move v3, v1

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x2

    .line 8
    :cond_2c
    :goto_2c
    sput v3, Lads_mobile_sdk/sd2;->b:I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_2e} :catch_31
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_31

    :catchall_2f
    move-exception v1

    goto :goto_35

    .line 9
    :catch_31
    :goto_31
    monitor-exit v0

    goto :goto_37

    .line 10
    :cond_33
    :goto_33
    monitor-exit v0

    goto :goto_37

    .line 11
    :goto_35
    monitor-exit v0

    throw v1

    .line 13
    :cond_37
    :goto_37
    sget v0, Lads_mobile_sdk/sd2;->b:I

    if-nez v0, :cond_3c

    goto :goto_3e

    :cond_3c
    sget v1, Lads_mobile_sdk/sd2;->b:I

    :goto_3e
    return v1
.end method
