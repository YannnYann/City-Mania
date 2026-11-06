###### Class com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest (com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest)
.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;
.source "SourceFile"


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lads_mobile_sdk/x11;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "signalType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "categoryExclusions"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customTargeting"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "googleExtrasBundle"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keywords"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "neighboringContentUrls"

    move-object/from16 v7, p8

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceExtrasBundles"

    move-object/from16 v8, p9

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x800

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->m:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x166affec

    if-eq v2, v3, :cond_b8

    packed-switch v2, :pswitch_data_c8

    goto/16 :goto_c0

    :pswitch_56
    const-string v2, "requester_type_7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto/16 :goto_c0

    .line 39
    :cond_60
    sget-object v1, Lads_mobile_sdk/x11;->j:Lads_mobile_sdk/x11;

    goto/16 :goto_c5

    .line 40
    :pswitch_64
    const-string v2, "requester_type_6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_c0

    .line 47
    :cond_6d
    sget-object v1, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 48
    :pswitch_70
    const-string v2, "requester_type_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    goto :goto_c0

    .line 54
    :cond_79
    sget-object v1, Lads_mobile_sdk/x11;->h:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 55
    :pswitch_7c
    const-string v2, "requester_type_4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    goto :goto_c0

    .line 60
    :cond_85
    sget-object v1, Lads_mobile_sdk/x11;->g:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 61
    :pswitch_88
    const-string v2, "requester_type_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto :goto_c0

    .line 65
    :cond_91
    sget-object v1, Lads_mobile_sdk/x11;->f:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 66
    :pswitch_94
    const-string v2, "requester_type_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    goto :goto_c0

    .line 69
    :cond_9d
    sget-object v1, Lads_mobile_sdk/x11;->e:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 70
    :pswitch_a0
    const-string v2, "requester_type_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto :goto_c0

    .line 72
    :cond_a9
    sget-object v1, Lads_mobile_sdk/x11;->d:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 73
    :pswitch_ac
    const-string v2, "requester_type_0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    goto :goto_c0

    .line 74
    :cond_b5
    sget-object v1, Lads_mobile_sdk/x11;->b:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 75
    :cond_b8
    const-string v2, "signal_type_ad_manager_s2s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 85
    :goto_c0
    sget-object v1, Lads_mobile_sdk/x11;->c:Lads_mobile_sdk/x11;

    goto :goto_c5

    .line 86
    :cond_c3
    sget-object v1, Lads_mobile_sdk/x11;->k:Lads_mobile_sdk/x11;

    .line 87
    :goto_c5
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->n:Lads_mobile_sdk/x11;

    return-void

    :pswitch_data_c8
    .packed-switch 0x67ecf68e
        :pswitch_ac
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/x11;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->n:Lads_mobile_sdk/x11;

    return-object v0
.end method

.method public final getSignalType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->m:Ljava/lang/String;

    return-object v0
.end method
