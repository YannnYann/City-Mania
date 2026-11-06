###### Class io.bidmachine.analytics.internal.t.b (io.bidmachine.analytics.internal.t.b)
.class public final Lio/bidmachine/analytics/internal/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/t/b$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/t/e;

.field private final b:Lio/bidmachine/analytics/internal/t/f;

.field private final c:Lkotlinx/coroutines/CoroutineScope;

.field private d:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/t/e;Lio/bidmachine/analytics/internal/t/f;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/b;->a:Lio/bidmachine/analytics/internal/t/e;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/t/b;->b:Lio/bidmachine/analytics/internal/t/f;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/t/b;->c:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/t/b;)Lio/bidmachine/analytics/internal/t/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/t/b;->b:Lio/bidmachine/analytics/internal/t/f;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/t/b;Ljava/lang/String;Lkotlin/sequences/Sequence;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/t/b;->a(Ljava/lang/String;Lkotlin/sequences/Sequence;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lkotlin/sequences/Sequence;)V
    .registers 5

    .line 5
    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    :goto_4
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/t/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b;->a:Lio/bidmachine/analytics/internal/t/e;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/analytics/internal/t/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private final b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b;->d:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 8
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b;->d:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 9
    :cond_9
    iput-object v1, p0, Lio/bidmachine/analytics/internal/t/b;->d:Lkotlinx/coroutines/Job;

    .line 11
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b;->b:Lio/bidmachine/analytics/internal/t/f;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_e
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 26
    iget-object v1, p0, Lio/bidmachine/analytics/internal/t/b;->b:Lio/bidmachine/analytics/internal/t/f;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/t/f;->a()V

    .line 27
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1b

    goto :goto_25

    :catchall_1b
    move-exception v1

    :try_start_1c
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    .line 40
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 11

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b;->d:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_9
    iget-object v3, p0, Lio/bidmachine/analytics/internal/t/b;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lio/bidmachine/analytics/internal/t/b$b;

    invoke-direct {v6, p0, p1, v1}, Lio/bidmachine/analytics/internal/t/b$b;-><init>(Lio/bidmachine/analytics/internal/t/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/b;->d:Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.t.b.a (io.bidmachine.analytics.internal.t.b$a)
.class public interface abstract Lio/bidmachine/analytics/internal/t/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Lio/bidmachine/analytics/internal/t/b;
.end method

###### Class io.bidmachine.analytics.internal.t.b.C1147b (io.bidmachine.analytics.internal.t.b$b)
.class final Lio/bidmachine/analytics/internal/t/b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/t/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/internal/t/b;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/t/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/b$b;->c:Lio/bidmachine/analytics/internal/t/b;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/t/b$b;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/t/b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/t/b$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/t/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/t/b$b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/t/b$b;->c:Lio/bidmachine/analytics/internal/t/b;

    iget-object v2, p0, Lio/bidmachine/analytics/internal/t/b$b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/t/b$b;-><init>(Lio/bidmachine/analytics/internal/t/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/analytics/internal/t/b$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/t/b$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/t/b$b;->a:I

    if-nez v0, :cond_7c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/analytics/internal/t/b$b;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/t/b$b;->c:Lio/bidmachine/analytics/internal/t/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/t/b;->a(Lio/bidmachine/analytics/internal/t/b;)Lio/bidmachine/analytics/internal/t/f;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/b$b;->c:Lio/bidmachine/analytics/internal/t/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/t/b$b;->d:Ljava/lang/String;

    .line 35
    monitor-enter p1

    .line 36
    :try_start_19
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    invoke-static {v0}, Lio/bidmachine/analytics/internal/t/b;->a(Lio/bidmachine/analytics/internal/t/b;)Lio/bidmachine/analytics/internal/t/f;

    move-result-object v2

    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/analytics/internal/t/f;->a(Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    .line 38
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_47

    goto :goto_4a

    :catchall_47
    move-exception v0

    goto :goto_6c

    :cond_49
    move-object v2, v3

    :goto_4a
    if-eqz v2, :cond_61

    .line 71
    :try_start_4c
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 72
    invoke-static {v0, v1, v4}, Lio/bidmachine/analytics/internal/t/b;->a(Lio/bidmachine/analytics/internal/t/b;Ljava/lang/String;Lkotlin/sequences/Sequence;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_59

    .line 104
    :try_start_55
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_47

    goto :goto_61

    :catchall_59
    move-exception v0

    move-object v1, v0

    :try_start_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_61
    :goto_61
    if-eqz v2, :cond_68

    .line 105
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    :cond_68
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_47

    goto :goto_75

    :goto_6c
    :try_start_6c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_79

    .line 136
    :goto_75
    monitor-exit p1

    .line 137
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_79
    move-exception v0

    .line 164
    monitor-exit p1

    throw v0

    .line 165
    :cond_7c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
