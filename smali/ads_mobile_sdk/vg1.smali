###### Class ads_mobile_sdk.vg1 (ads_mobile_sdk.vg1)
.class public final Lads_mobile_sdk/vg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lads_mobile_sdk/vg1;->b:Z

    .line 10
    iput-boolean p3, p0, Lads_mobile_sdk/vg1;->c:Z

    .line 11
    iput-boolean p4, p0, Lads_mobile_sdk/vg1;->d:Z

    .line 12
    iput-boolean p5, p0, Lads_mobile_sdk/vg1;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 4

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 16
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->inspectorExtras:Ljava/lang/String;

    .line 18
    :cond_b
    iget-boolean v0, p0, Lads_mobile_sdk/vg1;->b:Z

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->testMode:I

    .line 19
    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->c:Z

    iput v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->linkedDevice:I

    if-nez v0, :cond_19

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 23
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lads_mobile_sdk/vg1;->d:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_25

    :cond_23
    const/4 v0, 0x1

    goto :goto_1e

    .line 24
    :goto_25
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestServerData:Ljava/lang/Integer;

    .line 26
    iget-boolean v0, p0, Lads_mobile_sdk/vg1;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->shouldCollectAdResponseLogs:Ljava/lang/Boolean;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/vg1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/vg1;

    iget-object v1, p0, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->b:Z

    iget-boolean v3, p1, Lads_mobile_sdk/vg1;->b:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->c:Z

    iget-boolean v3, p1, Lads_mobile_sdk/vg1;->c:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->d:Z

    iget-boolean v3, p1, Lads_mobile_sdk/vg1;->d:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->e:Z

    iget-boolean p1, p1, Lads_mobile_sdk/vg1;->e:Z

    if-eq v1, p1, :cond_33

    return v2

    :cond_33
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    move v1, v2

    :cond_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->c:Z

    if-eqz v1, :cond_1a

    move v1, v2

    :cond_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->d:Z

    if-eqz v1, :cond_22

    move v1, v2

    :cond_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->e:Z

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vg1;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lads_mobile_sdk/vg1;->b:Z

    iget-boolean v2, p0, Lads_mobile_sdk/vg1;->c:Z

    iget-boolean v3, p0, Lads_mobile_sdk/vg1;->d:Z

    iget-boolean v4, p0, Lads_mobile_sdk/vg1;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InspectorSignal(requestExtras="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isTestMode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLinkedDevice="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasServerData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldCollectAdResponseLogs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
