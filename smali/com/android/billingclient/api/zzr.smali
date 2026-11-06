###### Class com.android.billingclient.api.zzr (com.android.billingclient.api.zzr)
.class public final Lcom/android/billingclient/api/zzr;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzs;

.field public zzb:Z

.field public final zzc:Z


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/zzs;Z)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/android/billingclient/api/zzr;->zzc:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v0, p0

    const/4 v8, 0x1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x58756162

    const/4 v4, 0x2

    const/4 v9, 0x0

    if-eq v2, v3, :cond_31

    const v3, -0x141f9074

    if-eq v2, v3, :cond_27

    const v3, 0x14937179

    if-eq v2, v3, :cond_1d

    goto :goto_3b

    .line 5
    :cond_1d
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v4

    goto :goto_3c

    :cond_27
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v8

    goto :goto_3c

    :cond_31
    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v9

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v1, -0x1

    :goto_3c
    if-eqz v1, :cond_4b

    if-eq v1, v8, :cond_48

    if-eq v1, v4, :cond_45

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_4d

    .line 5
    :cond_45
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_4d

    :cond_48
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_4d

    :cond_4b
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    :goto_4d
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    :cond_5d
    move v3, v4

    goto :goto_6b

    .line 29
    :cond_5f
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/16 v3, 0x20

    goto :goto_6b

    :cond_6a
    move v3, v8

    .line 6
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v10, 0x0

    const-string v11, "BillingBroadcastManager"

    if-nez v5, :cond_98

    const-string v2, "Bundle is null."

    .line 7
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzie;->zzk:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 8
    sget-object v6, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 9
    invoke-static {v5, v3, v6, v10, v1}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v1

    .line 8
    invoke-interface {v4, v1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    if-eqz v1, :cond_21a

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 10
    invoke-interface {v1, v6, v10}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_98
    if-ne v3, v4, :cond_f6

    .line 11
    sget v4, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 70
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_b8

    const-string v6, "Unexpected null bundle received!"

    .line 19
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b6
    move v6, v9

    goto :goto_e3

    .line 28
    :cond_b8
    const-string v7, "SUB_RESPONSE_CODE"

    .line 20
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c6

    const-string v6, "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 21
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    .line 22
    :cond_c6
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_d1

    .line 23
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_e3

    :cond_d1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unexpected type for bundle sub response code: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    .line 26
    :goto_e3
    invoke-virtual {v4, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 28
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    goto :goto_fc

    :cond_f6
    move-object/from16 v4, p2

    .line 29
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    .line 16
    :goto_fc
    const-string v6, "billingClientTransactionId"

    const-wide/16 v12, 0x0

    .line 30
    invoke-virtual {v5, v6, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v12, "wasServiceAutoReconnected"

    .line 31
    invoke-virtual {v5, v12, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 32
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_118

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    :cond_118
    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-wide v5, v6

    move v7, v12

    goto/16 :goto_21b

    .line 37
    :cond_11f
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_143

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-wide v5, v6

    move v7, v12

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/android/billingclient/api/zzr;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v3

    .line 42
    invoke-interface {v1, v2, v3}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_143
    move-object v4, v1

    move-object v1, v5

    move-wide v5, v6

    move v7, v12

    iget-object v2, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zza(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzb;

    move-result-object v12

    if-nez v12, :cond_178

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v12

    if-eqz v12, :cond_156

    goto :goto_178

    .line 65
    :cond_156
    const-string v1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 66
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v2

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zzay:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 67
    sget-object v9, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 68
    invoke-static {v8, v3, v9, v10, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v3

    .line 67
    invoke-interface {v2, v3, v5, v6, v7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v2

    .line 70
    invoke-interface {v1, v9, v2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 42
    :cond_178
    :goto_178
    const-string v12, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 43
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1fb

    :try_start_180
    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v12

    if-eqz v12, :cond_193

    new-instance v8, Lcom/android/billingclient/api/UserChoiceDetails;

    .line 51
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/UserChoiceDetails;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v2

    .line 52
    invoke-interface {v2, v8}, Lcom/android/billingclient/api/UserChoiceBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V

    goto :goto_1c3

    .line 44
    :cond_193
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "products"

    .line 45
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v12, :cond_1a6

    goto :goto_1bc

    .line 47
    :cond_1a6
    :goto_1a6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v9, v14, :cond_1bc

    .line 48
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_1ba

    new-instance v15, Lcom/android/billingclient/api/zzc;

    .line 49
    invoke-direct {v15, v14, v10}, Lcom/android/billingclient/api/zzc;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzd;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ba
    add-int/2addr v9, v8

    goto :goto_1a6

    .line 46
    :cond_1bc
    :goto_1bc
    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zza(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzb;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Lcom/android/billingclient/api/zzb;->zza()V
    :try_end_1c3
    .catch Lorg/json/JSONException; {:try_start_180 .. :try_end_1c3} :catch_1d1

    .line 52
    :goto_1c3
    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    .line 59
    invoke-static {v3, v4}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    .line 60
    invoke-interface {v1, v2, v5, v6, v7}, Lcom/android/billingclient/api/zzch;->zzh(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    return-void

    .line 2
    :catch_1d1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Error when parsing invalid user choice data: [%s]"

    .line 53
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v2

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zzq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 55
    sget-object v9, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 56
    invoke-static {v8, v3, v9, v10, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v3

    .line 55
    invoke-interface {v2, v3, v5, v6, v7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v2

    .line 58
    invoke-interface {v1, v9, v2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 49
    :cond_1fb
    const-string v1, "Couldn\'t find alternative billing user choice data in bundle."

    .line 61
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zzp:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 62
    sget-object v9, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 63
    invoke-static {v8, v3, v9, v10, v4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v3

    .line 62
    invoke-interface {v1, v3, v5, v6, v7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v2}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v2

    .line 65
    invoke-interface {v1, v9, v2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_21a
    return-void

    .line 34
    :goto_21b
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzl(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v9

    if-nez v9, :cond_233

    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    .line 35
    invoke-static {v3, v4}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v3

    .line 36
    invoke-interface {v1, v3, v5, v6, v7}, Lcom/android/billingclient/api/zzch;->zzh(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    goto :goto_236

    .line 37
    :cond_233
    invoke-virtual/range {v0 .. v7}, Lcom/android/billingclient/api/zzr;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    .line 36
    :goto_236
    iget-object v1, v0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v1}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    .line 38
    invoke-interface {v1, v2, v8}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzc:Z

    if-eq v2, v0, :cond_14

    const/4 v0, 0x4

    goto :goto_15

    :cond_14
    const/4 v0, 0x2

    :goto_15
    invoke-static {p1, p0, p2, v0}, Lcom/android/billingclient/api/zzr$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1e

    :catchall_19
    move-exception p1

    goto :goto_22

    .line 2
    :cond_1b
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1
    :goto_1e
    iput-boolean v2, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_19

    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_19

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean p3, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz p3, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-lt p3, v0, :cond_27

    iget-boolean p3, p0, Lcom/android/billingclient/api/zzr;->zzc:Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_24

    if-eq v6, p3, :cond_17

    const/4 p3, 0x4

    :goto_15
    move v5, p3

    goto :goto_19

    :cond_17
    const/4 p3, 0x2

    goto :goto_15

    :goto_19
    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    :try_start_1d
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/zzr$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_2e

    :catchall_21
    move-exception v0

    :goto_22
    move-object p1, v0

    goto :goto_32

    :catchall_24
    move-exception v0

    move-object v1, p0

    goto :goto_22

    :cond_27
    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1
    :goto_2e
    iput-boolean v6, v1, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_21

    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_21

    throw p1
.end method

.method public final declared-synchronized zzc(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzb:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    goto :goto_18

    :cond_f
    :try_start_f
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_d

    throw p1
.end method

.method public final zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V
    .registers 10

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object p2, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {p2}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object p2

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza()Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p3

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzA([BLcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1, p5, p6, p7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {p1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p3, p2, v1, p4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2, p5, p6, p7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
