###### Class ads_mobile_sdk.jl3 (ads_mobile_sdk.jl3)
.class public final Lads_mobile_sdk/jl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:J

.field public final n:Z

.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:I

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ZILjava/lang/String;ZZ)V
    .registers 23

    .line 1
    const-string v0, "countryCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageCode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageCodeList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submodel"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildName"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean p1, p0, Lads_mobile_sdk/jl3;->a:Z

    .line 152
    iput-boolean p2, p0, Lads_mobile_sdk/jl3;->b:Z

    .line 153
    iput-object p3, p0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    .line 155
    iput-boolean p5, p0, Lads_mobile_sdk/jl3;->e:Z

    .line 156
    iput-boolean p6, p0, Lads_mobile_sdk/jl3;->f:Z

    .line 157
    iput-object p7, p0, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    .line 158
    iput-object p8, p0, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    .line 159
    iput-object p9, p0, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    .line 160
    iput-object p10, p0, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    .line 161
    iput-object p11, p0, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    .line 162
    iput-object p12, p0, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    move-wide p1, p13

    .line 163
    iput-wide p1, p0, Lads_mobile_sdk/jl3;->m:J

    move/from16 p1, p15

    .line 164
    iput-boolean p1, p0, Lads_mobile_sdk/jl3;->n:Z

    move-object/from16 p1, p16

    .line 165
    iput-object p1, p0, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    move/from16 p1, p17

    .line 166
    iput-boolean p1, p0, Lads_mobile_sdk/jl3;->p:Z

    move/from16 p1, p18

    .line 167
    iput p1, p0, Lads_mobile_sdk/jl3;->q:I

    move-object/from16 p1, p19

    .line 168
    iput-object p1, p0, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    move/from16 p1, p20

    .line 169
    iput-boolean p1, p0, Lads_mobile_sdk/jl3;->s:Z

    move/from16 p1, p21

    .line 170
    iput-boolean p1, p0, Lads_mobile_sdk/jl3;->t:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 5

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->canOpenGeo:Ljava/lang/Boolean;

    .line 174
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->canOpenHttp:Ljava/lang/Boolean;

    .line 175
    iget-object v0, p0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->countryCode:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceCountryCode:Ljava/lang/String;

    .line 177
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isEmulator:Ljava/lang/Boolean;

    .line 178
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->f:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isLatchskyDevice:Z

    .line 179
    iget-object v0, p0, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->languageCode:Ljava/lang/String;

    .line 180
    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v1, p0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lads_mobile_sdk/m21;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientLanguageCode:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->languageCodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceLanguageCode:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->marketVersion:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->submodel:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    iget-object v1, p0, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->buildName:Ljava/lang/String;

    .line 187
    iget-wide v1, p0, Lads_mobile_sdk/jl3;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 188
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->remainingDataPartitionSpaceKilobytes:Ljava/lang/Long;

    .line 190
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    iget-object v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->browserSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;

    .line 191
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 192
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;->isDefaultBrowserCustomTabsCapable:Ljava/lang/Boolean;

    .line 194
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    iget-object v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;->playStoreSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;

    iget-object v1, p0, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PlayStoreSignals;->playStoreVersion:Ljava/lang/String;

    .line 195
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->p:Z

    if-eqz v0, :cond_74

    .line 196
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isBattlestarDevice:Ljava/lang/Boolean;

    .line 198
    :cond_74
    iget v0, p0, Lads_mobile_sdk/jl3;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->buildApiLevel:Ljava/lang/Integer;

    .line 199
    iget-object v0, p0, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->osVersion:Ljava/lang/String;

    .line 200
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->s:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->transparentBackgroundSupported:Ljava/lang/Boolean;

    .line 201
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->t:Z

    if-eqz v0, :cond_92

    const/4 v0, 0x1

    :goto_8d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_94

    :cond_92
    const/4 v0, 0x0

    goto :goto_8d

    :goto_94
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isHsdpSupported:Ljava/lang/Integer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/jl3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/jl3;

    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->a:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->b:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->b:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->e:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->e:Z

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->f:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->f:Z

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget-object v1, p0, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v2

    :cond_80
    iget-wide v3, p0, Lads_mobile_sdk/jl3;->m:J

    iget-wide v5, p1, Lads_mobile_sdk/jl3;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_89

    return v2

    :cond_89
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->n:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->n:Z

    if-eq v1, v3, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->p:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->p:Z

    if-eq v1, v3, :cond_a2

    return v2

    :cond_a2
    iget v1, p0, Lads_mobile_sdk/jl3;->q:I

    iget v3, p1, Lads_mobile_sdk/jl3;->q:I

    if-eq v1, v3, :cond_a9

    return v2

    :cond_a9
    iget-object v1, p0, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    return v2

    :cond_b4
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->s:Z

    iget-boolean v3, p1, Lads_mobile_sdk/jl3;->s:Z

    if-eq v1, v3, :cond_bb

    return v2

    :cond_bb
    iget-boolean v1, p0, Lads_mobile_sdk/jl3;->t:Z

    iget-boolean p1, p1, Lads_mobile_sdk/jl3;->t:Z

    if-eq v1, p1, :cond_c2

    return v2

    :cond_c2
    return v0
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/jl3;->b:Z

    if-eqz v3, :cond_e

    move v3, v1

    :cond_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    .line 2
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v3, p0, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    move v3, v4

    goto :goto_21

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/jl3;->e:Z

    if-eqz v3, :cond_28

    move v3, v1

    :cond_28
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/jl3;->f:Z

    if-eqz v3, :cond_2f

    move v3, v1

    :cond_2f
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    .line 4
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v3, p0, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    .line 6
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 7
    iget-object v3, p0, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    if-nez v3, :cond_43

    move v3, v4

    goto :goto_47

    :cond_43
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_47
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    if-nez v3, :cond_4f

    move v3, v4

    goto :goto_53

    :cond_4f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_53
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    .line 8
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-object v3, p0, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    .line 10
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 11
    iget-wide v5, p0, Lads_mobile_sdk/jl3;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->n:Z

    if-eqz v0, :cond_6e

    move v0, v1

    :cond_6e
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    if-nez v0, :cond_76

    move v0, v4

    goto :goto_7a

    :cond_76
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7a
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lads_mobile_sdk/jl3;->p:Z

    if-eqz v0, :cond_81

    move v0, v1

    :cond_81
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget v0, p0, Lads_mobile_sdk/jl3;->q:I

    .line 12
    invoke-static {v0, v3, v2}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 13
    iget-object v3, p0, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    if-nez v3, :cond_8e

    goto :goto_92

    :cond_8e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_92
    add-int/2addr v0, v4

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/jl3;->s:Z

    if-eqz v3, :cond_99

    move v3, v1

    :cond_99
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v2, p0, Lads_mobile_sdk/jl3;->t:Z

    if-eqz v2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v1, v2

    :goto_a1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lads_mobile_sdk/jl3;->a:Z

    iget-boolean v2, v0, Lads_mobile_sdk/jl3;->b:Z

    iget-object v3, v0, Lads_mobile_sdk/jl3;->c:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/jl3;->d:Ljava/lang/String;

    iget-boolean v5, v0, Lads_mobile_sdk/jl3;->e:Z

    iget-boolean v6, v0, Lads_mobile_sdk/jl3;->f:Z

    iget-object v7, v0, Lads_mobile_sdk/jl3;->g:Ljava/lang/String;

    iget-object v8, v0, Lads_mobile_sdk/jl3;->h:Ljava/util/List;

    iget-object v9, v0, Lads_mobile_sdk/jl3;->i:Ljava/lang/String;

    iget-object v10, v0, Lads_mobile_sdk/jl3;->j:Ljava/lang/String;

    iget-object v11, v0, Lads_mobile_sdk/jl3;->k:Ljava/lang/String;

    iget-object v12, v0, Lads_mobile_sdk/jl3;->l:Ljava/lang/String;

    iget-wide v13, v0, Lads_mobile_sdk/jl3;->m:J

    iget-boolean v15, v0, Lads_mobile_sdk/jl3;->n:Z

    move/from16 v16, v15

    iget-object v15, v0, Lads_mobile_sdk/jl3;->o:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-boolean v15, v0, Lads_mobile_sdk/jl3;->p:Z

    move/from16 v18, v15

    iget v15, v0, Lads_mobile_sdk/jl3;->q:I

    move/from16 v19, v15

    iget-object v15, v0, Lads_mobile_sdk/jl3;->r:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-boolean v15, v0, Lads_mobile_sdk/jl3;->s:Z

    move/from16 v21, v15

    iget-boolean v15, v0, Lads_mobile_sdk/jl3;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v15

    const-string v15, "StaticDeviceSignal(canOpenGeo="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canOpenHttp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEmulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLatchskyDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", languageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marketVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submodel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingDataPartitionSpaceKilobytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultBrowserCustomTabsCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playStoreVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBattlestarDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", buildApiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTransparentBackgroundSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHsdpSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
