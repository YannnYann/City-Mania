###### Class com.google.android.gms.internal.consent_sdk.zzl (com.google.android.gms.internal.consent_sdk.zzl)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzl;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzam;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzam;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzam;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzl;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzam;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzam;->zzd()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzl;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzam;->zzb(Landroid/content/Context;)V

    .line 3
    const-string v3, "IABTCF_gdprApplies"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Ljava/util/HashMap;

    .line 4
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_116

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v8, :sswitch_data_11a

    goto :goto_6d

    .line 18
    :sswitch_45
    const-string v8, "UMP_CoMoAdUserDataPurposeConsentStatus"

    .line 7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    move v8, v12

    goto :goto_6e

    :sswitch_4f
    const-string v8, "UMP_CoMoAdStoragePurposeConsentStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    const/4 v8, 0x0

    goto :goto_6e

    :sswitch_59
    const-string v8, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    move v8, v10

    goto :goto_6e

    :sswitch_63
    const-string v8, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    move v8, v11

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v8, v9

    :goto_6e
    const-string v13, "AD_USER_DATA"

    const-string v14, "AD_PERSONALIZATION"

    if-eqz v8, :cond_88

    if-eq v8, v12, :cond_84

    if-eq v8, v11, :cond_80

    if-eq v8, v10, :cond_7b

    goto :goto_27

    .line 18
    :cond_7b
    const-string v8, "google_analytics_default_allow_analytics_storage"

    const-string v10, "ANALYTICS_STORAGE"

    goto :goto_8c

    :cond_80
    const-string v8, "google_analytics_default_allow_ad_personalization_signals"

    move-object v10, v14

    goto :goto_8c

    :cond_84
    const-string v8, "google_analytics_default_allow_ad_user_data"

    move-object v10, v13

    goto :goto_8c

    .line 7
    :cond_88
    const-string v8, "google_analytics_default_allow_ad_storage"

    const-string v10, "AD_STORAGE"

    .line 8
    :goto_8c
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v9, :cond_27

    const-string v9, "GRANTED"

    if-eq v7, v12, :cond_111

    const-string v15, "DENIED"

    if-eq v7, v11, :cond_10c

    const/4 v11, 0x4

    if-eq v7, v11, :cond_27

    const/4 v11, 0x5

    const-string v12, "UserMessagingPlatform"

    if-eq v7, v11, :cond_be

    new-instance v8, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid CoMo consent status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 9
    :cond_be
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/consent_sdk/zzam;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_cb

    const-string v7, "No default metadata"

    .line 10
    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 11
    :cond_cb
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_de

    check-cast v7, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v8, v7, :cond_d9

    move-object v9, v15

    :cond_d9
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 13
    :cond_de
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_105

    const-string v8, "eu_consent_policy"

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f6

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_105

    :cond_f6
    if-eqz v4, :cond_105

    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_100

    move-object v9, v15

    :cond_100
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    :cond_105
    const-string v7, "Failed to get the default eu_consent_policy value."

    .line 15
    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 17
    :cond_10c
    invoke-interface {v5, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 18
    :cond_111
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 21
    :cond_116
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/consent_sdk/zzam;->zzc(Ljava/util/Map;)V

    return-void

    :sswitch_data_11a
    .sparse-switch
        -0x72d36826 -> :sswitch_63
        -0x883f808 -> :sswitch_59
        0x3fb31ab1 -> :sswitch_4f
        0x582c6f7b -> :sswitch_45
    .end sparse-switch
.end method
