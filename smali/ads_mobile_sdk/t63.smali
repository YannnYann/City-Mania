###### Class ads_mobile_sdk.t63 (ads_mobile_sdk.t63)
.class public final Lads_mobile_sdk/t63;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/un1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/un1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/t63;->a:Lads_mobile_sdk/un1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 47
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;

    .line 48
    iget-object v0, p0, Lads_mobile_sdk/t63;->a:Lads_mobile_sdk/un1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 49
    monitor-enter v0

    .line 50
    :try_start_9
    iput-object p1, v0, Lads_mobile_sdk/fm0;->i:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;

    .line 51
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 52
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnAdMetadataChangedListener;)V

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 54
    monitor-exit v0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit v0

    throw p1
.end method
