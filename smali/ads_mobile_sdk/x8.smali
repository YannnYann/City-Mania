###### Class ads_mobile_sdk.x8 (ads_mobile_sdk.x8)
.class public final Lads_mobile_sdk/x8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:J

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

.field public final f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

.field public final g:Z

.field public final h:Lads_mobile_sdk/j53;

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Lads_mobile_sdk/ex0;

.field public final m:J

.field public final n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;JLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;ZLads_mobile_sdk/j53;IZZLads_mobile_sdk/ex0;JZZ)V
    .registers 19

    .line 1
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tfcd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tfuac"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxAdContentRating"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 92
    iput-wide p2, p0, Lads_mobile_sdk/x8;->b:J

    .line 93
    iput-object p4, p0, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 94
    iput-object p5, p0, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 95
    iput-object p6, p0, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    .line 96
    iput-object p7, p0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 97
    iput-boolean p8, p0, Lads_mobile_sdk/x8;->g:Z

    .line 98
    iput-object p9, p0, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    .line 99
    iput p10, p0, Lads_mobile_sdk/x8;->i:I

    .line 100
    iput-boolean p11, p0, Lads_mobile_sdk/x8;->j:Z

    .line 101
    iput-boolean p12, p0, Lads_mobile_sdk/x8;->k:Z

    .line 102
    iput-object p13, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    move-wide p1, p14

    .line 103
    iput-wide p1, p0, Lads_mobile_sdk/x8;->m:J

    move/from16 p1, p16

    .line 104
    iput-boolean p1, p0, Lads_mobile_sdk/x8;->n:Z

    move/from16 p1, p17

    .line 105
    iput-boolean p1, p0, Lads_mobile_sdk/x8;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 13

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lads_mobile_sdk/x8;->b:J

    iput-wide v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestTimeMilliseconds:J

    .line 110
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitId:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->contentUrl:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 113
    :cond_31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    iget-object v1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    iget-object v1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 117
    iget-object v1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v2

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "excl_cat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_64
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customTargeting:Ljava/util/Map;

    .line 122
    :cond_66
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getGoogleExtrasBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    .line 123
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->keywords:Ljava/util/ArrayList;

    .line 126
    :cond_87
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 127
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->neighboringContentUrls:Ljava/util/Set;

    .line 129
    :cond_9f
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->publisherProvidedId:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestAgent:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_bb

    move v0, v2

    goto :goto_bc

    :cond_bb
    move v0, v1

    :goto_bc
    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForChildDirectedTreatment:I

    .line 134
    iget-object v0, p0, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_c7

    move v1, v2

    :cond_c7
    iput v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForUnderAgeOfConsent:I

    .line 135
    iget-object v0, p0, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    if-eqz v0, :cond_d7

    .line 136
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForAgeTreatment:Ljava/lang/Integer;

    .line 138
    :cond_d7
    iget-object v0, p0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_eb

    .line 139
    iget-object v0, p0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxAdContentRating:Ljava/lang/String;

    .line 141
    :cond_eb
    iget-boolean v0, p0, Lads_mobile_sdk/x8;->g:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isTestRequest:Z

    .line 142
    iget v0, p0, Lads_mobile_sdk/x8;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->publisherPrivacyPersonalizationState:Ljava/lang/Integer;

    .line 143
    iget-object v0, p0, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    sget-object v1, Lads_mobile_sdk/j53;->j:Lads_mobile_sdk/j53;

    if-ne v0, v1, :cond_101

    .line 144
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isRewarded:Ljava/lang/Boolean;

    .line 146
    :cond_101
    sget-object v1, Lads_mobile_sdk/j53;->k:Lads_mobile_sdk/j53;

    if-ne v0, v1, :cond_109

    .line 147
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isRewardedInterstitial:Ljava/lang/Boolean;

    .line 149
    :cond_109
    iget-boolean v0, p0, Lads_mobile_sdk/x8;->j:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->manualImpressionsEnabled:Z

    .line 150
    iget-boolean v0, p0, Lads_mobile_sdk/x8;->k:Z

    if-eqz v0, :cond_115

    .line 151
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isPrefetchRequest:Ljava/lang/Boolean;

    .line 153
    :cond_115
    iget-object v0, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    const-string v1, "gads:enable_time_since_sdk_init:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 172
    iget-wide v0, p0, Lads_mobile_sdk/x8;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->a(Ljava/lang/Long;)V

    .line 174
    :cond_13a
    iget-boolean v0, p0, Lads_mobile_sdk/x8;->n:Z

    if-eqz v0, :cond_141

    .line 175
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->c()V

    .line 177
    :cond_141
    iget-boolean v0, p0, Lads_mobile_sdk/x8;->o:Z

    if-eqz v0, :cond_161

    iget-object v0, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    .line 178
    iget-object v0, v0, Lads_mobile_sdk/ex0;->v:Lads_mobile_sdk/cl2;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    const-string v1, "gads:pc:enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 198
    iput-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->persistentCacheRequest:Ljava/lang/Boolean;

    .line 202
    :cond_161
    iget-object v0, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    const-string v1, "gads:cpaf:enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 221
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz v1, :cond_189

    .line 222
    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->a()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 224
    iput-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->crossProcessRequest:Ljava/lang/Boolean;

    :cond_189
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/x8;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/x8;

    iget-object v1, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v3, p1, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lads_mobile_sdk/x8;->b:J

    iget-wide v5, p1, Lads_mobile_sdk/x8;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    iget-object v3, p1, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    iget-object v3, p1, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    iget-object v3, p1, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    iget-object v3, p1, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    if-eq v1, v3, :cond_3c

    return v2

    :cond_3c
    iget-boolean v1, p0, Lads_mobile_sdk/x8;->g:Z

    iget-boolean v3, p1, Lads_mobile_sdk/x8;->g:Z

    if-eq v1, v3, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    iget-object v3, p1, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lads_mobile_sdk/x8;->i:I

    iget v3, p1, Lads_mobile_sdk/x8;->i:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-boolean v1, p0, Lads_mobile_sdk/x8;->j:Z

    iget-boolean v3, p1, Lads_mobile_sdk/x8;->j:Z

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget-boolean v1, p0, Lads_mobile_sdk/x8;->k:Z

    iget-boolean v3, p1, Lads_mobile_sdk/x8;->k:Z

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    iget-object v3, p1, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-wide v3, p0, Lads_mobile_sdk/x8;->m:J

    iget-wide v5, p1, Lads_mobile_sdk/x8;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_73

    return v2

    :cond_73
    iget-boolean v1, p0, Lads_mobile_sdk/x8;->n:Z

    iget-boolean v3, p1, Lads_mobile_sdk/x8;->n:Z

    if-eq v1, v3, :cond_7a

    return v2

    :cond_7a
    iget-boolean v1, p0, Lads_mobile_sdk/x8;->o:Z

    iget-boolean p1, p1, Lads_mobile_sdk/x8;->o:Z

    if-eq v1, p1, :cond_81

    return v2

    :cond_81
    return v0
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lads_mobile_sdk/x8;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2b
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/x8;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    move v2, v3

    :cond_3b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/x8;->i:I

    .line 2
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-boolean v2, p0, Lads_mobile_sdk/x8;->j:Z

    if-eqz v2, :cond_50

    move v2, v3

    :cond_50
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/x8;->k:Z

    if-eqz v2, :cond_57

    move v2, v3

    :cond_57
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v4, p0, Lads_mobile_sdk/x8;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/x8;->n:Z

    if-eqz v2, :cond_6e

    move v2, v3

    :cond_6e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/x8;->o:Z

    if-eqz v1, :cond_75

    goto :goto_76

    :cond_75
    move v3, v1

    :goto_76
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lads_mobile_sdk/x8;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-wide v2, v0, Lads_mobile_sdk/x8;->b:J

    iget-object v4, v0, Lads_mobile_sdk/x8;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    iget-object v5, v0, Lads_mobile_sdk/x8;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    iget-object v6, v0, Lads_mobile_sdk/x8;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    iget-object v7, v0, Lads_mobile_sdk/x8;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    iget-boolean v8, v0, Lads_mobile_sdk/x8;->g:Z

    iget-object v9, v0, Lads_mobile_sdk/x8;->h:Lads_mobile_sdk/j53;

    iget v10, v0, Lads_mobile_sdk/x8;->i:I

    iget-boolean v11, v0, Lads_mobile_sdk/x8;->j:Z

    iget-boolean v12, v0, Lads_mobile_sdk/x8;->k:Z

    iget-object v13, v0, Lads_mobile_sdk/x8;->l:Lads_mobile_sdk/ex0;

    iget-wide v14, v0, Lads_mobile_sdk/x8;->m:J

    move-wide/from16 v16, v14

    iget-boolean v14, v0, Lads_mobile_sdk/x8;->n:Z

    iget-boolean v15, v0, Lads_mobile_sdk/x8;->o:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v15

    const-string v15, "AdRequestSignal(adRequest="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tfcd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tfuac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageRestrictedTreatment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAdContentRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTestRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherPrivacyPersonalizationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manualImpressionsRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrefetchRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeSinceSdkInitMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isS2SRecursiveRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPersistentCacheFillRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
