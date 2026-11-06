###### Class j$.time.chrono.AbstractC4272a (j$.time.chrono.a)
.class public abstract Lj$/time/chrono/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/l;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 253
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;
    .registers 4

    .line 158
    sget-object v0, Lj$/time/chrono/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/l;

    if-nez p1, :cond_15

    .line 160
    invoke-interface {p0}, Lj$/time/chrono/l;->R()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 162
    sget-object v1, Lj$/time/chrono/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object p1
.end method

.method static J(Lj$/time/chrono/b;JJJ)Lj$/time/chrono/b;
    .registers 11

    .line 634
    sget-object v0, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    invoke-interface {p0, p1, p2, v0}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p0

    sget-object p1, Lj$/time/temporal/b;->WEEKS:Lj$/time/temporal/b;

    invoke-interface {p0, p3, p4, p1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p0

    const-wide/16 p2, 0x7

    cmp-long p4, p5, p2

    const-wide/16 v0, 0x1

    if-lez p4, :cond_1e

    sub-long/2addr p5, v0

    .line 636
    div-long v2, p5, p2

    invoke-interface {p0, v2, v3, p1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p0

    .line 637
    rem-long/2addr p5, p2

    :goto_1c
    add-long/2addr p5, v0

    goto :goto_30

    :cond_1e
    cmp-long p4, p5, v0

    if-gez p4, :cond_30

    .line 639
    invoke-static {p5, p6, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    div-long/2addr v2, p2

    invoke-interface {p0, v2, v3, p1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p0

    const-wide/16 v2, 0x6

    add-long/2addr p5, v2

    .line 640
    rem-long/2addr p5, p2

    goto :goto_1c

    :cond_30
    :goto_30
    long-to-int p1, p5

    .line 642
    invoke-static {p1}, Lj$/time/e;->r(I)Lj$/time/e;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lj$/time/e;->p()I

    move-result p1

    .line 414
    new-instance p2, Lj$/time/temporal/p;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lj$/time/temporal/p;-><init>(II)V

    .line 642
    invoke-interface {p0, p2}, Lj$/time/chrono/b;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p0

    return-object p0
.end method

.method static p(Ljava/util/Map;Lj$/time/temporal/a;J)V
    .registers 7

    .line 658
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3b

    .line 659
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_11

    goto :goto_3b

    .line 660
    :cond_11
    new-instance p0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflict found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 660
    throw p0

    .line 662
    :cond_3b
    :goto_3b
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static r(Ljava/lang/String;)Lj$/time/chrono/l;
    .registers 5

    .line 277
    const-string v0, "id"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    :goto_5
    sget-object v0, Lj$/time/chrono/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/l;

    if-nez v1, :cond_17

    .line 308
    sget-object v1, Lj$/time/chrono/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/l;

    :cond_17
    if-eqz v1, :cond_1a

    return-object v1

    .line 184
    :cond_1a
    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_84

    .line 188
    sget-object v0, Lj$/time/chrono/o;->m:Lj$/time/chrono/o;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    .line 189
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    .line 190
    sget-object v0, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    .line 191
    sget-object v0, Lj$/time/chrono/G;->d:Lj$/time/chrono/G;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    const/4 v0, 0x0

    .line 196
    :try_start_47
    new-array v0, v0, [Lj$/time/chrono/a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_79

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/a;

    .line 197
    invoke-interface {v2}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 145
    invoke-interface {v2}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    goto :goto_51

    .line 207
    :cond_6f
    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    .line 145
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/a;->C(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/l;

    goto :goto_5

    :catchall_79
    move-exception p0

    .line 196
    new-instance v0, Ljava/util/ServiceConfigurationError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 289
    :cond_84
    const-class v0, Lj$/time/chrono/l;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/l;

    .line 291
    invoke-interface {v1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-interface {v1}, Lj$/time/chrono/l;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_ae
    return-object v1

    .line 295
    :cond_af
    new-instance v0, Lj$/time/c;

    const-string v1, "Unknown chronology: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 295
    throw v0
.end method


# virtual methods
.method public P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 439
    sget-object v3, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 440
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/time/chrono/l;->q(J)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 444
    :cond_1d
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->S(Ljava/util/Map;Lj$/time/format/x;)V

    .line 447
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->W(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object v3

    if-eqz v3, :cond_27

    return-object v3

    .line 453
    :cond_27
    sget-object v3, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_345

    .line 454
    sget-object v4, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    if-eqz v5, :cond_1c1

    .line 455
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 456
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->T(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 458
    :cond_47
    sget-object v5, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c1

    .line 459
    sget-object v9, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "Strict mode rejected resolved date as it is in a different month"

    if-eqz v10, :cond_108

    .line 566
    invoke-interface {v0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v3

    .line 567
    sget-object v10, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v2, v10, :cond_b0

    .line 568
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    .line 569
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 570
    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 571
    invoke-interface {v0, v3, v8, v8}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object v3

    sget-object v6, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    invoke-interface {v3, v10, v11, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v3

    sget-object v6, Lj$/time/temporal/b;->WEEKS:Lj$/time/temporal/b;

    invoke-interface {v3, v4, v5, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v3, v1, v2, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 573
    :cond_b0
    invoke-interface {v0, v4}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v6

    .line 574
    invoke-interface {v0, v5}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v7

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13, v5}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v5

    .line 575
    invoke-interface {v0, v9}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v7

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13, v9}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 576
    invoke-interface {v0, v3, v6, v8}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object v3

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v1, v8

    add-int/2addr v1, v5

    int-to-long v7, v1

    sget-object v1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v3, v7, v8, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    .line 577
    sget-object v3, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-ne v2, v3, :cond_107

    invoke-interface {v1, v4}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v2

    if-ne v2, v6, :cond_101

    goto :goto_107

    .line 578
    :cond_101
    new-instance v1, Lj$/time/c;

    .line 88
    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 578
    throw v1

    :cond_107
    :goto_107
    return-object v1

    .line 462
    :cond_108
    sget-object v9, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c1

    .line 584
    invoke-interface {v0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v3

    .line 585
    sget-object v10, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v2, v10, :cond_159

    .line 586
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v13

    .line 587
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v15

    .line 588
    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v17

    .line 589
    invoke-interface {v0, v3, v8, v8}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object v12

    invoke-static/range {v12 .. v18}, Lj$/time/chrono/a;->J(Lj$/time/chrono/b;JJJ)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 591
    :cond_159
    invoke-interface {v0, v4}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v6

    .line 592
    invoke-interface {v0, v5}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v7

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13, v5}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v5

    .line 593
    invoke-interface {v0, v9}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v7

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13, v9}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 594
    invoke-interface {v0, v3, v6, v8}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object v3

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0x7

    int-to-long v7, v5

    sget-object v5, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v3, v7, v8, v5}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v3

    invoke-static {v1}, Lj$/time/e;->r(I)Lj$/time/e;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Lj$/time/e;->p()I

    move-result v1

    .line 414
    new-instance v5, Lj$/time/temporal/p;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7}, Lj$/time/temporal/p;-><init>(II)V

    .line 594
    invoke-interface {v3, v5}, Lj$/time/chrono/b;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object v1

    .line 595
    sget-object v3, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-ne v2, v3, :cond_1c0

    invoke-interface {v1, v4}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v2

    if-ne v2, v6, :cond_1ba

    goto :goto_1c0

    .line 596
    :cond_1ba
    new-instance v1, Lj$/time/c;

    .line 88
    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 596
    throw v1

    :cond_1c0
    :goto_1c0
    return-object v1

    .line 467
    :cond_1c1
    sget-object v4, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 556
    invoke-interface {v0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v3

    .line 557
    sget-object v5, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v2, v5, :cond_1f8

    .line 558
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 559
    invoke-interface {v0, v3, v8}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v3, v1, v2, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 561
    :cond_1f8
    invoke-interface {v0, v4}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 562
    invoke-interface {v0, v3, v1}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 470
    :cond_20f
    sget-object v4, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_345

    .line 471
    sget-object v5, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Strict mode rejected resolved date as it is in a different year"

    if-eqz v9, :cond_2aa

    .line 602
    invoke-interface {v0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v9

    .line 603
    sget-object v11, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v2, v11, :cond_264

    .line 604
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 605
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 606
    invoke-interface {v0, v9, v8}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v1

    sget-object v6, Lj$/time/temporal/b;->WEEKS:Lj$/time/temporal/b;

    invoke-interface {v1, v2, v3, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v1, v4, v5, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 608
    :cond_264
    invoke-interface {v0, v4}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v4

    .line 609
    invoke-interface {v0, v5}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v5}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 610
    invoke-interface {v0, v9, v8}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v5

    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v8

    add-int/2addr v1, v4

    int-to-long v6, v1

    sget-object v1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v5, v6, v7, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    .line 611
    sget-object v4, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-ne v2, v4, :cond_2a9

    invoke-interface {v1, v3}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v2

    if-ne v2, v9, :cond_2a3

    goto :goto_2a9

    .line 612
    :cond_2a3
    new-instance v1, Lj$/time/c;

    .line 88
    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 612
    throw v1

    :cond_2a9
    :goto_2a9
    return-object v1

    .line 474
    :cond_2aa
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_345

    .line 618
    invoke-interface {v0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v9

    .line 619
    sget-object v11, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v2, v11, :cond_2ef

    .line 620
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v13

    .line 621
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v15

    .line 622
    invoke-interface {v0, v9, v8}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-static/range {v10 .. v16}, Lj$/time/chrono/a;->J(Lj$/time/chrono/b;JJJ)Lj$/time/chrono/b;

    move-result-object v1

    return-object v1

    .line 624
    :cond_2ef
    invoke-interface {v0, v4}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v4

    .line 625
    invoke-interface {v0, v5}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v5}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 626
    invoke-interface {v0, v9, v8}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object v5

    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x7

    int-to-long v6, v4

    sget-object v4, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v5, v6, v7, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v4

    invoke-static {v1}, Lj$/time/e;->r(I)Lj$/time/e;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Lj$/time/e;->p()I

    move-result v1

    .line 414
    new-instance v5, Lj$/time/temporal/p;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lj$/time/temporal/p;-><init>(II)V

    .line 626
    invoke-interface {v4, v5}, Lj$/time/chrono/b;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object v1

    .line 627
    sget-object v4, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-ne v2, v4, :cond_344

    invoke-interface {v1, v3}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v2

    if-ne v2, v9, :cond_33e

    goto :goto_344

    .line 628
    :cond_33e
    new-instance v1, Lj$/time/c;

    .line 88
    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 628
    throw v1

    :cond_344
    :goto_344
    return-object v1

    :cond_345
    const/4 v1, 0x0

    return-object v1
.end method

.method S(Ljava/util/Map;Lj$/time/format/x;)V
    .registers 8

    .line 483
    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_3d

    .line 485
    sget-object v2, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq p2, v2, :cond_15

    .line 486
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lj$/time/temporal/a;->a0(J)V

    .line 490
    :cond_15
    invoke-interface {p0}, Lj$/time/chrono/l;->L()Lj$/time/chrono/b;

    move-result-object p2

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    const-wide/16 v3, 0x1

    .line 491
    invoke-interface {p2, v3, v4, v2}, Lj$/time/chrono/b;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v1, v2, v0}, Lj$/time/chrono/b;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p2

    .line 492
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p2, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v0, v1, v2}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 493
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p2, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p2

    int-to-long v1, p2

    invoke-static {p1, v0, v1, v2}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    :cond_3d
    return-void
.end method

.method T(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 10

    .line 536
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v0

    .line 537
    sget-object v1, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4c

    .line 538
    sget-object p2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 539
    sget-object p2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide p1

    .line 540
    invoke-interface {p0, v0, v2, v2}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    invoke-interface {v0, v3, v4, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v0, p1, p2, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 542
    :cond_4c
    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v1}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 543
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p0, v3}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v4

    .line 544
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    .line 545
    sget-object v3, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    if-ne p2, v3, :cond_8c

    .line 547
    :try_start_78
    invoke-interface {p0, v0, v1, p1}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object p1
    :try_end_7c
    .catch Lj$/time/c; {:try_start_78 .. :try_end_7c} :catch_7d

    return-object p1

    .line 549
    :catch_7d
    invoke-interface {p0, v0, v1, v2}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object p1

    .line 189
    new-instance p2, Lj$/time/temporal/q;

    const/4 v0, 0x0

    .line 0
    invoke-direct {p2, v0}, Lj$/time/temporal/q;-><init>(I)V

    .line 549
    invoke-interface {p1, p2}, Lj$/time/chrono/b;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 552
    :cond_8c
    invoke-interface {p0, v0, v1, p1}, Lj$/time/chrono/l;->G(III)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method W(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 10

    .line 498
    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_9f

    .line 500
    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 502
    sget-object v4, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq p2, v4, :cond_23

    .line 503
    invoke-interface {p0, v0}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v4

    goto :goto_2b

    .line 505
    :cond_23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    :goto_2b
    if-eqz v3, :cond_48

    .line 508
    invoke-interface {p0, v2}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p2

    invoke-interface {p0, p2}, Lj$/time/chrono/l;->N(I)Lj$/time/chrono/m;

    move-result-object p2

    .line 509
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, p2, v4}, Lj$/time/chrono/l;->w(Lj$/time/chrono/m;I)I

    move-result p2

    int-to-long v1, p2

    invoke-static {p1, v0, v1, v2}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    goto :goto_b8

    .line 511
    :cond_48
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_74

    .line 512
    invoke-interface {p0, v2}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p2

    .line 513
    invoke-interface {p0, p2, v5}, Lj$/time/chrono/l;->A(II)Lj$/time/chrono/b;

    move-result-object p2

    .line 514
    invoke-interface {p2}, Lj$/time/chrono/b;->u()Lj$/time/chrono/m;

    move-result-object p2

    invoke-interface {p0, p2, v4}, Lj$/time/chrono/l;->w(Lj$/time/chrono/m;I)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    goto :goto_b8

    .line 515
    :cond_74
    sget-object v3, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-ne p2, v3, :cond_7c

    .line 518
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    .line 520
    :cond_7c
    invoke-interface {p0}, Lj$/time/chrono/l;->D()Ljava/util/List;

    move-result-object p2

    .line 521
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    int-to-long v0, v4

    .line 522
    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    goto :goto_b8

    .line 524
    :cond_8b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/chrono/m;

    .line 525
    invoke-interface {p0, p2, v4}, Lj$/time/chrono/l;->w(Lj$/time/chrono/m;I)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->p(Ljava/util/Map;Lj$/time/temporal/a;J)V

    goto :goto_b8

    .line 529
    :cond_9f
    sget-object p2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 530
    invoke-interface {p0, p2}, Lj$/time/chrono/l;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lj$/time/temporal/x;->b(JLj$/time/temporal/s;)V

    :cond_b8
    :goto_b8
    const/4 p1, 0x0

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 125
    check-cast p1, Lj$/time/chrono/l;

    .line 682
    invoke-interface {p0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_3

    goto :goto_17

    .line 702
    :cond_3
    instance-of v0, p1, Lj$/time/chrono/a;

    if-eqz v0, :cond_19

    .line 703
    check-cast p1, Lj$/time/chrono/a;

    .line 682
    invoke-interface {p0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_19

    :goto_17
    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 732
    invoke-interface {p0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
