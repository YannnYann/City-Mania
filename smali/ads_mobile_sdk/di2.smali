###### Class ads_mobile_sdk.di2 (ads_mobile_sdk.di2)
.class public final Lads_mobile_sdk/di2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/fi2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fi2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/di2;->a:Lads_mobile_sdk/fi2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/di2;->a:Lads_mobile_sdk/fi2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/fi2;->b:Landroid/content/Context;

    .line 4
    sget-object v1, Lads_mobile_sdk/ii2;->h:Lads_mobile_sdk/ii2;

    .line 5
    const-class v1, Lads_mobile_sdk/ii2;

    monitor-enter v1

    .line 6
    :try_start_9
    sget-object v2, Lads_mobile_sdk/ii2;->h:Lads_mobile_sdk/ii2;

    if-nez v2, :cond_17

    .line 7
    new-instance v2, Lads_mobile_sdk/ii2;

    invoke-direct {v2, v0}, Lads_mobile_sdk/ii2;-><init>(Landroid/content/Context;)V

    sput-object v2, Lads_mobile_sdk/ii2;->h:Lads_mobile_sdk/ii2;

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_1b

    .line 9
    :cond_17
    :goto_17
    sget-object v0, Lads_mobile_sdk/ii2;->h:Lads_mobile_sdk/ii2;

    monitor-exit v1

    return-object v0

    .line 10
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_15

    throw v0
.end method
