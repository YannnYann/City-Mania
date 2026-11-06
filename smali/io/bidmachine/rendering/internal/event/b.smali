###### Class io.bidmachine.rendering.internal.event.b (io.bidmachine.rendering.internal.event.b)
.class public final Lio/bidmachine/rendering/internal/event/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/event/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/event/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/bidmachine/rendering/internal/groups/b;

.field public final c:Lio/bidmachine/rendering/internal/event/c;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lio/bidmachine/rendering/internal/j;

.field public final f:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$NcMvQ6Jva5wbgHxh_OGBDcFJFA4(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/event/b;->b(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMDwIcSE6mMn2LQj2vCTV4QSluM(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/event/b;->c(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQo5zPTCu7JQNYNYeRKnvSOz3z4(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3OLjsUpWvC8xrL1bHzlK87rcCI(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaJpJQC4c6k68f6vVQAxpmEOqB0(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/event/b;->d(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/groups/b;Lio/bidmachine/rendering/internal/event/c;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;Ljava/util/Map;)V
    .registers 8

    const-string v0, "sourceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGroupController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallbackProcessor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b;->b:Lio/bidmachine/rendering/internal/groups/b;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b;->c:Lio/bidmachine/rendering/internal/event/c;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/internal/event/b;->e:Lio/bidmachine/rendering/internal/j;

    .line 7
    iput-object p6, p0, Lio/bidmachine/rendering/internal/event/b;->f:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/event/b;)Lio/bidmachine/rendering/internal/j;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/b;->e:Lio/bidmachine/rendering/internal/j;

    return-object p0
.end method

.method public static final a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventTaskBucketParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b;->b:Lio/bidmachine/rendering/internal/groups/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getStateGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/groups/b;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 314
    new-instance v0, Lio/bidmachine/rendering/internal/event/b$c;

    invoke-direct {v0, p4}, Lio/bidmachine/rendering/internal/event/b$c;-><init>(Lio/bidmachine/rendering/internal/n$a;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 322
    :cond_29
    invoke-interface {p4}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventTaskParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/b;->c:Lio/bidmachine/rendering/internal/event/c;

    new-instance v0, Lio/bidmachine/rendering/internal/event/b$h;

    invoke-direct {v0, p4}, Lio/bidmachine/rendering/internal/event/b$h;-><init>(Lio/bidmachine/rendering/internal/n$a;)V

    invoke-interface {p0, p1, p2, p3, v0}, Lio/bidmachine/rendering/internal/event/c;->a(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 24
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/event/b;Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/event/b;)Lkotlinx/coroutines/CoroutineScope;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/b;->d:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final b(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_process"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getBeforeEventTaskParamsList()Ljava/util/List;

    move-result-object v2

    .line 8
    sget-object v3, Lio/bidmachine/rendering/model/ExecutionMode;->Parallel:Lio/bidmachine/rendering/model/ExecutionMode;

    .line 9
    new-instance v6, Lio/bidmachine/rendering/internal/event/b$e;

    invoke-direct {v6, p4}, Lio/bidmachine/rendering/internal/event/b$e;-><init>(Lio/bidmachine/rendering/internal/n$a;)V

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/event/b;)Lio/bidmachine/rendering/internal/event/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/b;->c:Lio/bidmachine/rendering/internal/event/c;

    return-object p0
.end method

.method public static final c(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_process"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getEventTaskParamsList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getExecutionMode()Lio/bidmachine/rendering/model/ExecutionMode;

    move-result-object v3

    .line 5
    new-instance v6, Lio/bidmachine/rendering/internal/event/b$f;

    invoke-direct {v6, p4}, Lio/bidmachine/rendering/internal/event/b$f;-><init>(Lio/bidmachine/rendering/internal/n$a;)V

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/event/b;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/b;->f:Ljava/util/Map;

    return-object p0
.end method

.method public static final d(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_process"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventTaskBucketParams;->getAfterEventTaskParamsList()Ljava/util/List;

    move-result-object v2

    .line 4
    sget-object v3, Lio/bidmachine/rendering/model/ExecutionMode;->Parallel:Lio/bidmachine/rendering/model/ExecutionMode;

    .line 5
    new-instance v6, Lio/bidmachine/rendering/internal/event/b$g;

    invoke-direct {v6, p4}, Lio/bidmachine/rendering/internal/event/b$g;-><init>(Lio/bidmachine/rendering/internal/n$a;)V

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 15
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILio/bidmachine/rendering/model/ClickData;)V
    .registers 5

    .line 3
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public a(JJ)V
    .registers 7

    .line 16
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 9

    .line 323
    sget-object v0, Lio/bidmachine/rendering/model/ExecutionMode;->Sequence:Lio/bidmachine/rendering/model/ExecutionMode;

    .line 324
    new-instance v1, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    new-instance v2, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    new-instance v3, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lio/bidmachine/rendering/internal/n;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    const/4 p2, 0x2

    aput-object v3, p1, p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 325
    invoke-virtual {p0, v0, p1, p4}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V
    .registers 13

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b;->e:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v3, Lio/bidmachine/rendering/internal/event/b$i;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/event/b$i;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 12

    .line 327
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b;->e:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v2, Lio/bidmachine/rendering/internal/event/b$b;

    const/4 v7, 0x0

    move-object v6, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/rendering/internal/event/b$b;-><init>(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lkotlin/jvm/functions/Function0;Lio/bidmachine/rendering/internal/event/b;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 7
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClickResolved:Lio/bidmachine/rendering/model/EventType;

    .line 9
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 4

    .line 11
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    .line 13
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    .line 22
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 8

    .line 26
    sget-object v0, Lio/bidmachine/rendering/model/ExecutionMode;->Sequence:Lio/bidmachine/rendering/model/ExecutionMode;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    check-cast v2, Lio/bidmachine/rendering/model/EventTaskBucketParams;

    .line 170
    new-instance v3, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2, p3}, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    .line 311
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 312
    :cond_26
    sget-object p1, Lio/bidmachine/rendering/internal/event/b$d;->a:Lio/bidmachine/rendering/internal/event/b$d;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 9

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 330
    check-cast v1, Lio/bidmachine/rendering/model/EventTaskParams;

    .line 331
    new-instance v2, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p3, v1, p4}, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;)V

    .line 408
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 409
    :cond_24
    invoke-virtual {p0, p2, v0, p5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public b()V
    .registers 7

    .line 6
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 4

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .registers 7

    .line 2
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 7

    .line 2
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public e()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public f()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnExpand:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public i()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public j()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnCollapse:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public k()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public l()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public m()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public n()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public o()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public onClose()V
    .registers 7

    .line 1
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b.a (io.bidmachine.rendering.internal.event.b$a)
.class public final Lio/bidmachine/rendering/internal/event/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/event/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/EventType;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final synthetic d:Lio/bidmachine/rendering/internal/event/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseEventTaskBucketParamsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$a;->d:Lio/bidmachine/rendering/internal/event/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$a;->a:Lio/bidmachine/rendering/model/EventType;

    .line 3
    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$a;->b:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$a;->d:Lio/bidmachine/rendering/internal/event/b;

    if-nez p1, :cond_6

    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$a;->b:Ljava/util/List;

    .line 2
    :cond_6
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$a;->a:Lio/bidmachine/rendering/model/EventType;

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$a;->c:Ljava/util/List;

    .line 4
    invoke-static {v0, p1, v1, v2}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/event/b$a;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.event.b.C1189b (io.bidmachine.rendering.internal.event.b$b)
.class public final Lio/bidmachine/rendering/internal/event/b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/event/b$b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lio/bidmachine/rendering/model/ExecutionMode;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lio/bidmachine/rendering/internal/event/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lkotlin/jvm/functions/Function0;Lio/bidmachine/rendering/internal/event/b;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b;->d:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$b;->e:Lio/bidmachine/rendering/model/ExecutionMode;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$b;->f:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$b;->g:Lio/bidmachine/rendering/internal/event/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/event/b$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/event/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/event/b$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->d:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$b;->e:Lio/bidmachine/rendering/model/ExecutionMode;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$b;->f:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/event/b$b;->g:Lio/bidmachine/rendering/internal/event/b;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b$b;-><init>(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lkotlin/jvm/functions/Function0;Lio/bidmachine/rendering/internal/event/b;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/event/b$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_7e

    goto/16 :goto_97

    .line 2
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :try_start_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_a5

    goto/16 :goto_a3

    .line 3
    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->d:Ljava/util/List;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/event/b$b;->g:Lio/bidmachine/rendering/internal/event/b;

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 56
    check-cast v6, Lio/bidmachine/rendering/internal/n;

    .line 57
    invoke-static {v4}, Lio/bidmachine/rendering/internal/event/b;->b(Lio/bidmachine/rendering/internal/event/b;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 58
    invoke-static {v4}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;)Lio/bidmachine/rendering/internal/j;

    move-result-object v8

    invoke-virtual {v8}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v8

    .line 59
    sget-object v9, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 60
    new-instance v10, Lio/bidmachine/rendering/internal/event/b$b$b;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11}, Lio/bidmachine/rendering/internal/event/b$b$b;-><init>(Lio/bidmachine/rendering/internal/n;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8, v9, v10}, Lkotlinx/coroutines/BuildersKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    .line 111
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 112
    :cond_6a
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->e:Lio/bidmachine/rendering/model/ExecutionMode;

    sget-object v4, Lio/bidmachine/rendering/internal/event/b$b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_9a

    if-eq v1, v2, :cond_79

    goto :goto_a5

    .line 156
    :cond_79
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, p1

    :catchall_7e
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 157
    :try_start_8a
    iput-object v3, p0, Lio/bidmachine/rendering/internal/event/b$b;->c:Ljava/lang/Object;

    iput-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b;->a:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/event/b$b;->b:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_97

    goto :goto_a2

    .line 158
    :cond_97
    :goto_97
    check-cast p1, Lkotlin/Unit;
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_7e

    goto :goto_7e

    .line 159
    :cond_9a
    :try_start_9a
    iput v3, p0, Lio/bidmachine/rendering/internal/event/b$b;->b:I

    invoke-static {v5, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a3

    :goto_a2
    return-object v0

    .line 160
    :cond_a3
    :goto_a3
    check-cast p1, Ljava/util/List;
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_a5

    .line 172
    :catchall_a5
    :cond_a5
    :goto_a5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 173
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.event.b.C1189b.a (io.bidmachine.rendering.internal.event.b$b$a)
.class public abstract synthetic Lio/bidmachine/rendering/internal/event/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/event/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/ExecutionMode;->values()[Lio/bidmachine/rendering/model/ExecutionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/ExecutionMode;->Parallel:Lio/bidmachine/rendering/model/ExecutionMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/ExecutionMode;->Sequence:Lio/bidmachine/rendering/model/ExecutionMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/rendering/internal/event/b$b$a;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b.C1189b.C1190b (io.bidmachine.rendering.internal.event.b$b$b)
.class public final Lio/bidmachine/rendering/internal/event/b$b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lio/bidmachine/rendering/internal/n;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->d:Lio/bidmachine/rendering/internal/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/event/b$b$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/event/b$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/event/b$b$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->d:Lio/bidmachine/rendering/internal/n;

    invoke-direct {v0, v1, p2}, Lio/bidmachine/rendering/internal/event/b$b$b;-><init>(Lio/bidmachine/rendering/internal/n;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/event/b$b$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$b$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/rendering/internal/event/b$b$b;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->c:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/rendering/internal/n;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_55

    goto :goto_52

    .line 2
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->d:Lio/bidmachine/rendering/internal/n;

    .line 50
    :try_start_28
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->c:Ljava/lang/Object;

    iput-object p0, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->a:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/event/b$b$b;->b:I

    .line 51
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 57
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 58
    new-instance v2, Lio/bidmachine/rendering/internal/event/b$b$b$a;

    invoke-direct {v2, v1}, Lio/bidmachine/rendering/internal/event/b$b$b$a;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p1, v2}, Lio/bidmachine/rendering/internal/n;->a(Lio/bidmachine/rendering/internal/n$a;)V

    .line 112
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 113
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4f

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4f
    if-ne p1, v0, :cond_52

    return-object v0

    .line 123
    :cond_52
    :goto_52
    check-cast p1, Lkotlin/Unit;
    :try_end_54
    .catchall {:try_start_28 .. :try_end_54} :catchall_55

    return-object p1

    :catchall_55
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.event.b.C1189b.C1190b.a (io.bidmachine.rendering.internal.event.b$b$b$a)
.class public final Lio/bidmachine/rendering/internal/event/b$b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$b$b$a;->a:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$b$b$a;->a:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b.c (io.bidmachine.rendering.internal.event.b$c)
.class public final Lio/bidmachine/rendering/internal/event/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/n$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$c;->a:Lio/bidmachine/rendering/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$c;->a:Lio/bidmachine/rendering/internal/n$a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.d (io.bidmachine.rendering.internal.event.b$d)
.class public final Lio/bidmachine/rendering/internal/event/b$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/event/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/event/b$d;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/event/b$d;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/event/b$d;->a:Lio/bidmachine/rendering/internal/event/b$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.e (io.bidmachine.rendering.internal.event.b$e)
.class public final Lio/bidmachine/rendering/internal/event/b$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/n$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$e;->a:Lio/bidmachine/rendering/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$e;->a:Lio/bidmachine/rendering/internal/n$a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$e;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.f (io.bidmachine.rendering.internal.event.b$f)
.class public final Lio/bidmachine/rendering/internal/event/b$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/n$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$f;->a:Lio/bidmachine/rendering/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$f;->a:Lio/bidmachine/rendering/internal/n$a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.g (io.bidmachine.rendering.internal.event.b$g)
.class public final Lio/bidmachine/rendering/internal/event/b$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/n$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$g;->a:Lio/bidmachine/rendering/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$g;->a:Lio/bidmachine/rendering/internal/n$a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$g;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.h (io.bidmachine.rendering.internal.event.b$h)
.class public final Lio/bidmachine/rendering/internal/event/b$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Ljava/util/List;Lio/bidmachine/rendering/model/ExecutionMode;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/n$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$h;->a:Lio/bidmachine/rendering/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$h;->a:Lio/bidmachine/rendering/internal/n$a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/n$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/event/b$h;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.event.b.i (io.bidmachine.rendering.internal.event.b$i)
.class public final Lio/bidmachine/rendering/internal/event/b$i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic c:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$i;->d:Ljava/lang/Object;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$i;->e:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/event/b$i;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/event/b$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/event/b$i;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$i;->d:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/event/b$i;->e:Ljava/util/List;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/b$i;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/b$i;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/event/b$i;->a:I

    if-nez v0, :cond_5c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/event/b;->d(Lio/bidmachine/rendering/internal/event/b;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/EventParams;

    if-nez p1, :cond_1d

    goto :goto_59

    .line 3
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getEventTaskBucketParamsList()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getRequestPermissionUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 5
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_4d

    .line 6
    :cond_2e
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/event/b;->c(Lio/bidmachine/rendering/internal/event/b;)Lio/bidmachine/rendering/internal/event/c;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    .line 9
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->d:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5}, Lio/bidmachine/util/UtilsKt;->toStringOrDefault$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v5, Lio/bidmachine/rendering/internal/event/b$a;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    .line 12
    iget-object v6, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    .line 14
    iget-object v7, p0, Lio/bidmachine/rendering/internal/event/b$i;->e:Ljava/util/List;

    .line 15
    invoke-direct {v5, p1, v6, v4, v7}, Lio/bidmachine/rendering/internal/event/b$a;-><init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Ljava/util/List;)V

    .line 16
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/rendering/internal/event/c;->a(Ljava/lang/String;Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_56

    .line 28
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/b$i;->b:Lio/bidmachine/rendering/internal/event/b;

    .line 29
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$i;->c:Lio/bidmachine/rendering/model/EventType;

    .line 30
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$i;->e:Ljava/util/List;

    .line 31
    invoke-static {p1, v4, v0, v1}, Lio/bidmachine/rendering/internal/event/b;->a(Lio/bidmachine/rendering/internal/event/b;Ljava/util/List;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V

    .line 36
    :goto_56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 37
    :cond_59
    :goto_59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 38
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/n;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/rendering/model/EventType;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/rendering/model/EventType;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/event/b;->$r8$lambda$Y3OLjsUpWvC8xrL1bHzlK87rcCI(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/n;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/rendering/model/EventType;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/rendering/model/EventType;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/event/b;->$r8$lambda$NcMvQ6Jva5wbgHxh_OGBDcFJFA4(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda2 (io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/n;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/rendering/model/EventType;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/rendering/model/EventType;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/event/b;->$r8$lambda$QMDwIcSE6mMn2LQj2vCTV4QSluM(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda3 (io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/n;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/rendering/model/EventType;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/rendering/model/EventTaskBucketParams;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/rendering/model/EventType;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/event/b;->$r8$lambda$ZaJpJQC4c6k68f6vVQAxpmEOqB0(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventTaskBucketParams;Lio/bidmachine/rendering/model/EventType;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda4 (io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/n;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/event/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/EventType;

.field public final synthetic f$2:Lio/bidmachine/rendering/model/EventTaskParams;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/rendering/model/EventType;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/rendering/model/EventTaskParams;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/n$a;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/rendering/internal/event/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/rendering/model/EventType;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/rendering/model/EventTaskParams;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/event/b$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/event/b;->$r8$lambda$QQo5zPTCu7JQNYNYeRKnvSOz3z4(Lio/bidmachine/rendering/internal/event/b;Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskParams;Ljava/util/List;Lio/bidmachine/rendering/internal/n$a;)V

    return-void
.end method
