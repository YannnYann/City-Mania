###### Class ads_mobile_sdk.k91 (ads_mobile_sdk.k91)
.class public final Lads_mobile_sdk/k91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;)V
    .registers 3

    .line 1
    const-string v0, "iconRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 14

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isIconAdRequest:Ljava/lang/Boolean;

    .line 28
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;->getCorrelator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->correlator:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;->getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->iconAdPlacement:Ljava/lang/Integer;

    .line 30
    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    goto :goto_2e

    :cond_2d
    move-object v0, v2

    :goto_2e
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getExcludedAppIds()Ljava/util/Set;

    move-result-object v2

    :cond_34
    move-object v3, v2

    if-eqz v3, :cond_4e

    .line 31
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_4e

    :cond_3e
    const/16 v10, 0x3e

    const/4 v11, 0x0

    .line 32
    const-string v4, "|"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->excludedAppIds:Ljava/lang/String;

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/k91;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/k91;

    iget-object v1, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    iget-object p1, p1, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IconAdSignal(iconRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
