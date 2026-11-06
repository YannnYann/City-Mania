###### Class ads_mobile_sdk.rv1 (ads_mobile_sdk.rv1)
.class public final Lads_mobile_sdk/rv1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/rv1;Ljava/lang/String;ZZLads_mobile_sdk/j53;I)Lads_mobile_sdk/jf;
    .registers 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    move p3, v1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    .line 2
    sget-object p4, Lads_mobile_sdk/j53;->d:Lads_mobile_sdk/j53;

    .line 3
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p0, "adapterClassName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "requestType"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :try_start_1e
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_3c

    .line 42
    instance-of p1, p0, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    if-eqz p1, :cond_71

    .line 43
    new-instance p1, Lads_mobile_sdk/u83;

    check-cast p0, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-direct {p1, p0}, Lads_mobile_sdk/u83;-><init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V

    return-object p1

    .line 50
    :cond_3c
    instance-of p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-eqz p1, :cond_65

    .line 51
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    .line 52
    sget-object p2, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    if-ne p4, p2, :cond_4b

    instance-of p2, p1, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez p2, :cond_5b

    .line 53
    :cond_4b
    sget-object p2, Lads_mobile_sdk/j53;->h:Lads_mobile_sdk/j53;

    if-ne p4, p2, :cond_53

    instance-of p2, p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez p2, :cond_5b

    .line 54
    :cond_53
    sget-object p2, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    if-ne p4, p2, :cond_65

    instance-of p1, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz p1, :cond_65

    :cond_5b
    if-nez p3, :cond_65

    .line 55
    new-instance p1, Lads_mobile_sdk/rc2;

    check-cast p0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-direct {p1, p0}, Lads_mobile_sdk/rc2;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    return-object p1

    .line 58
    :cond_65
    instance-of p1, p0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz p1, :cond_71

    .line 59
    new-instance p1, Lads_mobile_sdk/qv1;

    check-cast p0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-direct {p1, p0}, Lads_mobile_sdk/qv1;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_70} :catch_71

    return-object p1

    :catch_71
    :cond_71
    const/4 p0, 0x0

    return-object p0
.end method
