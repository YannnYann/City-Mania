###### Class ads_mobile_sdk.mx1 (ads_mobile_sdk.mx1)
.class public final Lads_mobile_sdk/mx1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/an0;

.field public final b:Lads_mobile_sdk/ix1;

.field public final c:Lads_mobile_sdk/o21;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/f0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/an0;Lads_mobile_sdk/ix1;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f0;)V
    .registers 7

    .line 1
    const-string v0, "deviceProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/mx1;->a:Lads_mobile_sdk/an0;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/mx1;->b:Lads_mobile_sdk/ix1;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/mx1;->c:Lads_mobile_sdk/o21;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/mx1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    iput-object p5, p0, Lads_mobile_sdk/mx1;->e:Lads_mobile_sdk/f0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;
    .registers 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    .line 2
    iget-object v1, v11, Lads_mobile_sdk/mx1;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 5
    iget-object v3, v11, Lads_mobile_sdk/mx1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/kx1;

    const-string v0, "Activity context is required to show calendar event alert."

    invoke-direct {v6, v11, v12, v0, v2}, Lads_mobile_sdk/kx1;-><init>(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 8
    :cond_22
    iget-object v3, v11, Lads_mobile_sdk/mx1;->a:Lads_mobile_sdk/an0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "vnd.android.cursor.dir/event"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "setType(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v4}, Lads_mobile_sdk/an0;->a(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 12
    iget-object v4, v11, Lads_mobile_sdk/mx1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/kx1;

    const-string v0, "This feature is not available on the device."

    invoke-direct {v7, v11, v12, v0, v2}, Lads_mobile_sdk/kx1;-><init>(Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 17
    :cond_52
    const-string v3, "start_ticks"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_62

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    move-object v9, v3

    goto :goto_63

    :cond_62
    move-object v9, v2

    .line 18
    :goto_63
    const-string v3, "end_ticks"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_71

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    :cond_71
    move-object v10, v2

    .line 19
    const-string v2, "description"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_80

    move-object v6, v3

    goto :goto_81

    :cond_80
    move-object v6, v2

    .line 20
    :goto_81
    const-string v2, "summary"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8d

    move-object v8, v3

    goto :goto_8e

    :cond_8d
    move-object v8, v2

    .line 21
    :goto_8e
    const-string v2, "location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9a

    move-object v7, v3

    goto :goto_9b

    :cond_9a
    move-object v7, v0

    .line 24
    :goto_9b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 25
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_create_calendar_event:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ab

    :cond_a9
    const-string v2, "Create calendar event"

    :cond_ab
    if-eqz v0, :cond_b5

    .line 26
    sget v3, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_allow_calendar_event:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b7

    :cond_b5
    const-string v3, "Allow Ad to create a calendar event?"

    :cond_b7
    if-eqz v0, :cond_c1

    .line 27
    sget v4, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_alert_accept:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c3

    :cond_c1
    const-string v4, "Accept"

    :cond_c3
    if-eqz v0, :cond_d0

    .line 28
    sget v5, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_alert_decline:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ce

    goto :goto_d0

    :cond_ce
    :goto_ce
    move-object v5, v0

    goto :goto_d3

    :cond_d0
    :goto_d0
    const-string v0, "Decline"

    goto :goto_ce

    .line 31
    :goto_d3
    iget-object v14, v11, Lads_mobile_sdk/mx1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/lx1;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/lx1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lads_mobile_sdk/mx1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object v11, v14

    move-object v14, v0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 52
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
