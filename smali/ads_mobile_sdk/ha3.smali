###### Class ads_mobile_sdk.ha3 (ads_mobile_sdk.ha3)
.class public final Lads_mobile_sdk/ha3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/ha3;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ha3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 3
    new-instance v1, Lads_mobile_sdk/ga3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/ga3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)V

    return-object v1
.end method
