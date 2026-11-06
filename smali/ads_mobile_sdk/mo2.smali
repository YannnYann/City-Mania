###### Class ads_mobile_sdk.mo2 (ads_mobile_sdk.mo2)
.class public final Lads_mobile_sdk/mo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/i2;

.field public final b:Lads_mobile_sdk/ro2;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/p61;

.field public final f:Lads_mobile_sdk/ur3;

.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lads_mobile_sdk/f0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/i2;Lads_mobile_sdk/ro2;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/p61;Lads_mobile_sdk/ur3;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f0;)V
    .registers 11

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playPrewarmManager"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rootTraceCreator"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hsdpDeepLinkServiceWrapper"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "traceLogger"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "backgroundScope"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityTracker"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    .line 29
    iput-object p3, p0, Lads_mobile_sdk/mo2;->b:Lads_mobile_sdk/ro2;

    .line 30
    iput-object p4, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    .line 31
    iput-object p5, p0, Lads_mobile_sdk/mo2;->d:Lads_mobile_sdk/g83;

    .line 32
    iput-object p6, p0, Lads_mobile_sdk/mo2;->e:Lads_mobile_sdk/p61;

    .line 33
    iput-object p7, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    .line 34
    iput-object p8, p0, Lads_mobile_sdk/mo2;->g:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    iput-object p9, p0, Lads_mobile_sdk/mo2;->h:Lads_mobile_sdk/f0;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v0, p2, Lads_mobile_sdk/jo2;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/jo2;

    iget v1, v0, Lads_mobile_sdk/jo2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/jo2;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/jo2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/jo2;-><init>(Lads_mobile_sdk/mo2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/jo2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 143
    iget v2, v0, Lads_mobile_sdk/jo2;->e:I

    const-string v3, "key"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    if-ne v2, v4, :cond_37

    iget-object p0, v0, Lads_mobile_sdk/jo2;->b:Lads_mobile_sdk/t61;

    iget-object p1, v0, Lads_mobile_sdk/jo2;->a:Lads_mobile_sdk/mo2;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34

    goto/16 :goto_d5

    :catch_34
    move-exception p2

    goto/16 :goto_f9

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    iget-object p2, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object p2, p2, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-nez p2, :cond_4b

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 145
    :cond_4b
    iget-object v2, p2, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    if-eqz p1, :cond_b5

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b5

    .line 149
    invoke-static {}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->builder()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    move-result-object v6

    .line 150
    invoke-virtual {v6, v2}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;->setTargetAppPackageName(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    move-result-object v6

    .line 152
    iget-object v7, p2, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6a

    .line 153
    iget-object v7, p2, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;->setReferrer(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    .line 155
    :cond_6a
    iget-object v7, p2, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_77

    .line 156
    iget-object p2, p2, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    invoke-virtual {v6, p2}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;->setExtraQueryParams(Ljava/util/Map;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    .line 158
    :cond_77
    iget-object p2, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    const-string v7, "gads:hsdp_service_pass_activity_token:enabled"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p2, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 177
    iget-object p2, p0, Lads_mobile_sdk/mo2;->h:Lads_mobile_sdk/f0;

    invoke-virtual {p2}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_aa

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_aa

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_aa

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_ab

    :cond_aa
    move-object p2, v5

    :goto_ab
    if-eqz p2, :cond_b0

    .line 179
    invoke-virtual {v6, p2}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;->setWindowToken(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    .line 183
    :cond_b0
    invoke-virtual {v6}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;->build()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    move-result-object p2

    goto :goto_b6

    :cond_b5
    move-object p2, v5

    :goto_b6
    if-eqz p1, :cond_c1

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c1

    .line 189
    sget-object p1, Lads_mobile_sdk/t61;->c:Lads_mobile_sdk/t61;

    goto :goto_c3

    .line 191
    :cond_c1
    sget-object p1, Lads_mobile_sdk/t61;->b:Lads_mobile_sdk/t61;

    .line 194
    :goto_c3
    :try_start_c3
    iget-object v2, p0, Lads_mobile_sdk/mo2;->e:Lads_mobile_sdk/p61;

    iput-object p0, v0, Lads_mobile_sdk/jo2;->a:Lads_mobile_sdk/mo2;

    iput-object p1, v0, Lads_mobile_sdk/jo2;->b:Lads_mobile_sdk/t61;

    iput v4, v0, Lads_mobile_sdk/jo2;->e:I

    invoke-virtual {v2, p2, v0}, Lads_mobile_sdk/p61;->a(Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;Lads_mobile_sdk/jo2;)Ljava/lang/Object;

    move-result-object p2
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cf} :catch_fd

    if-ne p2, v1, :cond_d2

    return-object v1

    :cond_d2
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 195
    :goto_d5
    :try_start_d5
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p2

    .line 196
    iget-object p2, p2, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz p2, :cond_e2

    .line 197
    invoke-virtual {p2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    goto :goto_e3

    :cond_e2
    move-object p2, v5

    :goto_e3
    if-nez p2, :cond_e7

    goto/16 :goto_169

    .line 198
    :cond_e7
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/u61;

    .line 199
    iput-object v0, p2, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_f7} :catch_34

    goto/16 :goto_169

    :goto_f9
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_fe

    :catch_fd
    move-exception p2

    .line 200
    :goto_fe
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 201
    iget-object v0, v0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v0, :cond_10a

    .line 202
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    :cond_10a
    if-nez v5, :cond_10d

    goto :goto_129

    .line 203
    :cond_10d
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11d

    const-string v0, ""

    :cond_11d
    invoke-virtual {p1, v0}, Lads_mobile_sdk/s61;->a(Ljava/lang/String;)Lads_mobile_sdk/s61;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/u61;

    .line 204
    iput-object p1, v5, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 205
    :goto_129
    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lads_mobile_sdk/uj2;->m:Z

    .line 210
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 211
    iget-object p1, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string v0, "gads:hsdp_unsampled_crash_reporting:enabled"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v0, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_160

    .line 230
    iget-object p0, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast p0, Lads_mobile_sdk/as3;

    const-string p1, "HsdpServiceUnsampled.prewarm"

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_169

    .line 232
    :cond_160
    iget-object p0, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast p0, Lads_mobile_sdk/as3;

    const-string p1, "HsdpService.prewarm"

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :goto_169
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 498
    iget-object p1, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-nez p1, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 499
    :cond_9
    iget-object p1, p1, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lads_mobile_sdk/mo2;->f()Z

    move-result v0

    if-eqz v0, :cond_228

    .line 503
    iget-object v0, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    const-string v1, "gads:hsdp_service_end_session:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_228

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_228

    .line 524
    iget-object v0, p0, Lads_mobile_sdk/mo2;->d:Lads_mobile_sdk/g83;

    sget-object v1, Lads_mobile_sdk/s11;->V1:Lads_mobile_sdk/s11;

    .line 621
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 622
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 623
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 624
    new-instance v6, Lads_mobile_sdk/tn1;

    invoke-direct {v6}, Lads_mobile_sdk/tn1;-><init>()V

    .line 625
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 626
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 627
    invoke-direct {v4, v5, v6, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 628
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 629
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v6, "HsdpService.endSession"

    const-string v7, "HsdpServiceUnsampled.endSession"

    const-string v8, "gads:hsdp_unsampled_crash_reporting:enabled"

    const-string v9, "exception"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v5, :cond_146

    .line 630
    invoke-static {v0, v1, v3, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 631
    :try_start_6c
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v1

    .line 632
    iget-object v1, v1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v1, :cond_7e

    .line 633
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    goto :goto_7f

    :catchall_79
    move-exception p1

    goto/16 :goto_107

    :catch_7c
    move-exception p1

    goto :goto_9a

    :cond_7e
    move-object v1, v12

    :goto_7f
    if-nez v1, :cond_82

    goto :goto_94

    .line 634
    :cond_82
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v3

    .line 635
    sget-object v4, Lads_mobile_sdk/t61;->e:Lads_mobile_sdk/t61;

    invoke-virtual {v3, v4}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 636
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/u61;

    .line 637
    iput-object v3, v1, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 641
    :goto_94
    iget-object v1, p0, Lads_mobile_sdk/mo2;->e:Lads_mobile_sdk/p61;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/p61;->a(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_99} :catch_7c
    .catchall {:try_start_6c .. :try_end_99} :catchall_79

    goto :goto_100

    .line 642
    :goto_9a
    :try_start_9a
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v1

    .line 643
    iget-object v1, v1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v1, :cond_a7

    .line 644
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    goto :goto_a8

    :cond_a7
    move-object v1, v12

    :goto_a8
    if-nez v1, :cond_ab

    goto :goto_c9

    .line 645
    :cond_ab
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v3

    .line 646
    sget-object v4, Lads_mobile_sdk/t61;->e:Lads_mobile_sdk/t61;

    invoke-virtual {v3, v4}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 647
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_bc

    goto :goto_bd

    :cond_bc
    move-object v10, v4

    .line 648
    :goto_bd
    invoke-virtual {v3, v10}, Lads_mobile_sdk/s61;->a(Ljava/lang/String;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/u61;

    .line 650
    iput-object v3, v1, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 651
    :goto_c9
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 655
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v11, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 656
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 657
    iget-object v1, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v8, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 676
    iget-object v1, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v7, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_100

    .line 678
    :cond_f9
    iget-object v1, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v6, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    :goto_100
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_102
    .catchall {:try_start_9a .. :try_end_102} :catchall_79

    .line 767
    invoke-static {v0, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_228

    .line 775
    :goto_107
    :try_start_107
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 779
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_13f

    .line 781
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_11c

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11c

    .line 787
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_11c

    :catchall_11a
    move-exception p1

    goto :goto_140

    .line 793
    :cond_11c
    :goto_11c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_137

    .line 794
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12f

    .line 795
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_129

    throw p1

    .line 796
    :cond_129
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 797
    :cond_12f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 798
    :cond_137
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 799
    :cond_13f
    throw p1
    :try_end_140
    .catchall {:try_start_107 .. :try_end_140} :catchall_11a

    .line 800
    :goto_140
    :try_start_140
    throw p1
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_141

    :catchall_141
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 834
    :cond_146
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 835
    :try_start_14f
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v1

    .line 836
    iget-object v1, v1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v1, :cond_161

    .line 837
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    goto :goto_162

    :catchall_15c
    move-exception p1

    goto/16 :goto_1e9

    :catch_15f
    move-exception p1

    goto :goto_17d

    :cond_161
    move-object v1, v12

    :goto_162
    if-nez v1, :cond_165

    goto :goto_177

    .line 838
    :cond_165
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v3

    .line 839
    sget-object v4, Lads_mobile_sdk/t61;->e:Lads_mobile_sdk/t61;

    invoke-virtual {v3, v4}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 840
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/u61;

    .line 841
    iput-object v3, v1, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 845
    :goto_177
    iget-object v1, p0, Lads_mobile_sdk/mo2;->e:Lads_mobile_sdk/p61;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/p61;->a(Ljava/lang/String;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_17c} :catch_15f
    .catchall {:try_start_14f .. :try_end_17c} :catchall_15c

    goto :goto_1e3

    .line 846
    :goto_17d
    :try_start_17d
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v1

    .line 847
    iget-object v1, v1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v1, :cond_18a

    .line 848
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    goto :goto_18b

    :cond_18a
    move-object v1, v12

    :goto_18b
    if-nez v1, :cond_18e

    goto :goto_1ac

    .line 849
    :cond_18e
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v3

    .line 850
    sget-object v4, Lads_mobile_sdk/t61;->e:Lads_mobile_sdk/t61;

    invoke-virtual {v3, v4}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 851
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19f

    goto :goto_1a0

    :cond_19f
    move-object v10, v4

    .line 852
    :goto_1a0
    invoke-virtual {v3, v10}, Lads_mobile_sdk/s61;->a(Ljava/lang/String;)Lads_mobile_sdk/s61;

    move-result-object v3

    .line 853
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/u61;

    .line 854
    iput-object v3, v1, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 855
    :goto_1ac
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 859
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v11, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 860
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 861
    iget-object v1, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v8, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 880
    iget-object v1, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v7, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e3

    .line 882
    :cond_1dc
    iget-object v1, p0, Lads_mobile_sdk/mo2;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v6, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    :goto_1e3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e5
    .catchall {:try_start_17d .. :try_end_1e5} :catchall_15c

    .line 1008
    invoke-static {v0, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_228

    .line 1016
    :goto_1e9
    :try_start_1e9
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1020
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_221

    .line 1022
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1fe

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1fe

    .line 1028
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1fe

    :catchall_1fc
    move-exception p1

    goto :goto_222

    .line 1034
    :cond_1fe
    :goto_1fe
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_219

    .line 1035
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_211

    .line 1036
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_20b

    throw p1

    .line 1037
    :cond_20b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1038
    :cond_211
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1039
    :cond_219
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1040
    :cond_221
    throw p1
    :try_end_222
    .catchall {:try_start_1e9 .. :try_end_222} :catchall_1fc

    .line 1041
    :goto_222
    :try_start_222
    throw p1
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_223

    :catchall_223
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 1042
    :cond_228
    :goto_228
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(I)Z
    .registers 4

    .line 410
    iget-object v0, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v0, v0, Lads_mobile_sdk/uo2;->f:I

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    and-int/2addr p1, v0

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v1
.end method

.method public final f()Z
    .registers 5

    .line 170
    iget-object v0, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    const-string v1, "key"

    const-string v2, "gads:hsdp_service:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 189
    iget-object v0, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-eqz v0, :cond_28

    iget-boolean v0, v0, Lads_mobile_sdk/uo2;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    return v1

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 39
    iget-object p1, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-nez p1, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 41
    :cond_9
    invoke-virtual {p0}, Lads_mobile_sdk/mo2;->f()Z

    move-result v0

    const-string v1, "block"

    const-string v2, "context"

    const-string v3, "<this>"

    const/4 v4, 0x0

    if-eqz v0, :cond_45

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result p1

    if-nez p1, :cond_20

    .line 43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_20
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result p1

    .line 46
    iget-object v5, p0, Lads_mobile_sdk/mo2;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/lo2;

    invoke-direct {v0, p0, p1, v4}, Lads_mobile_sdk/lo2;-><init>(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)V

    .line 47
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 48
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v0, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 307
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 310
    :cond_45
    iget-object v0, p0, Lads_mobile_sdk/mo2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    const-string v5, "key"

    const-string v6, "gads:play_prewarm:enabled"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_64

    .line 329
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 332
    :cond_64
    iget-boolean v0, p1, Lads_mobile_sdk/uo2;->a:Z

    if-eqz v0, :cond_90

    .line 333
    iget-object v0, p0, Lads_mobile_sdk/mo2;->b:Lads_mobile_sdk/ro2;

    iget-object p1, p1, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    .line 334
    iget-object v5, v0, Lads_mobile_sdk/ro2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 335
    new-instance v6, Lads_mobile_sdk/qo2;

    invoke-direct {v6, v0, p1, v4}, Lads_mobile_sdk/qo2;-><init>(Lads_mobile_sdk/ro2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object p1, v6

    .line 336
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 337
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 596
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 597
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1

    .line 599
    :cond_90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 62
    iget-object p1, p0, Lads_mobile_sdk/mo2;->a:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-nez p1, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 64
    :cond_9
    invoke-virtual {p0}, Lads_mobile_sdk/mo2;->f()Z

    move-result v0

    const-string v1, "block"

    const-string v2, "context"

    const-string v3, "<this>"

    const/4 v4, 0x0

    if-eqz v0, :cond_49

    const/4 p1, 0x4

    .line 65
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result p1

    if-nez p1, :cond_20

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_20
    const/16 p1, 0x8

    .line 68
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result p1

    .line 69
    sget-object v0, Lads_mobile_sdk/s11;->V1:Lads_mobile_sdk/s11;

    .line 70
    iget-object v5, p0, Lads_mobile_sdk/mo2;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/ko2;

    invoke-direct {v6, p0, v0, p1, v4}, Lads_mobile_sdk/ko2;-><init>(Lads_mobile_sdk/mo2;Lads_mobile_sdk/s11;ZLkotlin/coroutines/Continuation;)V

    move-object p1, v6

    .line 71
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 72
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 331
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_49
    const/16 v0, 0x100

    .line 334
    invoke-virtual {p0, v0}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_84

    const/16 v0, 0x200

    .line 336
    invoke-virtual {p0, v0}, Lads_mobile_sdk/mo2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 337
    iget-object p1, p1, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    goto :goto_5e

    .line 339
    :cond_5c
    const-string p1, ""

    .line 341
    :goto_5e
    iget-object v0, p0, Lads_mobile_sdk/mo2;->b:Lads_mobile_sdk/ro2;

    .line 342
    iget-object v5, v0, Lads_mobile_sdk/ro2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 343
    new-instance v6, Lads_mobile_sdk/qo2;

    invoke-direct {v6, v0, p1, v4}, Lads_mobile_sdk/qo2;-><init>(Lads_mobile_sdk/ro2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object p1, v6

    .line 344
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 345
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 604
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 605
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1

    .line 607
    :cond_84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
