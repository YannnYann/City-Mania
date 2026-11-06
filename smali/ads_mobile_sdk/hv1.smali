###### Class ads_mobile_sdk.hv1 (ads_mobile_sdk.hv1)
.class public final Lads_mobile_sdk/hv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;ZIILjava/lang/String;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/hv1;-><init>(Ljava/util/Set;ZIILjava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZIILjava/lang/String;Landroid/location/Location;)V
    .registers 7

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/hv1;->a:Ljava/util/Set;

    .line 16
    iput-boolean p2, p0, Lads_mobile_sdk/hv1;->b:Z

    .line 17
    iput p3, p0, Lads_mobile_sdk/hv1;->c:I

    .line 18
    iput p4, p0, Lads_mobile_sdk/hv1;->d:I

    .line 19
    iput-object p5, p0, Lads_mobile_sdk/hv1;->e:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lads_mobile_sdk/hv1;->f:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/hv1;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 27
    iget-object v0, p0, Lads_mobile_sdk/hv1;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/hv1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lads_mobile_sdk/hv1;->b:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    .line 29
    iget v0, p0, Lads_mobile_sdk/hv1;->c:I

    return v0
.end method

.method public final taggedForUnderAgeTreatment()I
    .registers 2

    .line 35
    iget v0, p0, Lads_mobile_sdk/hv1;->d:I

    return v0
.end method
