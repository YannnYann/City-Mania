###### Class ads_mobile_sdk.jv1 (ads_mobile_sdk.jv1)
.class public final Lads_mobile_sdk/jv1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/qv1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qv1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jv1;->a:Lads_mobile_sdk/qv1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 214
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    .line 215
    const-string v0, "mediationAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lads_mobile_sdk/jv1;->a:Lads_mobile_sdk/qv1;

    monitor-enter v0

    .line 433
    :try_start_a
    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iput-object p1, v0, Lads_mobile_sdk/qv1;->f:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    .line 480
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit v0

    throw p1
.end method
