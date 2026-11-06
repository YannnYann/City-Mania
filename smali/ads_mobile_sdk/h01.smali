###### Class ads_mobile_sdk.h01 (ads_mobile_sdk.h01)
.class public final Lads_mobile_sdk/h01;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static a(Lads_mobile_sdk/i01;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    if-ne v0, v1, :cond_14

    .line 3
    sget-object p0, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    invoke-virtual {p0}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_14
    instance-of v0, p0, Lads_mobile_sdk/t01;

    if-eqz v0, :cond_1f

    sget-object p0, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    invoke-virtual {p0}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1f
    instance-of v0, p0, Lads_mobile_sdk/s01;

    if-eqz v0, :cond_53

    .line 10
    check-cast p0, Lads_mobile_sdk/s01;

    invoke-virtual {p0}, Lads_mobile_sdk/s01;->d()I

    move-result v0

    invoke-virtual {p0}, Lads_mobile_sdk/s01;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lads_mobile_sdk/s01;->e()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView HTTP error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on url: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_53
    instance-of v0, p0, Lads_mobile_sdk/u01;

    if-eqz v0, :cond_5e

    sget-object p0, Lads_mobile_sdk/ir0;->e:Lads_mobile_sdk/ir0;

    invoke-virtual {p0}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_5e
    instance-of v0, p0, Lads_mobile_sdk/m01;

    if-eqz v0, :cond_69

    check-cast p0, Lads_mobile_sdk/m01;

    invoke-virtual {p0}, Lads_mobile_sdk/m01;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_69
    instance-of v0, p0, Lads_mobile_sdk/j01;

    if-eqz v0, :cond_7f

    check-cast p0, Lads_mobile_sdk/j01;

    invoke-virtual {p0}, Lads_mobile_sdk/j01;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    invoke-virtual {p0}, Lads_mobile_sdk/j01;->c()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    return-object v0

    .line 14
    :cond_7f
    instance-of v0, p0, Lads_mobile_sdk/l01;

    if-eqz v0, :cond_8e

    check-cast p0, Lads_mobile_sdk/l01;

    invoke-virtual {p0}, Lads_mobile_sdk/l01;->c()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_8e
    instance-of v0, p0, Lads_mobile_sdk/k01;

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_97
    instance-of v0, p0, Lads_mobile_sdk/p01;

    if-eqz v0, :cond_a2

    check-cast p0, Lads_mobile_sdk/p01;

    invoke-virtual {p0}, Lads_mobile_sdk/p01;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_a2
    instance-of v0, p0, Lads_mobile_sdk/n01;

    if-eqz v0, :cond_ad

    check-cast p0, Lads_mobile_sdk/n01;

    invoke-virtual {p0}, Lads_mobile_sdk/n01;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_ad
    instance-of v0, p0, Lads_mobile_sdk/r01;

    if-eqz v0, :cond_b8

    check-cast p0, Lads_mobile_sdk/r01;

    invoke-virtual {p0}, Lads_mobile_sdk/r01;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_b8
    instance-of v0, p0, Lads_mobile_sdk/o01;

    if-eqz v0, :cond_c3

    check-cast p0, Lads_mobile_sdk/o01;

    invoke-virtual {p0}, Lads_mobile_sdk/o01;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
