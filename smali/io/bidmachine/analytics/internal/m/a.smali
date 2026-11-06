###### Class io.bidmachine.analytics.internal.m.a (io.bidmachine.analytics.internal.m.a)
.class public abstract Lio/bidmachine/analytics/internal/m/a;
.super Lio/bidmachine/analytics/internal/i/a;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/h/b;
.implements Lio/bidmachine/analytics/internal/h/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/m/a$b;,
        Lio/bidmachine/analytics/internal/m/a$a;
    }
.end annotation


# instance fields
.field private final d:Lio/bidmachine/analytics/internal/a/a;

.field private e:Lio/bidmachine/analytics/internal/h/b;

.field private f:Ljava/lang/String;

.field private g:Lio/bidmachine/analytics/internal/m/a$a;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/util/Map;

.field private j:Lio/bidmachine/analytics/internal/m/a$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->d:Lio/bidmachine/analytics/internal/a/a;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->h:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->i:Ljava/util/Map;

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/m/a;->c(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/m/a;->b(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V

    return-void
.end method

.method private final b(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V
    .registers 12

    .line 1
    iget-object v2, p0, Lio/bidmachine/analytics/internal/m/a;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_37

    .line 6
    :cond_5
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/m/a$b;->f()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_15

    goto :goto_37

    .line 11
    :cond_15
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/m/a$b;->g()Lio/bidmachine/analytics/internal/g/g;

    move-result-object v7

    if-nez v7, :cond_1c

    goto :goto_37

    .line 12
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->d:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/a/c;->d()Lio/bidmachine/analytics/internal/H/a;

    move-result-object v8

    .line 13
    new-instance v0, Lio/bidmachine/analytics/internal/g/c;

    .line 14
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/m/a$b;->d()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/m/a$b;->h()J

    move-result-wide v3

    move-object v5, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/analytics/internal/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLio/bidmachine/analytics/internal/g/a;FLio/bidmachine/analytics/internal/g/g;)V

    .line 18
    invoke-interface {v8, v0}, Lio/bidmachine/analytics/internal/H/a;->a(Lio/bidmachine/analytics/internal/g/c;)Ljava/lang/Object;

    :cond_37
    :goto_37
    return-void
.end method

.method private final c(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lio/bidmachine/analytics/internal/m/a;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_7
    iget-object v3, v1, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :catchall_10
    move-exception v0

    goto/16 :goto_bc

    :cond_13
    const/4 v3, 0x0

    :goto_14
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/analytics/internal/m/a$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    .line 4
    iget-object v3, v1, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v4

    :cond_27
    move v7, v4

    const/16 v13, 0xfb

    const/4 v14, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v14}, Lio/bidmachine/analytics/internal/m/a$b;->a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v4

    goto :goto_56

    .line 6
    :cond_3a
    iget-object v3, v1, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v4

    :cond_42
    add-int/lit8 v9, v4, 0x1

    const/16 v15, 0xfb

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v16}, Lio/bidmachine/analytics/internal/m/a$b;->a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v4

    .line 7
    :goto_56
    iput-object v4, v1, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;

    .line 12
    iget-object v3, v1, Lio/bidmachine/analytics/internal/m/a;->i:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/analytics/internal/m/a$b;

    .line 13
    iget-object v4, v1, Lio/bidmachine/analytics/internal/m/a;->i:Ljava/util/Map;

    if-nez v3, :cond_78

    const/16 v15, 0xfb

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p2

    .line 14
    invoke-static/range {v5 .. v16}, Lio/bidmachine/analytics/internal/m/a$b;->a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v3

    goto :goto_b5

    .line 17
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/analytics/internal/m/a$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 18
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v9

    const/16 v15, 0xfb

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v16}, Lio/bidmachine/analytics/internal/m/a$b;->a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v3

    goto :goto_b5

    .line 20
    :cond_9d
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v3

    add-int/lit8 v9, v3, 0x1

    const/16 v15, 0xfb

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v16}, Lio/bidmachine/analytics/internal/m/a$b;->a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v3

    :goto_b5
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ba
    .catchall {:try_start_7 .. :try_end_ba} :catchall_10

    .line 24
    monitor-exit v2

    return-void

    :goto_bc
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/internal/g/a;)Lio/bidmachine/analytics/internal/m/a$b;
    .registers 4

    .line 14
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/m/a$b;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 16
    const-string v0, "iaa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 19
    :cond_a
    iget-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->g:Lio/bidmachine/analytics/internal/m/a$a;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/m/a$a;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_30

    .line 20
    :cond_15
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a;->d:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/c;->d()Lio/bidmachine/analytics/internal/H/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/bidmachine/analytics/internal/H/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v0, p1

    :goto_2b
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    :cond_30
    :goto_30
    return-object v0
.end method

.method public a(Lio/bidmachine/analytics/internal/g/h;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->e:Lio/bidmachine/analytics/internal/h/b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/h/b;->a(Lio/bidmachine/analytics/internal/g/h;)V

    :cond_7
    return-void
.end method

.method public a(Lio/bidmachine/analytics/internal/i/a$b;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/i/a$b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/i/a$b;->a()Lio/bidmachine/analytics/internal/h/b;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->e:Lio/bidmachine/analytics/internal/h/b;

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/i/a$b;->b()Lio/bidmachine/analytics/internal/i/a$a;

    move-result-object p1

    instance-of v0, p1, Lio/bidmachine/analytics/internal/m/a$a;

    if-eqz v0, :cond_17

    check-cast p1, Lio/bidmachine/analytics/internal/m/a$a;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->g:Lio/bidmachine/analytics/internal/m/a$a;

    if-eqz p1, :cond_31

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/m/a$a;->a()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->d:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/c;->d()Lio/bidmachine/analytics/internal/H/a;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/analytics/internal/H/a;->a(J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_31
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->e:Lio/bidmachine/analytics/internal/h/b;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/h/b;->a(Ljava/util/Map;)V

    .line 8
    :cond_a
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/m/a;->c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/g/a;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_17

    .line 9
    :cond_11
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/m/a;->b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object p1

    if-nez p1, :cond_18

    :goto_17
    return-void

    .line 10
    :cond_18
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/m/a;->a(Lio/bidmachine/analytics/internal/g/a;Lio/bidmachine/analytics/internal/m/a$b;)V

    return-void
.end method

.method public final b()Lio/bidmachine/analytics/internal/m/a$b;
    .registers 3

    .line 19
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public abstract b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/m/a$b;
.end method

.method public abstract c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/g/a;
.end method

.method public f(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/m/a;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/analytics/internal/m/a;->j:Lio/bidmachine/analytics/internal/m/a$b;

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 5
    monitor-exit p1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p1

    throw v0
.end method

###### Class io.bidmachine.analytics.internal.m.a.C1127a (io.bidmachine.analytics.internal.m.a$a)
.class public final Lio/bidmachine/analytics/internal/m/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a$a;->a:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lio/bidmachine/analytics/internal/m/a$a;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/m/a$a;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/m/a$a;->b:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.m.a.b (io.bidmachine.analytics.internal.m.a$b)
.class public final Lio/bidmachine/analytics/internal/m/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:Ljava/lang/Float;

.field private final e:Lio/bidmachine/analytics/internal/g/g;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    .line 4
    iput p4, p0, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    .line 5
    iput-object p5, p0, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    .line 6
    iput-object p6, p0, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    .line 7
    iput-object p7, p0, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    .line 9
    iput-boolean p9, p0, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    if-eqz p5, :cond_22

    .line 12
    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/16 p2, 0x3e8

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m/a$b;->i:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_c

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c
    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_12

    move p4, v0

    :cond_12
    and-int/lit8 p11, p10, 0x8

    const/4 v1, 0x0

    if-eqz p11, :cond_18

    move-object p5, v1

    :cond_18
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1d

    move-object p6, v1

    :cond_1d
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_22

    move-object p7, v1

    :cond_22
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_27

    move-object p8, v1

    :cond_27
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_35

    move p11, v0

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p6, p4

    :goto_31
    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    goto :goto_3c

    :cond_35
    move p11, p9

    move-object p10, p8

    move-object p8, p6

    move-object p9, p7

    move p6, p4

    move-object p7, p5

    goto :goto_31

    .line 14
    :goto_3c
    invoke-direct/range {p2 .. p11}, Lio/bidmachine/analytics/internal/m/a$b;-><init>(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/m/a$b;Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/m/a$b;
    .registers 12

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_6

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_c

    iget-wide p2, p0, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    :cond_c
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_12

    iget p4, p0, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    :cond_12
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_18

    iget-object p5, p0, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    :cond_18
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1e

    iget-object p6, p0, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    :cond_1e
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_24

    iget-object p7, p0, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    :cond_24
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_2a

    iget-object p8, p0, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    :cond_2a
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_30

    iget-boolean p9, p0, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    :cond_30
    move-object p10, p8

    move p11, p9

    move-object p8, p6

    move-object p9, p7

    move p6, p4

    move-object p7, p5

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lio/bidmachine/analytics/internal/m/a$b;->a(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;Z)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;Z)Lio/bidmachine/analytics/internal/m/a$b;
    .registers 20

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/m/a$b;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/analytics/internal/m/a$b;-><init>(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    return v0
.end method

.method public final c()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->i:Ljava/lang/Float;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/m/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/m/a$b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    iget-wide v5, p1, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    iget v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget-boolean v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    iget-boolean p1, p1, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    if-eq v1, p1, :cond_56

    return v2

    :cond_56
    return v0
.end method

.method public final f()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final g()Lio/bidmachine/analytics/internal/g/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    return-object v0
.end method

.method public final h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->d:Ljava/lang/Float;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->e:Lio/bidmachine/analytics/internal/g/g;

    if-nez v1, :cond_2e

    move v1, v2

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->f:Ljava/lang/String;

    if-nez v1, :cond_3b

    move v1, v2

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->g:Ljava/lang/String;

    if-nez v1, :cond_47

    goto :goto_4b

    :cond_47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x1

    :cond_53
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/m/a$b;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
