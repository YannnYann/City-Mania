###### Class ads_mobile_sdk.qu0 (ads_mobile_sdk.qu0)
.class public final Lads_mobile_sdk/qu0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/bv0;

.field public final synthetic e:Lads_mobile_sdk/g32;

.field public final synthetic f:Lcom/google/gson/JsonObject;

.field public final synthetic g:Lcom/google/gson/JsonObject;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    iput-object p2, p0, Lads_mobile_sdk/qu0;->e:Lads_mobile_sdk/g32;

    iput-object p3, p0, Lads_mobile_sdk/qu0;->f:Lcom/google/gson/JsonObject;

    iput-object p4, p0, Lads_mobile_sdk/qu0;->g:Lcom/google/gson/JsonObject;

    iput-object p5, p0, Lads_mobile_sdk/qu0;->h:Ljava/lang/String;

    iput-object p6, p0, Lads_mobile_sdk/qu0;->i:Landroid/view/View;

    iput-boolean p7, p0, Lads_mobile_sdk/qu0;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12

    .line 1
    new-instance v0, Lads_mobile_sdk/qu0;

    iget-object v1, p0, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    iget-object v2, p0, Lads_mobile_sdk/qu0;->e:Lads_mobile_sdk/g32;

    iget-object v3, p0, Lads_mobile_sdk/qu0;->f:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/qu0;->g:Lcom/google/gson/JsonObject;

    iget-object v5, p0, Lads_mobile_sdk/qu0;->h:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/qu0;->i:Landroid/view/View;

    iget-boolean v7, p0, Lads_mobile_sdk/qu0;->j:Z

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/qu0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/qu0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qu0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/qu0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 600
    iget v2, v1, Lads_mobile_sdk/qu0;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_38

    if-eq v2, v5, :cond_29

    if-ne v2, v3, :cond_21

    iget-object v2, v1, Lads_mobile_sdk/qu0;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v1, Lads_mobile_sdk/qu0;->a:Lads_mobile_sdk/rr3;

    :try_start_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_2cc

    :catchall_1e
    move-exception v0

    goto/16 :goto_2e3

    .line 601
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v2, v1, Lads_mobile_sdk/qu0;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v1, Lads_mobile_sdk/qu0;->a:Lads_mobile_sdk/rr3;

    :try_start_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_35

    move-object v7, v2

    move-object/from16 v2, p1

    goto/16 :goto_24b

    :catchall_35
    move-exception v0

    goto/16 :goto_261

    .line 602
    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 603
    iget-object v2, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    .line 604
    iget-object v2, v2, Lads_mobile_sdk/bv0;->y:Lads_mobile_sdk/ex0;

    .line 605
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    const-string v7, "gads:native_click_protection:enabled"

    .line 607
    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 624
    iget-object v2, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    .line 625
    iget-object v2, v2, Lads_mobile_sdk/bv0;->z:Lads_mobile_sdk/s93;

    .line 626
    iget-object v2, v2, Lads_mobile_sdk/s93;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 627
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 628
    :cond_62
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v7, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    iget-object v8, v1, Lads_mobile_sdk/qu0;->e:Lads_mobile_sdk/g32;

    iget-object v9, v1, Lads_mobile_sdk/qu0;->f:Lcom/google/gson/JsonObject;

    iget-object v10, v1, Lads_mobile_sdk/qu0;->g:Lcom/google/gson/JsonObject;

    .line 629
    const-string v11, "ad"

    .line 630
    iget-object v12, v7, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    .line 631
    invoke-virtual {v2, v11, v12}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz v8, :cond_94

    .line 633
    iget-object v11, v8, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    const-string v12, "asset_view_signal"

    invoke-virtual {v2, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 634
    iget-object v11, v8, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    const-string v12, "ad_view_signal"

    invoke-virtual {v2, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 635
    iget-object v11, v8, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    const-string v12, "scroll_view_signal"

    invoke-virtual {v2, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 636
    iget-object v8, v8, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    const-string v11, "lock_screen_signal"

    invoke-virtual {v2, v11, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_94
    if-eqz v9, :cond_9b

    .line 638
    const-string v8, "click_signal"

    invoke-virtual {v2, v8, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 640
    :cond_9b
    const-string v8, "has_custom_click_handler"

    .line 641
    iget-object v7, v7, Lads_mobile_sdk/bv0;->s:Lads_mobile_sdk/fm0;

    .line 642
    monitor-enter v7

    .line 643
    :try_start_a0
    iget-object v9, v7, Lads_mobile_sdk/fm0;->n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_368

    monitor-exit v7

    if-eqz v9, :cond_a7

    move v7, v5

    goto :goto_a8

    :cond_a7
    move v7, v4

    .line 644
    :goto_a8
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 645
    invoke-virtual {v2, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v10, :cond_b6

    .line 649
    const-string v7, "provided_signals"

    invoke-virtual {v2, v7, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 653
    :cond_b6
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v8, v1, Lads_mobile_sdk/qu0;->h:Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    iget-object v10, v1, Lads_mobile_sdk/qu0;->i:Landroid/view/View;

    iget-boolean v11, v1, Lads_mobile_sdk/qu0;->j:Z

    .line 654
    const-string v12, "asset_id"

    invoke-virtual {v7, v12, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v8, "template"

    .line 656
    iget-object v12, v9, Lads_mobile_sdk/bv0;->k:Lads_mobile_sdk/s02;

    .line 657
    iget v12, v12, Lads_mobile_sdk/s02;->a:I

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 658
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v12, "view_aware_api_used"

    invoke-virtual {v7, v12, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 659
    const-string v8, "custom_mute_requested"

    .line 660
    iget-object v12, v9, Lads_mobile_sdk/bv0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 661
    invoke-interface {v12}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomMuteThisAdRequested()Z

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 662
    invoke-virtual {v9}, Lads_mobile_sdk/bv0;->k()Z

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v12, "custom_mute_enabled"

    invoke-virtual {v7, v12, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 664
    const-string v8, "has_custom_click_handler"

    .line 665
    iget-object v12, v9, Lads_mobile_sdk/bv0;->s:Lads_mobile_sdk/fm0;

    .line 666
    invoke-virtual {v12}, Lads_mobile_sdk/fm0;->g()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;

    move-result-object v12

    if-eqz v12, :cond_106

    move v12, v5

    goto :goto_107

    :cond_106
    move v12, v4

    :goto_107
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 667
    invoke-virtual {v7, v8, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 668
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v8, v9, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    new-instance v12, Lcom/google/gson/JsonObject;

    invoke-direct {v12}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v13, "tracking_urls_and_actions"

    invoke-static {v8, v13, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 669
    const-string v12, "click_string"

    .line 670
    const-string v13, ""

    invoke-static {v8, v12, v13}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    iget-object v12, v9, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 672
    sget-object v13, Lads_mobile_sdk/s11;->h0:Lads_mobile_sdk/s11;

    .line 673
    iget-object v14, v9, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 901
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 902
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v3

    .line 903
    iget-object v3, v3, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v3, :cond_186

    .line 904
    invoke-static {v12, v13, v15, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 905
    :try_start_13b
    iget-object v12, v9, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    invoke-virtual {v12, v10, v8}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_145

    .line 1149
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_197

    :catchall_145
    move-exception v0

    .line 1157
    :try_start_146
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1161
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_17f

    .line 1163
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15c

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_15c

    .line 1169
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_15c

    :catchall_159
    move-exception v0

    move-object v2, v0

    goto :goto_180

    .line 1175
    :cond_15c
    :goto_15c
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_177

    .line 1176
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16f

    .line 1177
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_169

    throw v0

    .line 1178
    :cond_169
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1179
    :cond_16f
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1180
    :cond_177
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1181
    :cond_17f
    throw v0
    :try_end_180
    .catchall {:try_start_146 .. :try_end_180} :catchall_159

    .line 1182
    :goto_180
    :try_start_180
    throw v2
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_181

    :catchall_181
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1216
    :cond_186
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 1217
    :try_start_18e
    iget-object v12, v9, Lads_mobile_sdk/bv0;->j:Lads_mobile_sdk/rb;

    invoke-virtual {v12, v10, v8}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_194
    .catchall {:try_start_18e .. :try_end_194} :catchall_327

    .line 1498
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_197
    if-eqz v8, :cond_19e

    .line 1499
    const-string v3, "click_signals"

    invoke-virtual {v7, v3, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_19e
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "open_chrome_custom_tab"

    invoke-virtual {v7, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1502
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v3, v8, :cond_1bf

    .line 1505
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "try_fallback_for_deep_link"

    invoke-virtual {v7, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1508
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "in_app_link_handling_for_android_11_enabled"

    invoke-virtual {v7, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1509
    :cond_1bf
    iget-object v3, v9, Lads_mobile_sdk/bv0;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1510
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1d6

    invoke-virtual {v9}, Lads_mobile_sdk/bv0;->j()Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 1511
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "custom_click_gesture_eligible"

    invoke-virtual {v7, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1d6
    if-eqz v11, :cond_1e1

    .line 1514
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "is_custom_click_gesture"

    invoke-virtual {v7, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1517
    :cond_1e1
    const-string v3, "click"

    invoke-virtual {v2, v3, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1520
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v7, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    .line 1521
    iget-object v8, v7, Lads_mobile_sdk/bv0;->p:Lads_mobile_sdk/tx;

    .line 1522
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1524
    const-string v10, "time_from_last_touch_down"

    .line 1525
    iget-wide v11, v7, Lads_mobile_sdk/bv0;->F:J

    sub-long v11, v8, v11

    .line 1526
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1527
    const-string v10, "time_from_last_touch"

    .line 1528
    iget-wide v11, v7, Lads_mobile_sdk/bv0;->G:J

    sub-long/2addr v8, v11

    .line 1529
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1531
    const-string v7, "touch_signal"

    invoke-virtual {v2, v7, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1534
    iget-object v3, v1, Lads_mobile_sdk/qu0;->d:Lads_mobile_sdk/bv0;

    .line 1535
    iget-object v7, v3, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 1536
    sget-object v8, Lads_mobile_sdk/s11;->i0:Lads_mobile_sdk/s11;

    .line 1537
    iget-object v9, v3, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 1538
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 1539
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 1540
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_2a5

    .line 1541
    invoke-static {v7, v8, v10, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v7

    .line 1542
    :try_start_22c
    iget-object v3, v3, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 1543
    const-string v8, "google.afma.nativeAds.handleClick"

    iput-object v7, v1, Lads_mobile_sdk/qu0;->a:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/qu0;->b:Lads_mobile_sdk/rr3;

    iput v5, v1, Lads_mobile_sdk/qu0;->c:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1544
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "toString(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8, v2, v1}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_246
    .catchall {:try_start_22c .. :try_end_246} :catchall_263

    if-ne v2, v0, :cond_24a

    goto/16 :goto_2ca

    :cond_24a
    move-object v3, v7

    .line 1545
    :goto_24b
    :try_start_24b
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1611
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_25a

    .line 1612
    check-cast v2, Lads_mobile_sdk/i01;

    .line 1613
    invoke-static {v2, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    goto :goto_25a

    :catchall_257
    move-exception v0

    move-object v2, v7

    goto :goto_261

    .line 1614
    :cond_25a
    :goto_25a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_25c
    .catchall {:try_start_24b .. :try_end_25c} :catchall_257

    .line 1849
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2e0

    :goto_261
    move-object v7, v3

    goto :goto_265

    :catchall_263
    move-exception v0

    move-object v2, v7

    .line 1857
    :goto_265
    :try_start_265
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1861
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_29e

    .line 1863
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_27b

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_27b

    .line 1869
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_27b

    :catchall_278
    move-exception v0

    move-object v3, v0

    goto :goto_29f

    .line 1875
    :cond_27b
    :goto_27b
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_296

    .line 1876
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_28e

    .line 1877
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_288

    throw v0

    .line 1878
    :cond_288
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1879
    :cond_28e
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1880
    :cond_296
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1881
    :cond_29e
    throw v0
    :try_end_29f
    .catchall {:try_start_265 .. :try_end_29f} :catchall_278

    .line 1882
    :goto_29f
    :try_start_29f
    throw v3
    :try_end_2a0
    .catchall {:try_start_29f .. :try_end_2a0} :catchall_2a0

    :catchall_2a0
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1916
    :cond_2a5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v8, v7, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 1917
    :try_start_2ad
    iget-object v3, v3, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 1918
    const-string v7, "google.afma.nativeAds.handleClick"

    iput-object v5, v1, Lads_mobile_sdk/qu0;->a:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/qu0;->b:Lads_mobile_sdk/rr3;

    const/4 v8, 0x2

    iput v8, v1, Lads_mobile_sdk/qu0;->c:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1919
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "toString(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v7, v2, v1}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2c8
    .catchall {:try_start_2ad .. :try_end_2c8} :catchall_2e5

    if-ne v2, v0, :cond_2cb

    :goto_2ca
    return-object v0

    :cond_2cb
    move-object v3, v5

    .line 1920
    :goto_2cc
    :try_start_2cc
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1986
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_2db

    .line 1987
    check-cast v2, Lads_mobile_sdk/i01;

    .line 1988
    invoke-static {v2, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    goto :goto_2db

    :catchall_2d8
    move-exception v0

    move-object v2, v5

    goto :goto_2e3

    .line 1989
    :cond_2db
    :goto_2db
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2dd
    .catchall {:try_start_2cc .. :try_end_2dd} :catchall_2d8

    .line 2261
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2262
    :goto_2e0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_2e3
    move-object v5, v3

    goto :goto_2e7

    :catchall_2e5
    move-exception v0

    move-object v2, v5

    .line 2535
    :goto_2e7
    :try_start_2e7
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2539
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_320

    .line 2541
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_2fd

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2fd

    .line 2547
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2fd

    :catchall_2fa
    move-exception v0

    move-object v3, v0

    goto :goto_321

    .line 2553
    :cond_2fd
    :goto_2fd
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_318

    .line 2554
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_310

    .line 2555
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_30a

    throw v0

    .line 2556
    :cond_30a
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2557
    :cond_310
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 2558
    :cond_318
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 2559
    :cond_320
    throw v0
    :try_end_321
    .catchall {:try_start_2e7 .. :try_end_321} :catchall_2fa

    .line 2560
    :goto_321
    :try_start_321
    throw v3
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_322

    :catchall_322
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_327
    move-exception v0

    .line 2561
    :try_start_328
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2565
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_361

    .line 2567
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_33e

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_33e

    .line 2573
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_33e

    :catchall_33b
    move-exception v0

    move-object v2, v0

    goto :goto_362

    .line 2579
    :cond_33e
    :goto_33e
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_359

    .line 2580
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_351

    .line 2581
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_34b

    throw v0

    .line 2582
    :cond_34b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2583
    :cond_351
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2584
    :cond_359
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2585
    :cond_361
    throw v0
    :try_end_362
    .catchall {:try_start_328 .. :try_end_362} :catchall_33b

    .line 2586
    :goto_362
    :try_start_362
    throw v2
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_363

    :catchall_363
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_368
    move-exception v0

    .line 2587
    monitor-exit v7

    throw v0
.end method
