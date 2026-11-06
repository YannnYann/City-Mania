###### Class com.google.android.gms.internal.consent_sdk.zzcv (com.google.android.gms.internal.consent_sdk.zzcv)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/consent_sdk/zzdw;


# instance fields
.field private final zzb:Ljava/util/Map;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    const-string v1, "IABTCF_gdprApplies"

    const-string v2, "UMP_CoMoAdStoragePurposeConsentStatus"

    const-string v3, "UMP_CoMoAdUserDataPurposeConsentStatus"

    const-string v4, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzd:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzc:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzcv;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzf(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method private final zzf(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzc:Landroid/content/Context;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method


# virtual methods
.method public final zzb()Ljava/util/Map;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public final zzc()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$Editor;

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final zzd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzc:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzcu;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    iget-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zza:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzf(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2d

    check-cast p2, Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdw;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzds;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcv;->zzb:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 7
    :cond_2d
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3d

    check-cast p2, Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 9
    :cond_3d
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_4d

    check-cast p2, Ljava/lang/Double;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 11
    :cond_4d
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_5d

    check-cast p2, Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 13
    :cond_5d
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6d

    check-cast p2, Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 15
    :cond_6d
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_7a

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zzb:Ljava/lang/String;

    .line 16
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_78
    :goto_78
    const/4 p1, 0x1

    return p1

    :cond_7a
    return v0
.end method
