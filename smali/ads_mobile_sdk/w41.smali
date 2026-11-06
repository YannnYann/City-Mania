###### Class ads_mobile_sdk.w41 (ads_mobile_sdk.w41)
.class public final Lads_mobile_sdk/w41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/v41;


# static fields
.field public static b:Lads_mobile_sdk/w41;


# instance fields
.field public final a:Lads_mobile_sdk/x41;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lads_mobile_sdk/x41;->a(Landroid/content/Context;)Lads_mobile_sdk/x41;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/w41;->a:Lads_mobile_sdk/x41;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lads_mobile_sdk/w41;
    .registers 3

    .line 198
    const-class v0, Lads_mobile_sdk/w41;

    monitor-enter v0

    .line 199
    :try_start_3
    sget-object v1, Lads_mobile_sdk/w41;->b:Lads_mobile_sdk/w41;

    if-nez v1, :cond_11

    .line 200
    new-instance v1, Lads_mobile_sdk/w41;

    invoke-direct {v1, p0}, Lads_mobile_sdk/w41;-><init>(Landroid/content/Context;)V

    sput-object v1, Lads_mobile_sdk/w41;->b:Lads_mobile_sdk/w41;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 202
    :cond_11
    :goto_11
    sget-object p0, Lads_mobile_sdk/w41;->b:Lads_mobile_sdk/w41;

    monitor-exit v0

    return-object p0

    .line 203
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 98
    const-class v0, Lads_mobile_sdk/w41;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/w41;->a:Lads_mobile_sdk/x41;

    const-string v2, "paidv2_publisher_option"

    .line 100
    iget-object v1, v1, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    .line 101
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final b()Z
    .registers 5

    .line 119
    const-class v0, Lads_mobile_sdk/w41;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/w41;->a:Lads_mobile_sdk/x41;

    const-string v2, "paidv2_user_option"

    .line 121
    iget-object v1, v1, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    .line 122
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 123
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
