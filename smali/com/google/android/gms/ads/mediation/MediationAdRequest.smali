###### Class com.google.android.gms.ads.mediation.MediationAdRequest (com.google.android.gms.ads.mediation.MediationAdRequest)
.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->a:Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;

    sput-object v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->Companion:Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;

    return-void
.end method


# virtual methods
.method public abstract getBirthday()Ljava/util/Date;
.end method

.method public abstract getGender()I
.end method

.method public abstract getKeywords()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMaxAdContentRating()Ljava/lang/String;
.end method

.method public abstract isDesignedForFamilies()Z
.end method

.method public abstract isTesting()Z
.end method

.method public abstract taggedForChildDirectedTreatment()I
.end method

.method public abstract taggedForUnderAgeTreatment()I
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdRequest.Companion (com.google.android.gms.ads.mediation.MediationAdRequest$Companion)
.class public final Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic a:Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->a:Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->b:I

    .line 9
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->c:I

    .line 17
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->d:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE()I
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->c:I

    return v0
.end method

.method public final getTAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE()I
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->b:I

    return v0
.end method

.method public final getTAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED()I
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;->d:I

    return v0
.end method
