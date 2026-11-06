###### Class com.google.android.gms.internal.consent_sdk.zzcn (com.google.android.gms.internal.consent_sdk.zzcn)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:Ljava/util/List;

.field public zze:Ljava/util/List;

.field public zzf:Ljava/lang/String;

.field public zzg:I

.field public zzh:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 2
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    return-void
.end method

.method public static zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcn;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcn;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_23e

    goto :goto_73

    .line 33
    :sswitch_23
    const-string v2, "consent_form_payload"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v11

    goto :goto_74

    :sswitch_2d
    const-string v2, "request_info_keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v6

    goto :goto_74

    :sswitch_37
    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v5

    goto :goto_74

    :sswitch_41
    const-string v2, "privacy_options_required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v4

    goto :goto_74

    :sswitch_4b
    const-string v2, "client_side_pingback_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v3

    goto :goto_74

    :sswitch_55
    const-string v2, "consent_form_base_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v10

    goto :goto_74

    :sswitch_5f
    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v9

    goto :goto_74

    :sswitch_69
    const-string v2, "consent_signal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v8

    goto :goto_74

    :cond_73
    :goto_73
    move v1, v7

    :goto_74
    packed-switch v1, :pswitch_data_260

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 6
    :pswitch_7b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzf:Ljava/lang/String;

    goto :goto_8

    .line 7
    :pswitch_82
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x70970855

    if-eq v2, v3, :cond_ae

    const v3, 0x17371b9f

    if-eq v2, v3, :cond_a4

    const v3, 0x19d1382a

    if-eq v2, v3, :cond_9a

    goto :goto_b7

    :cond_9a
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    move v7, v8

    goto :goto_b7

    :cond_a4
    const-string v2, "REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    move v7, v11

    goto :goto_b7

    :cond_ae
    const-string v2, "NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    move v7, v10

    :cond_b7
    :goto_b7
    if-eqz v7, :cond_cc

    if-eq v7, v11, :cond_ca

    if-ne v7, v10, :cond_be

    goto :goto_cd

    .line 37
    :cond_be
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ca
    move v9, v10

    goto :goto_cd

    :cond_cc
    move v9, v11

    .line 8
    :goto_cd
    iput v9, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    goto/16 :goto_8

    :pswitch_d1
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 11
    :goto_db
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_182

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzcm;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 13
    :goto_e9
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    .line 14
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7d8028f6

    if-eq v3, v4, :cond_10c

    const v4, 0x5e663ba3

    if-eq v3, v4, :cond_102

    goto :goto_116

    .line 18
    :cond_102
    const-string v3, "action_type"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    move v2, v8

    goto :goto_117

    :cond_10c
    const-string v3, "args_json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    move v2, v11

    goto :goto_117

    :cond_116
    :goto_116
    move v2, v7

    :goto_117
    if-eqz v2, :cond_126

    if-eq v2, v11, :cond_11f

    .line 19
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e9

    .line 16
    :cond_11f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zza:Ljava/lang/String;

    goto :goto_e9

    .line 17
    :cond_126
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x3d3be2d

    if-eq v3, v4, :cond_152

    const v4, 0x4f05fbf

    if-eq v3, v4, :cond_148

    const v4, 0x6ea5670e

    if-eq v3, v4, :cond_13e

    goto :goto_15c

    :cond_13e
    const-string v3, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move v3, v8

    goto :goto_15d

    :cond_148
    const-string v3, "WRITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move v3, v11

    goto :goto_15d

    :cond_152
    const-string v3, "CLEAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move v3, v10

    goto :goto_15d

    :cond_15c
    :goto_15c
    move v3, v7

    :goto_15d
    if-eqz v3, :cond_173

    if-eq v3, v11, :cond_171

    if-ne v3, v10, :cond_165

    move v2, v9

    goto :goto_174

    .line 35
    :cond_165
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_171
    move v2, v10

    goto :goto_174

    :cond_173
    move v2, v11

    .line 18
    :goto_174
    iput v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzb:I

    goto/16 :goto_e9

    .line 20
    :cond_178
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_db

    .line 22
    :cond_182
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_8

    :pswitch_187
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 25
    :goto_191
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_191

    .line 28
    :cond_1a1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_8

    .line 29
    :pswitch_1a6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    goto/16 :goto_8

    .line 30
    :pswitch_1ae
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzb:Ljava/lang/String;

    goto/16 :goto_8

    .line 31
    :pswitch_1b6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza:Ljava/lang/String;

    goto/16 :goto_8

    .line 32
    :pswitch_1be
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_274

    goto :goto_219

    :sswitch_1ca
    const-string v2, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v5

    goto :goto_219

    :sswitch_1d4
    const-string v2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v11

    goto :goto_219

    :sswitch_1de
    const-string v2, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v9

    goto :goto_219

    :sswitch_1e8
    const-string v2, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v3

    goto :goto_219

    :sswitch_1f2
    const-string v2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v10

    goto :goto_219

    :sswitch_1fc
    const-string v2, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v8

    goto :goto_219

    :sswitch_206
    const-string v2, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v4

    goto :goto_219

    :sswitch_210
    const-string v2, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move v7, v6

    :cond_219
    :goto_219
    packed-switch v7, :pswitch_data_296

    .line 5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_228
    const/16 v3, 0x8

    goto :goto_236

    :pswitch_22b
    move v3, v4

    goto :goto_236

    :pswitch_22d
    move v3, v5

    goto :goto_236

    :pswitch_22f
    move v3, v6

    goto :goto_236

    :pswitch_231
    move v3, v9

    goto :goto_236

    :pswitch_233
    move v3, v10

    goto :goto_236

    :pswitch_235
    move v3, v11

    .line 33
    :goto_236
    :pswitch_236
    iput v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    goto/16 :goto_8

    .line 38
    :cond_23a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0

    :sswitch_data_23e
    .sparse-switch
        -0x774ac593 -> :sswitch_69
        -0x738f0f30 -> :sswitch_5f
        -0x6e5c3749 -> :sswitch_55
        -0x67601003 -> :sswitch_4b
        -0x4ef2d809 -> :sswitch_41
        -0x453fb703 -> :sswitch_37
        -0x3ad17acb -> :sswitch_2d
        -0x2f244ae8 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_1be
        :pswitch_1b6
        :pswitch_1ae
        :pswitch_1a6
        :pswitch_187
        :pswitch_d1
        :pswitch_82
        :pswitch_7b
    .end packed-switch

    :sswitch_data_274
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_210
        -0x755d1a4a -> :sswitch_206
        -0x4b527788 -> :sswitch_1fc
        -0x38e1da9b -> :sswitch_1f2
        -0x36c1e70c -> :sswitch_1e8
        0x19984e10 -> :sswitch_1de
        0x1be36b13 -> :sswitch_1d4
        0x66d8a81d -> :sswitch_1ca
    .end sparse-switch

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_235
        :pswitch_233
        :pswitch_231
        :pswitch_22f
        :pswitch_22d
        :pswitch_22b
        :pswitch_236
        :pswitch_228
    .end packed-switch
.end method
