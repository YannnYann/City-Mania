###### Class ads_mobile_sdk.vn (ads_mobile_sdk.vn)
.class public final Lads_mobile_sdk/vn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ox0;


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public final g:Ljava/util/SortedMap;

.field public h:Ljava/lang/Long;

.field public final i:Ljava/lang/Object;

.field public j:I

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/lang/Object;

.field public n:Z

.field public o:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;)V
    .registers 4

    .line 2
    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lads_mobile_sdk/vn;->a:Lads_mobile_sdk/tx;

    iput-object p1, p0, Lads_mobile_sdk/vn;->b:Lads_mobile_sdk/ex0;

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vn;->c:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lads_mobile_sdk/vn;->d:I

    .line 44
    iput p1, p0, Lads_mobile_sdk/vn;->f:I

    const/4 p1, 0x0

    .line 46
    new-array p1, p1, [Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->sortedMapOf([Lkotlin/Pair;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vn;->g:Ljava/util/SortedMap;

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vn;->i:Ljava/lang/Object;

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vn;->k:Ljava/util/LinkedHashMap;

    .line 59
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vn;->l:Ljava/util/LinkedHashMap;

    .line 61
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vn;->m:Ljava/lang/Object;

    .line 65
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/vn;->o:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Set;)Lads_mobile_sdk/w91;
    .registers 16

    .line 1
    const-string v0, "requestTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lads_mobile_sdk/vn;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_8
    iget v0, p0, Lads_mobile_sdk/vn;->j:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lads_mobile_sdk/vn;->j:I

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 7
    new-instance p1, Lads_mobile_sdk/w91;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v3, v3}, Lads_mobile_sdk/w91;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object p1

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto/16 :goto_a3

    .line 9
    :cond_24
    :try_start_24
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v2, p0, Lads_mobile_sdk/vn;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_47

    :cond_46
    move v2, v4

    .line 11
    :goto_47
    iget-object v5, p0, Lads_mobile_sdk/vn;->k:Ljava/util/LinkedHashMap;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_63

    .line 15
    new-instance p1, Lads_mobile_sdk/w91;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0, v3}, Lads_mobile_sdk/w91;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_20

    monitor-exit v1

    return-object p1

    .line 17
    :cond_63
    :try_start_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lads_mobile_sdk/vn;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_85

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 19
    :cond_85
    iget-object p2, p0, Lads_mobile_sdk/vn;->l:Ljava/util/LinkedHashMap;

    add-int/lit8 v3, v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p1, Lads_mobile_sdk/w91;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 25
    invoke-direct {p1, p2, v0, v2}, Lads_mobile_sdk/w91;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_a1
    .catchall {:try_start_63 .. :try_end_a1} :catchall_20

    monitor-exit v1

    return-object p1

    :goto_a3
    monitor-exit v1

    throw p1
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 116
    iget-object p3, p0, Lads_mobile_sdk/vn;->m:Ljava/lang/Object;

    monitor-enter p3

    .line 117
    :try_start_3
    iget-boolean v0, p0, Lads_mobile_sdk/vn;->n:Z

    if-nez v0, :cond_d

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p3

    return-object p1

    :catchall_b
    move-exception p1

    goto :goto_7e

    .line 118
    :cond_d
    :try_start_d
    iget-wide v0, p0, Lads_mobile_sdk/vn;->o:J

    invoke-static {p1, p2, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_19

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_b

    monitor-exit p3

    return-object p1

    :cond_19
    const/4 v0, 0x0

    .line 120
    :try_start_1a
    iput-boolean v0, p0, Lads_mobile_sdk/vn;->n:Z

    .line 122
    iget-object v1, p0, Lads_mobile_sdk/vn;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    const-string v2, "gads:reset_session_counters_on_app_foreground:enabled"

    .line 124
    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 141
    iget-wide v1, p0, Lads_mobile_sdk/vn;->o:J

    invoke-static {p1, p2, v1, v2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lads_mobile_sdk/vn;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    const-string v4, "gads:app_activity_tracker:app_session_timeout_ms"

    sget-object v5, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    const/4 v6, 0x5

    invoke-static {v6, v5}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    const-string v7, "key"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {v5, v6}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v3, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 144
    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-lez v1, :cond_68

    const/4 v0, 0x1

    .line 148
    :cond_68
    iput-wide p1, p0, Lads_mobile_sdk/vn;->o:J

    .line 149
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6c
    .catchall {:try_start_1a .. :try_end_6c} :catchall_b

    .line 150
    monitor-exit p3

    if-eqz v0, :cond_7d

    .line 165
    iget-object p2, p0, Lads_mobile_sdk/vn;->c:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x0

    .line 166
    :try_start_73
    iput-object p3, p0, Lads_mobile_sdk/vn;->h:Ljava/lang/Long;

    const/4 p3, -0x1

    .line 167
    iput p3, p0, Lads_mobile_sdk/vn;->f:I
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_7a

    .line 168
    monitor-exit p2

    return-object p1

    :catchall_7a
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_7d
    return-object p1

    .line 169
    :goto_7e
    monitor-exit p3

    throw p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 105
    iget-object p3, p0, Lads_mobile_sdk/vn;->m:Ljava/lang/Object;

    monitor-enter p3

    .line 106
    :try_start_3
    iget-boolean v0, p0, Lads_mobile_sdk/vn;->n:Z

    if-eqz v0, :cond_d

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p3

    return-object p1

    :catchall_b
    move-exception p1

    goto :goto_22

    .line 107
    :cond_d
    :try_start_d
    iget-wide v0, p0, Lads_mobile_sdk/vn;->o:J

    invoke-static {p1, p2, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_19

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_b

    monitor-exit p3

    return-object p1

    :cond_19
    const/4 v0, 0x1

    .line 109
    :try_start_1a
    iput-boolean v0, p0, Lads_mobile_sdk/vn;->n:Z

    .line 110
    iput-wide p1, p0, Lads_mobile_sdk/vn;->o:J

    .line 111
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_b

    .line 112
    monitor-exit p3

    return-object p1

    .line 113
    :goto_22
    monitor-exit p3

    throw p1
.end method
