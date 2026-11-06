###### Class io.bidmachine.rendering.internal.detector.engagedclick.b (io.bidmachine.rendering.internal.detector.engagedclick.b)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;
    }
.end annotation


# static fields
.field public static final o:Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;

.field public static final p:Ljava/util/List;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

.field public final b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

.field public final c:J

.field public final d:Ljava/util/List;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:D

.field public k:D

.field public l:Lkotlinx/coroutines/Job;

.field public m:Lkotlinx/coroutines/Job;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->o:Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->LIKELY_PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    sget-object v2, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V
    .registers 3

    const-string v0, "engagedClickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/rendering/internal/detector/engagedclick/c;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/rendering/internal/detector/engagedclick/c;)V
    .registers 7

    const-string v0, "engagedClickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visualDiffEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    .line 5
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getInteractionWindowMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_21

    goto :goto_22

    :cond_21
    move-object p2, v1

    :goto_22
    if-eqz p2, :cond_29

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2b

    :cond_29
    const-wide/16 v2, 0x9c4

    .line 8
    :goto_2b
    iput-wide v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c:J

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    const/4 p2, 0x1

    .line 12
    invoke-static {v1, p2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getCreativeProfileInfo()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j:D

    return-wide v0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 3
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;D)V
    .registers 3

    .line 4
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j:D

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c:J

    return-wide v0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/detector/engagedclick/b;D)V
    .registers 3

    .line 2
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->k:D

    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic e(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->f()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;

    iget v3, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;

    invoke-direct {v2, v0, v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 19
    iget v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    const-string v5, "EngagedClick"

    packed-switch v4, :pswitch_data_386

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_31
    iget v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    iget v9, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iget-wide v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->f:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Bitmap;

    iget-object v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v7, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    move-object/from16 v18, v1

    iget-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v14

    move-object v14, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v5

    goto/16 :goto_2e2

    :pswitch_5e
    move-object/from16 v18, v1

    iget v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    iget v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v12, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v13, Landroid/view/View;

    iget-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v14, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v10

    move/from16 v24, v4

    move v4, v1

    move-object/from16 v1, v18

    move-wide/from16 v25, v8

    move/from16 v9, v24

    move-object v8, v11

    move-wide v10, v6

    move-object v6, v12

    move-object v7, v13

    move-wide/from16 v12, v25

    goto/16 :goto_2a8

    :pswitch_91
    move-object/from16 v18, v1

    iget v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    iget v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v12, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v13, Landroid/view/View;

    iget-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v14, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_278

    :pswitch_b4
    move-object/from16 v18, v1

    iget-wide v3, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v2, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v11, v6

    move-object v6, v1

    move-object/from16 v1, v18

    goto/16 :goto_222

    :pswitch_cb
    move-object/from16 v18, v1

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v10, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v11, v8

    move-wide v7, v6

    move-object v6, v4

    move-object v4, v1

    move-object/from16 v1, v18

    goto/16 :goto_201

    :pswitch_e8
    move-object/from16 v18, v1

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    iget-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v11, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1de

    :pswitch_103
    move-object/from16 v18, v1

    iget v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->i:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    iget-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v13, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v13

    move-object v13, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide v7, v6

    move-object v6, v4

    move v4, v1

    move-object/from16 v1, v18

    goto/16 :goto_1af

    :pswitch_127
    move-object/from16 v18, v1

    iget v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iget-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->i:D

    iget-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iget-wide v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iget-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    iget-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    check-cast v13, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_189

    :pswitch_141
    move-object/from16 v18, v1

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-wide v6, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j:D

    .line 24
    iget-wide v8, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->k:D

    .line 25
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->getBaselineMultiplier()D

    move-result-wide v10

    mul-double/2addr v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v10, v12

    if-lez v1, :cond_157

    const/4 v1, 0x1

    goto :goto_158

    :cond_157
    const/4 v1, 0x0

    .line 27
    :goto_158
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v10, 0x64

    invoke-static {v10, v11, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    iput-object v0, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    move-wide/from16 v13, p3

    iput-wide v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->i:D

    iput v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    const/4 v15, 0x1

    iput v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-static {v10, v11, v2}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_181

    goto/16 :goto_2df

    :cond_181
    move-object v10, v12

    move-object v12, v4

    move-object v4, v10

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v10

    move-wide v10, v13

    move-object v13, v0

    .line 28
    :goto_189
    iget-object v14, v13, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-wide v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->i:D

    iput v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    const/4 v15, 0x2

    iput v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-interface {v14, v12, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_1a4

    goto/16 :goto_2df

    :cond_1a4
    move-object/from16 v24, v4

    move v4, v1

    move-object v1, v14

    move-object v14, v13

    move-object v13, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide v7, v6

    move-object/from16 v6, v24

    .line 29
    :goto_1af
    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1b6

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_1b6
    const/4 v15, 0x3

    if-eqz v4, :cond_22a

    .line 34
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v9, 0x32

    invoke-static {v9, v10, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    iput-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    iput-wide v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v7, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1d9

    goto/16 :goto_2df

    :cond_1d9
    move-object v4, v6

    move-wide v6, v7

    move-wide v8, v11

    move-object v10, v13

    move-object v11, v14

    .line 35
    :goto_1de
    iget-object v12, v11, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    iput-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    iput-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    const/4 v13, 0x4

    iput v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-interface {v12, v10, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_1f8

    goto/16 :goto_2df

    :cond_1f8
    move-object/from16 v24, v4

    move-object v4, v1

    move-object v1, v10

    move-object v10, v11

    move-wide v11, v8

    move-wide v7, v6

    move-object/from16 v6, v24

    .line 36
    :goto_201
    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_208

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 37
    :cond_208
    iget-object v9, v10, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    iput-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-wide v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v7, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    const/4 v13, 0x5

    iput v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-interface {v9, v4, v1, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_220

    goto/16 :goto_2df

    :cond_220
    move-wide v3, v7

    move-object v2, v10

    .line 38
    :goto_222
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    goto/16 :goto_32a

    .line 42
    :cond_22a
    new-instance v4, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 43
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v6

    move v4, v15

    move-wide/from16 v26, v9

    move-object v10, v7

    move-wide/from16 v6, v26

    move-wide/from16 v8, v24

    :goto_243
    if-ge v1, v4, :cond_323

    .line 45
    sget-object v15, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v15, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    move/from16 v18, v1

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1, v15}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    iput-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->f:Ljava/lang/Object;

    iput-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    move/from16 v15, v18

    iput v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    move/from16 v18, v4

    const/4 v4, 0x6

    iput v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_275

    goto/16 :goto_2df

    :cond_275
    move v1, v15

    move/from16 v4, v18

    .line 46
    :goto_278
    iget-object v0, v14, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    iput-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v13, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-object v11, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    iput-object v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    iput-wide v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iput v1, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    const/4 v15, 0x7

    iput v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-interface {v0, v13, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_296

    goto :goto_2df

    :cond_296
    move-object v15, v10

    move/from16 v24, v1

    move-object v1, v0

    move/from16 v25, v4

    move/from16 v4, v24

    move-wide/from16 v26, v8

    move/from16 v9, v25

    move-object v8, v11

    move-wide v10, v6

    move-object v6, v12

    move-object v7, v13

    move-wide/from16 v12, v26

    .line 47
    :goto_2a8
    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2b7

    move-object/from16 v19, v3

    :goto_2af
    move-object v0, v6

    move-object v1, v7

    move-wide v6, v10

    move-object v10, v15

    const/16 v17, 0x1

    move-object v11, v8

    goto :goto_316

    .line 48
    :cond_2b7
    iget-object v1, v14, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-object/from16 v18, v5

    iget-object v5, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v14, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->a:Ljava/lang/Object;

    iput-object v7, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->b:Ljava/lang/Object;

    iput-object v6, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->c:Ljava/lang/Object;

    iput-object v8, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->d:Ljava/lang/Object;

    iput-object v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->e:Ljava/lang/Object;

    iput-object v0, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->f:Ljava/lang/Object;

    iput-wide v12, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->g:J

    iput-wide v10, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->h:D

    iput v9, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->j:I

    iput v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->k:I

    move/from16 p1, v4

    const/16 v4, 0x8

    iput v4, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    invoke-interface {v1, v5, v0, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2e0

    :goto_2df
    return-object v3

    :cond_2e0
    move/from16 v4, p1

    .line 49
    :goto_2e2
    check-cast v1, Ljava/lang/Number;

    move-object/from16 p1, v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "postClick phase computed diff="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 p2, v4

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    move-object/from16 v5, v18

    invoke-static {v5, v3, v4}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-wide v3, v8, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    cmpl-double v3, v1, v3

    if-lez v3, :cond_30f

    .line 54
    iput-wide v1, v8, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 56
    :cond_30f
    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v2, p1

    move/from16 v4, p2

    goto :goto_2af

    :goto_316
    add-int/lit8 v3, v4, 0x1

    move v4, v9

    move-wide v8, v12

    move-object v12, v0

    move-object v13, v1

    move v1, v3

    move-object/from16 v3, v19

    move-object/from16 v0, p0

    goto/16 :goto_243

    .line 58
    :cond_323
    iget-wide v0, v11, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-wide v3, v6

    move-object v6, v12

    move-object v2, v14

    move-wide v11, v8

    move-wide v7, v0

    .line 62
    :goto_32a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postClick Phase finished. diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v9}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v6}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->getDiffThreshold()D

    move-result-wide v9

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_382

    invoke-virtual {v6}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->getBaselineMultiplier()D

    move-result-wide v9

    mul-double/2addr v9, v3

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_382

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "EngagedClick reported"

    invoke-static {v5, v1, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x1

    .line 69
    iput-boolean v15, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->n:Z

    .line 71
    new-instance v16, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;

    .line 72
    sget-object v17, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->VISUAL_DIFF:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    .line 73
    iget-object v0, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v18

    .line 74
    iget-object v0, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getProfileSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v19

    .line 75
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v20

    .line 76
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v21

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v22, v0, v11

    .line 78
    invoke-direct/range {v16 .. v23}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;Ljava/lang/Double;Ljava/lang/Double;J)V

    move-object/from16 v0, v16

    .line 79
    invoke-virtual {v2, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V

    .line 90
    :cond_382
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_386
    .packed-switch 0x0
        :pswitch_141
        :pswitch_127
        :pswitch_103
        :pswitch_e8
        :pswitch_cb
        :pswitch_b4
        :pswitch_91
        :pswitch_5e
        :pswitch_31
    .end packed-switch
.end method

.method public final a(Landroid/view/View;J)Lkotlinx/coroutines/Job;
    .registers 11

    .line 18
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;-><init>(JLio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 4

    .line 94
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->m:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 95
    :cond_9
    iput-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->m:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;)V
    .registers 16

    const-string v0, "engagedClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleSemanticReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EngagedClick"

    invoke-static {v2, v0, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    sget-object v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    .line 12
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;JLkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v1

    move-object v11, v3

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V
    .registers 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportEngagedClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EngagedClick"

    invoke-static {v2, v0, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getEngagedClickTrackingObject()Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;->reportEngagedClick(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V

    :cond_24
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External navigation detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EngagedClick"

    invoke-static {v1, p1, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a()V

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b()V

    return-void
.end method

.method public final b()V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_6

    .line 51
    :cond_18
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iput-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->l:Lkotlinx/coroutines/Job;

    .line 4
    iput-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->m:Lkotlinx/coroutines/Job;

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 7
    :cond_17
    iput-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final d()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-object v0
.end method

.method public final e()Landroid/webkit/WebView;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->l:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_10
    iput-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->l:Lkotlinx/coroutines/Job;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j:D

    .line 10
    iput-wide v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->k:D

    const-wide/16 v1, 0x32

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Landroid/view/View;J)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->l:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final g()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a()V

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->COLLAPSE:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;)V

    return-void
.end method

.method public final h()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a()V

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->EXPAND:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;)V

    return-void
.end method

.method public final i()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getVisualConfig()Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_40

    :cond_9
    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Creative clicked"

    const-string v3, "EngagedClick"

    invoke-static {v3, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->p:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_40

    .line 9
    :cond_22
    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->n:Z

    if-eqz v1, :cond_2e

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Visual path already reported in this phase, input ignored"

    invoke-static {v3, v1, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->m:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    goto :goto_40

    .line 17
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_41

    :goto_40
    return-void

    .line 18
    :cond_41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/webkit/WebView;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v0

    move-object v10, v1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v2, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->m:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final j()V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->p:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visualDetect start() PROFILE IS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EngagedClick"

    invoke-static {v2, v0, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->k()V

    return-void
.end method

.method public final k()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getVisualConfig()Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 2
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_1a

    .line 3
    :cond_10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_1a
    return-void

    .line 7
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVisualDetect profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "EngagedClick"

    invoke-static {v3, v1, v2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j:D

    .line 10
    iput-wide v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->k:D

    const-wide/16 v1, 0x12c

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Landroid/view/View;J)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->l:Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.a (io.bidmachine.rendering.internal.detector.engagedclick.b$a)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/rendering/internal/detector/engagedclick/b;
    .registers 4

    const-string v0, "engagedClickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidWebViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.C1186b (io.bidmachine.rendering.internal.detector.engagedclick.b$b)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Landroid/view/View;J)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:J

.field public final synthetic i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

.field public final synthetic j:Landroid/view/View;


# direct methods
.method public constructor <init>(JLio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->h:J

    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->j:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;

    iget-wide v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->h:J

    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->j:Landroid/view/View;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;-><init>(JLio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "EngagedClick"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_82

    if-eq v2, v9, :cond_7a

    if-eq v2, v7, :cond_6f

    if-eq v2, v6, :cond_5a

    if-eq v2, v5, :cond_40

    if-ne v2, v4, :cond_38

    iget v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iget v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iget-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->c:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    iget-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    iget-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    check-cast v13, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v14, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto/16 :goto_143

    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    iget v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iget v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iget-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    iget-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    check-cast v12, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    :cond_55
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    goto/16 :goto_11b

    :cond_5a
    iget v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iget v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iget-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    iget-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    check-cast v12, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_104

    :cond_6f
    iget-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    :cond_78
    move-object v11, v2

    goto :goto_b3

    :cond_7a
    iget-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9f

    :cond_82
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->h:J

    sget-object v13, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v13}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    iput-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    iput v9, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_9f

    goto/16 :goto_142

    .line 3
    :cond_9f
    :goto_9f
    iget-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static {v11}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-result-object v11

    iget-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->j:Landroid/view/View;

    iput-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    iput v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    invoke-interface {v11, v12, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_78

    goto/16 :goto_142

    .line 4
    :goto_b3
    check-cast v7, Landroid/graphics/Bitmap;

    if-nez v7, :cond_ba

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 6
    :cond_ba
    new-array v2, v10, [Ljava/lang/Object;

    const-string v12, "ambient phase base Shot"

    invoke-static {v8, v12, v2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v14, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;

    iget-object v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->j:Landroid/view/View;

    invoke-direct {v14, v2, v12, v7, v3}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 18
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    iget-object v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->i:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->j:Landroid/view/View;

    const/4 v12, 0x6

    move v13, v12

    move-object v12, v7

    move v7, v13

    move-object v13, v2

    move v2, v10

    :goto_e3
    if-ge v2, v7, :cond_197

    .line 20
    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v14, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v9, 0xfa

    invoke-static {v9, v10, v14}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    iput-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    iput-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    iput-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    iput-object v3, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->c:Ljava/lang/Object;

    iput v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iput v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iput v6, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_104

    goto :goto_142

    .line 21
    :cond_104
    :goto_104
    invoke-static {v12}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-result-object v9

    iput-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    iput-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    iput-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    iput v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iput v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iput v5, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    invoke-interface {v9, v11, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_55

    goto :goto_142

    .line 22
    :goto_11b
    move-object v11, v9

    check-cast v11, Landroid/graphics/Bitmap;

    if-nez v11, :cond_126

    const/4 v4, 0x0

    :goto_121
    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    const/4 v15, 0x1

    goto :goto_18f

    .line 23
    :cond_126
    invoke-static {v13}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-result-object v9

    iget-object v10, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    iput-object v14, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->g:Ljava/lang/Object;

    iput-object v13, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->a:Ljava/lang/Object;

    iput-object v12, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->b:Ljava/lang/Object;

    iput-object v11, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->c:Ljava/lang/Object;

    iput v7, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->d:I

    iput v2, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->e:I

    iput v4, v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->f:I

    invoke-interface {v9, v10, v11, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_143

    :goto_142
    return-object v1

    .line 24
    :cond_143
    :goto_143
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ambient phase computed diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v17, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v9, v17

    if-ltz v3, :cond_181

    .line 28
    invoke-static {v13}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v3, v4, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 29
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "ambient phase RESTARTED"

    invoke-static {v8, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v13}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->e(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)V

    .line 32
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 34
    :cond_181
    invoke-static {v13}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)D

    move-result-wide v17

    cmpl-double v3, v9, v17

    if-lez v3, :cond_18c

    .line 35
    invoke-static {v13, v9, v10}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;D)V

    .line 37
    :cond_18c
    iput-object v11, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_121

    :goto_18f
    add-int/2addr v2, v15

    move v10, v4

    move v9, v15

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    goto/16 :goto_e3

    .line 39
    :cond_197
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.C1186b.a (io.bidmachine.rendering.internal.detector.engagedclick.b$b$a)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->c:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->d:Landroid/view/View;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->e:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->c:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->d:Landroid/view/View;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->e:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_29

    if-eq v1, v4, :cond_25

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_68

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v5, 0x32

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput v4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3f

    goto :goto_66

    .line 3
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->c:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->d:Landroid/view/View;

    iput v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->b:I

    invoke-interface {p1, v1, p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_50

    goto :goto_66

    .line 4
    :cond_50
    :goto_50
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_71

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->c:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->e:Landroid/graphics/Bitmap;

    .line 5
    invoke-static {v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)Lio/bidmachine/rendering/internal/detector/engagedclick/c;

    move-result-object v4

    iput-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->a:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$b$a;->b:I

    invoke-interface {v4, v3, p1, p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_67

    :goto_66
    return-object v0

    :cond_67
    move-object v0, v1

    .line 6
    :goto_68
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b(Lio/bidmachine/rendering/internal/detector/engagedclick/b;D)V

    .line 8
    :cond_71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.c (io.bidmachine.rendering.internal.detector.engagedclick.b$c)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:J

.field public h:D

.field public i:D

.field public j:I

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

.field public n:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->m:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->l:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->n:I

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$c;->m:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.d (io.bidmachine.rendering.internal.detector.engagedclick.b$d)
.class public final synthetic Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/b$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 0
    const-string v0, "isCompleted()Z"

    const/4 v1, 0x0

    const-class v2, Lkotlinx/coroutines/Job;

    const-string v3, "isCompleted"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.e (io.bidmachine.rendering.internal.detector.engagedclick.b$e)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

.field public final synthetic c:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;JLkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->c:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    iput-wide p3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->c:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    iget-wide v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->d:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->b(Lio/bidmachine/rendering/internal/detector/engagedclick/b;)J

    move-result-wide v3

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    iput v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->a:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    .line 3
    :cond_31
    :goto_31
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->c:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->d()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getProfileSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v3

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->d:J

    sub-long v6, v4, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;Ljava/lang/Double;Ljava/lang/Double;J)V

    .line 12
    invoke-static {p1, v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endInteractionWindow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$e;->c:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EngagedClick"

    invoke-static {v1, p1, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.b.f (io.bidmachine.rendering.internal.detector.engagedclick.b$f)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/webkit/WebView;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->d:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iput-wide p4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->c:Landroid/webkit/WebView;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->d:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    iget-wide v4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->e:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/webkit/WebView;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    move p1, v2

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->c:Landroid/webkit/WebView;

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->d:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    .line 5
    iget-wide v4, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->e:J

    .line 6
    iput p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/b$f;->a:I

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/b;Landroid/view/View;Lio/bidmachine/rendering/model/engagedclick/VisualConfig;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    .line 11
    :cond_2d
    :goto_2d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
