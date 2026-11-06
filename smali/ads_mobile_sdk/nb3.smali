###### Class ads_mobile_sdk.nb3 (ads_mobile_sdk.nb3)
.class public final Lads_mobile_sdk/nb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)V
    .registers 9

    .line 1
    const-string v0, "afmaVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalCapabilities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    .line 54
    iput p3, p0, Lads_mobile_sdk/nb3;->c:I

    .line 55
    iput-object p4, p0, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    .line 56
    iput-boolean p5, p0, Lads_mobile_sdk/nb3;->e:Z

    .line 57
    iput-boolean p6, p0, Lads_mobile_sdk/nb3;->f:Z

    .line 58
    iput-boolean p7, p0, Lads_mobile_sdk/nb3;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 4

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->afmaVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isDecagon:Z

    .line 63
    iget-object v0, p0, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->additionalCapabilities:Ljava/lang/String;

    .line 64
    iget v0, p0, Lads_mobile_sdk/nb3;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->targetApi:Ljava/lang/Integer;

    .line 65
    iget-object v0, p0, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->granularVersion:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sdkEnvironment:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sdkEnvironment:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->f:Z

    iput-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    .line 68
    iget-boolean v0, p0, Lads_mobile_sdk/nb3;->g:Z

    if-eqz v0, :cond_33

    .line 69
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->b()V

    :cond_33
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/nb3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/nb3;

    iget-object v1, p0, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lads_mobile_sdk/nb3;->c:I

    iget v3, p1, Lads_mobile_sdk/nb3;->c:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->e:Z

    iget-boolean v3, p1, Lads_mobile_sdk/nb3;->e:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->f:Z

    iget-boolean v3, p1, Lads_mobile_sdk/nb3;->f:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->g:Z

    iget-boolean p1, p1, Lads_mobile_sdk/nb3;->g:Z

    if-eq v1, p1, :cond_49

    return v2

    :cond_49
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/nb3;->c:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 7
    iget-boolean v2, p0, Lads_mobile_sdk/nb3;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    move v2, v3

    :cond_21
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/nb3;->f:Z

    if-eqz v2, :cond_28

    move v2, v3

    :cond_28
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/nb3;->g:Z

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/nb3;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/nb3;->b:Ljava/lang/String;

    iget v2, p0, Lads_mobile_sdk/nb3;->c:I

    iget-object v3, p0, Lads_mobile_sdk/nb3;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lads_mobile_sdk/nb3;->e:Z

    iget-boolean v5, p0, Lads_mobile_sdk/nb3;->f:Z

    iget-boolean v6, p0, Lads_mobile_sdk/nb3;->g:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SdkEnvironmentSignal(afmaVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", additionalCapabilities="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetApi="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", externalVersion="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isInstantApp="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPrivilegedProcess="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAdapterInitConfigSet="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
