###### Class ads_mobile_sdk.le (ads_mobile_sdk.le)
.class public final Lads_mobile_sdk/le;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;
    .registers 4

    .line 1
    const-string v0, "initializationState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/ke;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/ke;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;
    .registers 4

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 2
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    :cond_6
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_c

    .line 3
    const-string p1, ""

    :cond_c
    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p0

    return-object p0
.end method
