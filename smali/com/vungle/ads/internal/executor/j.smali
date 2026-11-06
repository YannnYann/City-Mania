###### Class com.vungle.ads.internal.executor.j (com.vungle.ads.internal.executor.j)
.class public final Lcom/vungle/ads/internal/executor/j;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lcom/vungle/ads/internal/executor/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/executor/g;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/executor/g;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object p1, p0

    .line 2
    iput-object p7, p1, Lcom/vungle/ads/internal/executor/j;->a:Lcom/vungle/ads/internal/executor/c;

    const/4 p2, 0x1

    .line 172
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/executor/j;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/vungle/ads/OutOfMemory;

    .line 5
    const-string v1, "execute error in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method

.method public static final b(Lcom/vungle/ads/internal/executor/j;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vungle/ads/OutOfMemory;

    .line 2
    const-string v1, "submit error in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method

.method public static final c(Lcom/vungle/ads/internal/executor/j;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vungle/ads/OutOfMemory;

    .line 2
    const-string v1, "submit error with result in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/j;->a:Lcom/vungle/ads/internal/executor/c;

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/executor/c;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    .line 3
    :cond_a
    :goto_a
    const-string v0, "VungleThreadPoolExecutor"

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    const-string v0, "VungleThreadPool"

    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_c
    invoke-static {p1, p2}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/vungle/ads/internal/executor/h;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_46

    .line 108
    :goto_18
    const-string v1, "execute error with fail in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {p1, v1}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 227
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_50

    .line 228
    :goto_46
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "execute exception with fail"

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_50
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "VungleThreadPool"

    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    new-instance v1, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/executor/j;)V

    invoke-static {p1, v1}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/vungle/ads/internal/executor/h;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_43

    .line 2
    :goto_18
    const-string v1, "execute error in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {p1, v1}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    goto :goto_4a

    .line 108
    :goto_43
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "execute exception"

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    return-void
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 6

    const-string v0, "VungleThreadPool"

    const-string v1, "task"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_8
    new-instance v2, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/executor/j;)V

    invoke-static {p1, v2}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/vungle/ads/internal/executor/h;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 2
    const-string v2, "{\n            super.subm\u2026\n            })\n        }"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    goto :goto_1f

    :catch_1d
    move-exception p1

    goto :goto_4f

    .line 3
    :goto_1f
    const-string v2, "submit error in "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0, v2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {p1, v2}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 138
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_5b

    .line 139
    :goto_4f
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "submit exception"

    invoke-static {v0, v2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    :goto_5b
    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 6

    const-string v0, "VungleThreadPool"

    const-string v1, "task"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 145
    :try_start_8
    new-instance v2, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/executor/j;)V

    invoke-static {p1, v2}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/vungle/ads/internal/executor/h;

    move-result-object p1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 146
    const-string p2, "{\n            super.subm\u2026     }, result)\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    goto :goto_1f

    :catch_1d
    move-exception p1

    goto :goto_4f

    .line 147
    :goto_1f
    const-string p2, "submit error with result in "

    invoke-static {p2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 295
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0, p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {p1, p2}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 298
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_5b

    .line 299
    :goto_4f
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p2, "submit exception with result"

    invoke-static {v0, p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    :goto_5b
    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 6

    const-string v0, "VungleThreadPool"

    const-string v1, "task"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 305
    :try_start_8
    new-instance v2, Lcom/vungle/ads/internal/executor/i;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/executor/i;-><init>(Lcom/vungle/ads/internal/executor/j;)V

    invoke-static {p1, v2}, Lcom/vungle/ads/internal/executor/g;->a(Ljava/util/concurrent/Callable;Lcom/vungle/ads/internal/executor/i;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 306
    const-string v2, "override fun <T> submit(\u2026Future<T>\n        }\n    }"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    goto :goto_1f

    :catch_1d
    move-exception p1

    goto :goto_4f

    .line 307
    :goto_1f
    const-string v2, "submit error callable in "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 487
    invoke-virtual {p0}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v0, v2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    new-instance p1, Lcom/vungle/ads/OutOfMemory;

    invoke-direct {p1, v2}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 490
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_6a

    .line 491
    :goto_4f
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit exception callable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance p1, Lcom/vungle/ads/internal/executor/b;

    invoke-direct {p1, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    :goto_6a
    return-object p1
.end method

###### Class com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda0 (com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/executor/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/executor/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/executor/j;->c(Lcom/vungle/ads/internal/executor/j;)V

    return-void
.end method

###### Class com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda1 (com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/executor/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/executor/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/executor/j;->a(Lcom/vungle/ads/internal/executor/j;)V

    return-void
.end method

###### Class com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda2 (com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/executor/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/j$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/executor/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/executor/j;->b(Lcom/vungle/ads/internal/executor/j;)V

    return-void
.end method
