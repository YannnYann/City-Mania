###### Class ads_mobile_sdk.mc0 (ads_mobile_sdk.mc0)
.class public final Lads_mobile_sdk/mc0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/nc0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nc0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mc0;->a:Lads_mobile_sdk/nc0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 23
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/mc0;->a:Lads_mobile_sdk/nc0;

    .line 25
    iget-object v0, v0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 26
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 27
    monitor-enter v0

    .line 28
    :try_start_b
    iput-object p1, v0, Lads_mobile_sdk/fm0;->n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit v0

    throw p1
.end method
