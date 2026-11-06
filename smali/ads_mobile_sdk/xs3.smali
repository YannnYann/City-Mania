###### Class ads_mobile_sdk.xs3 (ads_mobile_sdk.xs3)
.class public final Lads_mobile_sdk/xs3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lads_mobile_sdk/xs3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/xs3;

    invoke-direct {v0}, Lads_mobile_sdk/xs3;-><init>()V

    sput-object v0, Lads_mobile_sdk/xs3;->a:Lads_mobile_sdk/xs3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .registers 8

    .line 12
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 13
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Lads_mobile_sdk/ws3;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/i01;)V
    .registers 2

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/i01;Z)V
    .registers 7

    .line 15
    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p0, Lads_mobile_sdk/m01;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/m01;

    invoke-virtual {v0}, Lads_mobile_sdk/m01;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f2

    .line 17
    :cond_12
    instance-of v0, p0, Lads_mobile_sdk/j01;

    if-eqz v0, :cond_30

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/j01;

    invoke-virtual {v0}, Lads_mobile_sdk/j01;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Lads_mobile_sdk/j01;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f2

    :cond_2d
    move-object v0, v1

    goto/16 :goto_f2

    .line 18
    :cond_30
    instance-of v0, p0, Lads_mobile_sdk/u01;

    if-eqz v0, :cond_38

    const-string v0, "WebView destroyed when method invoked."

    goto/16 :goto_f2

    .line 19
    :cond_38
    instance-of v0, p0, Lads_mobile_sdk/s01;

    const-string v1, ": "

    if-eqz v0, :cond_69

    .line 20
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/s01;

    invoke-virtual {v0}, Lads_mobile_sdk/s01;->d()I

    move-result v2

    invoke-virtual {v0}, Lads_mobile_sdk/s01;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lads_mobile_sdk/s01;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on url: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f2

    .line 21
    :cond_69
    instance-of v0, p0, Lads_mobile_sdk/l01;

    if-eqz v0, :cond_93

    .line 22
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/l01;

    invoke-virtual {v0}, Lads_mobile_sdk/l01;->c()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lads_mobile_sdk/l01;->c()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 23
    :cond_93
    instance-of v0, p0, Lads_mobile_sdk/k01;

    if-eqz v0, :cond_bc

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/k01;

    invoke-virtual {v0}, Lads_mobile_sdk/k01;->c()I

    move-result v1

    invoke-virtual {v0}, Lads_mobile_sdk/k01;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Message: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 24
    :cond_bc
    instance-of v0, p0, Lads_mobile_sdk/p01;

    if-eqz v0, :cond_c8

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/p01;

    invoke-virtual {v0}, Lads_mobile_sdk/p01;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 25
    :cond_c8
    instance-of v0, p0, Lads_mobile_sdk/n01;

    if-eqz v0, :cond_d4

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/n01;

    invoke-virtual {v0}, Lads_mobile_sdk/n01;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 26
    :cond_d4
    instance-of v0, p0, Lads_mobile_sdk/r01;

    if-eqz v0, :cond_e0

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/r01;

    invoke-virtual {v0}, Lads_mobile_sdk/r01;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 27
    :cond_e0
    instance-of v0, p0, Lads_mobile_sdk/t01;

    if-eqz v0, :cond_e7

    .line 28
    const-string v0, "Live WebView cap reached. Too many WebViews are currently open in the application."

    goto :goto_f2

    .line 29
    :cond_e7
    instance-of v0, p0, Lads_mobile_sdk/o01;

    if-eqz v0, :cond_fb

    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/o01;

    invoke-virtual {v0}, Lads_mobile_sdk/o01;->c()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_f2
    invoke-virtual {p0}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, p1}, Lads_mobile_sdk/xs3;->a(ZLjava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    .line 32
    :cond_fb
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/xs3;Ljava/lang/Exception;)V
    .registers 4

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "exception"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, p1, v1}, Lads_mobile_sdk/xs3;->a(ZLjava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 3

    .line 2
    const-string v0, "t"

    invoke-static {p0, v0, p0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 5
    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lads_mobile_sdk/uj2;->m:Z

    .line 8
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 39
    :cond_5
    const-string p2, "message"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-static {p2, p0, p1, v0}, Lads_mobile_sdk/xs3;->a(ZLjava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 5

    if-eqz p3, :cond_b

    .line 171
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p3

    .line 172
    iget-object p3, p3, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez p3, :cond_f

    goto :goto_2c

    .line 173
    :cond_b
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p3

    :cond_f
    if-eqz p1, :cond_1a

    .line 175
    invoke-virtual {p3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 176
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1a
    invoke-virtual {p3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lads_mobile_sdk/uj2;->m:Z

    if-eqz p2, :cond_2c

    if-eqz p0, :cond_29

    .line 179
    invoke-virtual {p3, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_29
    invoke-virtual {p3, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method
