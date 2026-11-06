###### Class ads_mobile_sdk.yh2 (ads_mobile_sdk.yh2)
.class public final Lads_mobile_sdk/yh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    .line 86
    iput-object p4, p0, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 3

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->packageName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->versionName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->versionCode:Ljava/lang/Integer;

    .line 97
    iget-object v0, p0, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->displayLabel:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->installerPackage:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->initiatorPackage:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appName:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appWebPropertyCode:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->applicationCode:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/yh2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/yh2;

    iget-object v1, p0, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v2

    :cond_6f
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    if-nez v2, :cond_28

    move v2, v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    if-nez v2, :cond_34

    move v2, v3

    goto :goto_38

    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_38
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    if-nez v2, :cond_40

    move v2, v3

    goto :goto_44

    :cond_40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_44
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    if-nez v2, :cond_52

    move v2, v3

    goto :goto_56

    :cond_52
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_56
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    if-nez v1, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_61
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/yh2;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/yh2;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/yh2;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lads_mobile_sdk/yh2;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/yh2;->e:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/yh2;->f:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/yh2;->g:Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/yh2;->h:Ljava/lang/String;

    iget-object v8, p0, Lads_mobile_sdk/yh2;->i:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PackageInfoSignal(packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionCode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayLabel="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", installerPackage="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", initiatorPackage="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appWebPropertyCode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", applicationCode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
