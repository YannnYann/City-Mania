###### Class ads_mobile_sdk.qj2 (ads_mobile_sdk.qj2)
.class public final Lads_mobile_sdk/qj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lads_mobile_sdk/pj2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pj2;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 8

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lads_mobile_sdk/pj2;->a:Lads_mobile_sdk/u41;

    if-eqz v0, :cond_37

    .line 35
    iget-object v1, v0, Lads_mobile_sdk/u41;->a:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-wide v2, v0, Lads_mobile_sdk/u41;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_37

    .line 36
    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->personallyIdentifiableInformation:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;

    .line 37
    iput-object v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->perAppIdV2:Ljava/lang/String;

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2CreationTimeMilliseconds:Ljava/lang/Long;

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    iget-boolean v0, v0, Lads_mobile_sdk/pj2;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2PubOption:Ljava/lang/Boolean;

    .line 40
    iget-object v0, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    iget-boolean v0, v0, Lads_mobile_sdk/pj2;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;->paidV2UserOption:Ljava/lang/Boolean;

    :cond_37
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/qj2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/qj2;

    iget-object v1, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    iget-object p1, p1, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

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
    iget-object v0, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lads_mobile_sdk/pj2;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/qj2;->a:Lads_mobile_sdk/pj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PerAppIdV2Signal(paidV2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
