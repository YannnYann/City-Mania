###### Class com.google.android.gms.ads.mediation.MediationNativeAdConfiguration (com.google.android.gms.ads.mediation.MediationNativeAdConfiguration)
.class public final Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
.super Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.source "SourceFile"


# instance fields
.field private final k:Landroid/content/Context;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/os/Bundle;

.field private final n:Landroid/os/Bundle;

.field private final o:Z

.field private final p:Landroid/location/Location;

.field private final q:I

.field private final r:I

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Lcom/google/android/gms/ads/nativead/NativeAdOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationExtras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watermark"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p10

    move-object p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->k:Landroid/content/Context;

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->m:Landroid/os/Bundle;

    .line 5
    iput-object p5, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->n:Landroid/os/Bundle;

    .line 6
    iput-boolean p6, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->o:Z

    .line 7
    iput-object p7, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->p:Landroid/location/Location;

    .line 8
    iput p8, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->q:I

    .line 9
    iput p9, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->r:I

    .line 10
    iput-object p10, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->s:Ljava/lang/String;

    .line 11
    iput-object v0, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->t:Ljava/lang/String;

    .line 12
    iput-object p11, p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->u:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-void
.end method


# virtual methods
.method public getBidResponse()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->k:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->p:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getNativeAdOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->u:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTaggedForChildDirectedTreatment()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->q:I

    return v0
.end method

.method public getTaggedForUnderAgeTreatment()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->r:I

    return v0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->t:Ljava/lang/String;

    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->o:Z

    return v0
.end method
