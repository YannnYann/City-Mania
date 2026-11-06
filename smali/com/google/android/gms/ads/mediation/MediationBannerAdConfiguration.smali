###### Class com.google.android.gms.ads.mediation.MediationBannerAdConfiguration (com.google.android.gms.ads.mediation.MediationBannerAdConfiguration)
.class public final Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
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

.field private final t:Lcom/google/android/gms/ads/AdSize;

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v4, p4

    move-object/from16 v11, p10

    move-object/from16 v10, p11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationExtras"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watermark"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->k:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->l:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->m:Landroid/os/Bundle;

    .line 5
    iput-object v4, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->n:Landroid/os/Bundle;

    .line 6
    iput-boolean v5, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->o:Z

    .line 7
    iput-object v6, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->p:Landroid/location/Location;

    .line 8
    iput v7, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->q:I

    .line 9
    iput v8, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->r:I

    .line 10
    iput-object v9, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->s:Ljava/lang/String;

    .line 11
    iput-object v11, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->t:Lcom/google/android/gms/ads/AdSize;

    .line 12
    iput-object v10, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->t:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getBidResponse()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->k:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->p:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTaggedForChildDirectedTreatment()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->q:I

    return v0
.end method

.method public getTaggedForUnderAgeTreatment()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->r:I

    return v0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->u:Ljava/lang/String;

    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->o:Z

    return v0
.end method
