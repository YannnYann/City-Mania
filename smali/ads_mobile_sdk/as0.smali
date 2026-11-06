###### Class ads_mobile_sdk.as0 (ads_mobile_sdk.as0)
.class public final Lads_mobile_sdk/as0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/bs0;
    .registers 2

    .line 1
    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p0, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_c

    sget-object p0, Lads_mobile_sdk/bs0;->c:Lads_mobile_sdk/bs0;

    return-object p0

    .line 3
    :cond_c
    instance-of v0, p0, Lads_mobile_sdk/r01;

    if-eqz v0, :cond_13

    sget-object p0, Lads_mobile_sdk/bs0;->e:Lads_mobile_sdk/bs0;

    return-object p0

    .line 4
    :cond_13
    instance-of v0, p0, Lads_mobile_sdk/j01;

    if-eqz v0, :cond_25

    .line 5
    check-cast p0, Lads_mobile_sdk/j01;

    .line 6
    iget-object p0, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    .line 7
    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_22

    .line 8
    sget-object p0, Lads_mobile_sdk/bs0;->g:Lads_mobile_sdk/bs0;

    return-object p0

    .line 10
    :cond_22
    sget-object p0, Lads_mobile_sdk/bs0;->h:Lads_mobile_sdk/bs0;

    return-object p0

    .line 13
    :cond_25
    instance-of v0, p0, Lads_mobile_sdk/l01;

    if-eqz v0, :cond_4e

    .line 14
    check-cast p0, Lads_mobile_sdk/l01;

    .line 15
    iget-object p0, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 17
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->NOT_FOUND:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_40

    sget-object p0, Lads_mobile_sdk/bs0;->f:Lads_mobile_sdk/bs0;

    return-object p0

    .line 18
    :cond_40
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->NO_FILL:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_4b

    sget-object p0, Lads_mobile_sdk/bs0;->d:Lads_mobile_sdk/bs0;

    return-object p0

    .line 19
    :cond_4b
    sget-object p0, Lads_mobile_sdk/bs0;->i:Lads_mobile_sdk/bs0;

    return-object p0

    .line 22
    :cond_4e
    sget-object p0, Lads_mobile_sdk/bs0;->i:Lads_mobile_sdk/bs0;

    return-object p0
.end method
