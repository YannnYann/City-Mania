###### Class j$.time.format.w (j$.time.format.w)
.class final Lj$/time/format/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# instance fields
.field final a:Ljava/util/HashMap;

.field b:Lj$/time/x;

.field c:Lj$/time/chrono/l;

.field d:Z

.field private e:Lj$/time/format/x;

.field private f:Lj$/time/chrono/b;

.field private g:Lj$/time/k;

.field h:Lj$/time/r;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    .line 157
    sget-object v0, Lj$/time/r;->d:Lj$/time/r;

    iput-object v0, p0, Lj$/time/format/w;->h:Lj$/time/r;

    return-void
.end method

.method private A(Lj$/time/chrono/b;)V
    .registers 6

    .line 364
    iget-object v0, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_52

    .line 365
    invoke-interface {v0, p1}, Lj$/time/chrono/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_52

    .line 366
    :cond_d
    new-instance v0, Lj$/time/c;

    iget-object v1, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: Fields resolved to two different dates: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    throw v0

    :cond_2b
    if-eqz p1, :cond_52

    .line 369
    iget-object v0, p0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    invoke-interface {p1}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 372
    iput-object p1, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    return-void

    .line 370
    :cond_3c
    new-instance p1, Lj$/time/c;

    iget-object v0, p0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 370
    throw p1

    :cond_52
    :goto_52
    return-void
.end method

.method private C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V
    .registers 9

    .line 327
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_49

    .line 328
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    goto :goto_49

    .line 329
    :cond_17
    new-instance v1, Lj$/time/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " while resolving  "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 329
    throw v1

    :cond_49
    :goto_49
    return-void
.end method

.method private q(Lj$/time/temporal/n;)V
    .registers 10

    .line 645
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 647
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/s;

    .line 648
    invoke-interface {p1, v2}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 651
    :try_start_22
    invoke-interface {p1, v2}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v3
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_a

    .line 655
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_38

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 657
    :cond_38
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Conflict found: Field "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " differs from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " derived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 657
    throw v0

    :cond_6a
    return-void
.end method

.method private s()V
    .registers 3

    .line 338
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 339
    iget-object v1, p0, Lj$/time/format/w;->b:Lj$/time/x;

    if-eqz v1, :cond_12

    .line 340
    invoke-direct {p0, v1}, Lj$/time/format/w;->t(Lj$/time/x;)V

    return-void

    .line 342
    :cond_12
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 344
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 345
    invoke-direct {p0, v0}, Lj$/time/format/w;->t(Lj$/time/x;)V

    :cond_27
    return-void
.end method

.method private t(Lj$/time/x;)V
    .registers 6

    .line 352
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/Instant;->T(J)Lj$/time/Instant;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    invoke-interface {v2, v0, p1}, Lj$/time/chrono/l;->y(Lj$/time/Instant;Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->o()Lj$/time/chrono/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/w;->A(Lj$/time/chrono/b;)V

    .line 355
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/k;->l0()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    return-void
.end method

.method private w(JJJJ)V
    .registers 11

    .line 546
    iget-object v0, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v1, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v0, v1, :cond_45

    const-wide v0, 0x34630b8a000L

    .line 547
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p1

    const-wide v0, 0xdf8475800L

    .line 548
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p1

    const-wide/32 p3, 0x3b9aca00

    .line 549
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p1

    .line 550
    invoke-static {p1, p2, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p1

    const-wide p3, 0x4e94914f0000L

    .line 551
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide p5

    long-to-int p5, p5

    .line 552
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p1

    .line 553
    invoke-static {p1, p2}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object p1

    invoke-static {p5}, Lj$/time/r;->b(I)Lj$/time/r;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lj$/time/format/w;->y(Lj$/time/k;Lj$/time/r;)V

    return-void

    .line 555
    :cond_45
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, p3, p4}, Lj$/time/temporal/a;->Z(J)I

    move-result p3

    .line 556
    sget-object p4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {p4, p7, p8}, Lj$/time/temporal/a;->Z(J)I

    move-result p4

    .line 558
    iget-object p7, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object p8, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    if-ne p7, p8, :cond_72

    const-wide/16 p7, 0x18

    cmp-long p7, p1, p7

    if-nez p7, :cond_72

    if-nez p3, :cond_72

    const-wide/16 p7, 0x0

    cmp-long p7, p5, p7

    if-nez p7, :cond_72

    if-nez p4, :cond_72

    .line 559
    sget-object p1, Lj$/time/k;->g:Lj$/time/k;

    const/4 p2, 0x1

    invoke-static {p2}, Lj$/time/r;->b(I)Lj$/time/r;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lj$/time/format/w;->y(Lj$/time/k;Lj$/time/r;)V

    return-void

    .line 561
    :cond_72
    sget-object p7, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p7, p1, p2}, Lj$/time/temporal/a;->Z(J)I

    move-result p1

    .line 562
    sget-object p2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {p2, p5, p6}, Lj$/time/temporal/a;->Z(J)I

    move-result p2

    .line 563
    invoke-static {p1, p3, p2, p4}, Lj$/time/k;->b0(IIII)Lj$/time/k;

    move-result-object p1

    sget-object p2, Lj$/time/r;->d:Lj$/time/r;

    invoke-direct {p0, p1, p2}, Lj$/time/format/w;->y(Lj$/time/k;Lj$/time/r;)V

    return-void
.end method

.method private x()V
    .registers 15

    .line 379
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_37

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 382
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v7, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-eq v2, v7, :cond_24

    sget-object v7, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    if-ne v2, v7, :cond_27

    cmp-long v2, v5, v3

    if-eqz v2, :cond_27

    .line 383
    :cond_24
    invoke-virtual {v1, v5, v6}, Lj$/time/temporal/a;->a0(J)V

    .line 385
    :cond_27
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide/16 v7, 0x18

    cmp-long v7, v5, v7

    if-nez v7, :cond_30

    move-wide v5, v3

    :cond_30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 387
    :cond_37
    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0xc

    if-eqz v2, :cond_6b

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 390
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v9, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-eq v2, v9, :cond_59

    sget-object v9, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    if-ne v2, v9, :cond_5c

    cmp-long v2, v7, v3

    if-eqz v2, :cond_5c

    .line 391
    :cond_59
    invoke-virtual {v1, v7, v8}, Lj$/time/temporal/a;->a0(J)V

    .line 393
    :cond_5c
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    cmp-long v9, v7, v5

    if-nez v9, :cond_63

    goto :goto_64

    :cond_63
    move-wide v3, v7

    :goto_64
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 395
    :cond_6b
    sget-object v1, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 397
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 398
    iget-object v9, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v10, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne v9, v10, :cond_aa

    .line 399
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const/16 v5, 0xc

    int-to-long v5, v5

    .line 0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v3

    .line 399
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    goto :goto_bb

    .line 401
    :cond_aa
    invoke-virtual {v1, v3, v4}, Lj$/time/temporal/a;->a0(J)V

    .line 402
    invoke-virtual {v2, v3, v4}, Lj$/time/temporal/a;->a0(J)V

    .line 403
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    mul-long/2addr v3, v5

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 406
    :cond_bb
    :goto_bb
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x3c

    if-eqz v2, :cond_112

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 408
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v7, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v2, v7, :cond_d8

    .line 409
    invoke-virtual {v1, v5, v6}, Lj$/time/temporal/a;->a0(J)V

    .line 411
    :cond_d8
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide v7, 0x34630b8a000L

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v1, v2, v7}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 412
    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    const-wide v7, 0xdf8475800L

    div-long v7, v5, v7

    rem-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v1, v2, v7}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 413
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    const-wide/32 v7, 0x3b9aca00

    div-long v9, v5, v7

    rem-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v1, v2, v9}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 414
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 416
    :cond_112
    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v5, 0xf4240

    if-eqz v2, :cond_145

    .line 417
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 418
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v9, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v2, v9, :cond_130

    .line 419
    invoke-virtual {v1, v7, v8}, Lj$/time/temporal/a;->a0(J)V

    .line 421
    :cond_130
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    div-long v9, v7, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v1, v2, v9}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 422
    sget-object v2, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v1, v2, v7}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 424
    :cond_145
    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v7, 0x3e8

    if-eqz v2, :cond_177

    .line 425
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 426
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v11, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v2, v11, :cond_162

    .line 427
    invoke-virtual {v1, v9, v10}, Lj$/time/temporal/a;->a0(J)V

    .line 429
    :cond_162
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    div-long v11, v9, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {p0, v1, v2, v11}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 430
    sget-object v2, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v1, v2, v9}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 432
    :cond_177
    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 433
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 434
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v11, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v2, v11, :cond_192

    .line 435
    invoke-virtual {v1, v9, v10}, Lj$/time/temporal/a;->a0(J)V

    .line 437
    :cond_192
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide/16 v11, 0xe10

    div-long v11, v9, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {p0, v1, v2, v11}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 438
    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    div-long v11, v9, v3

    rem-long/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {p0, v1, v2, v11}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 439
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    rem-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v1, v2, v9}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 441
    :cond_1b5
    sget-object v1, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 442
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 443
    iget-object v2, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v11, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v2, v11, :cond_1d0

    .line 444
    invoke-virtual {v1, v9, v10}, Lj$/time/temporal/a;->a0(J)V

    .line 446
    :cond_1d0
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    div-long v11, v9, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {p0, v1, v2, v11}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 447
    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    rem-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 451
    :cond_1e5
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 452
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 453
    iget-object v4, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v9, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v4, v9, :cond_200

    .line 454
    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->a0(J)V

    .line 456
    :cond_200
    sget-object v4, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_223

    .line 457
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 458
    iget-object v12, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    if-eq v12, v9, :cond_219

    .line 459
    invoke-virtual {v4, v10, v11}, Lj$/time/temporal/a;->a0(J)V

    :cond_219
    mul-long/2addr v10, v7

    .line 461
    rem-long/2addr v2, v7

    add-long/2addr v2, v10

    .line 462
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, v1, v7}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 464
    :cond_223
    sget-object v4, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_246

    .line 465
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 466
    iget-object v10, p0, Lj$/time/format/w;->e:Lj$/time/format/x;

    if-eq v10, v9, :cond_23c

    .line 467
    invoke-virtual {v4, v7, v8}, Lj$/time/temporal/a;->a0(J)V

    :cond_23c
    mul-long/2addr v7, v5

    .line 469
    rem-long/2addr v2, v5

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 474
    :cond_246
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_290

    sget-object v3, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_290

    sget-object v4, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 475
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_290

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_290

    .line 476
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 477
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 478
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v5, p0

    .line 480
    invoke-direct/range {v5 .. v13}, Lj$/time/format/w;->w(JJJJ)V

    :cond_290
    return-void
.end method

.method private y(Lj$/time/k;Lj$/time/r;)V
    .registers 7

    .line 614
    iget-object v0, p0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v0, :cond_5c

    .line 615
    invoke-virtual {v0, p1}, Lj$/time/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_40

    .line 618
    iget-object p1, p0, Lj$/time/format/w;->h:Lj$/time/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    sget-object v0, Lj$/time/r;->d:Lj$/time/r;

    if-ne p1, v0, :cond_16

    goto :goto_21

    :cond_16
    if-ne p2, v0, :cond_19

    goto :goto_21

    .line 618
    :cond_19
    iget-object p1, p0, Lj$/time/format/w;->h:Lj$/time/r;

    invoke-virtual {p1, p2}, Lj$/time/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 621
    :goto_21
    iput-object p2, p0, Lj$/time/format/w;->h:Lj$/time/r;

    return-void

    .line 619
    :cond_24
    new-instance p1, Lj$/time/c;

    iget-object v0, p0, Lj$/time/format/w;->h:Lj$/time/r;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: Fields resolved to different excess periods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 619
    throw p1

    .line 616
    :cond_40
    new-instance p2, Lj$/time/c;

    iget-object v0, p0, Lj$/time/format/w;->g:Lj$/time/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: Fields resolved to different times: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 616
    throw p2

    .line 624
    :cond_5c
    iput-object p1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    .line 625
    iput-object p2, p0, Lj$/time/format/w;->h:Lj$/time/r;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 4

    .line 211
    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 212
    iget-object p1, p0, Lj$/time/format/w;->b:Lj$/time/x;

    return-object p1

    .line 213
    :cond_9
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 214
    iget-object p1, p0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    return-object p1

    .line 215
    :cond_12
    invoke-static {}, Lj$/time/temporal/t;->b()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_21

    .line 216
    iget-object p1, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz p1, :cond_62

    invoke-static {p1}, Lj$/time/h;->J(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    return-object p1

    .line 217
    :cond_21
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    .line 218
    iget-object p1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    return-object p1

    .line 219
    :cond_2a
    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_51

    .line 220
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_45

    .line 222
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 224
    :cond_45
    iget-object v0, p0, Lj$/time/format/w;->b:Lj$/time/x;

    instance-of v1, v0, Lj$/time/ZoneOffset;

    if-eqz v1, :cond_4c

    return-object v0

    .line 227
    :cond_4c
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 228
    :cond_51
    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_5c

    .line 229
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 230
    :cond_5c
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_64

    :cond_62
    const/4 p1, 0x0

    return-object p1

    .line 235
    :cond_64
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 181
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_12

    .line 182
    invoke-interface {v0, p1}, Lj$/time/chrono/b;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_12
    iget-object v0, p0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v0, :cond_1d

    .line 183
    invoke-virtual {v0, p1}, Lj$/time/k;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_2c

    :cond_1d
    if-eqz p1, :cond_2a

    .line 186
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_2a

    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    return p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 191
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 196
    :cond_14
    iget-object v0, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lj$/time/chrono/b;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 197
    iget-object v0, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_25
    iget-object v0, p0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v0, :cond_36

    invoke-virtual {v0, p1}, Lj$/time/k;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 200
    iget-object v0, p0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 202
    :cond_36
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_3f

    .line 205
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    .line 203
    :cond_3f
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    throw v0
.end method

.method final r(Lj$/time/format/x;)V
    .registers 28

    move-object/from16 v0, p0

    .line 249
    iget-object v9, v0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    move-object/from16 v1, p1

    .line 252
    iput-object v1, v0, Lj$/time/format/w;->e:Lj$/time/format/x;

    .line 265
    invoke-direct {v0}, Lj$/time/format/w;->s()V

    .line 360
    iget-object v1, v0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    iget-object v2, v0, Lj$/time/format/w;->e:Lj$/time/format/x;

    invoke-interface {v1, v9, v2}, Lj$/time/chrono/l;->P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/format/w;->A(Lj$/time/chrono/b;)V

    .line 267
    invoke-direct {v0}, Lj$/time/format/w;->x()V

    .line 271
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_d8

    const/4 v1, 0x0

    :goto_20
    const/16 v2, 0x32

    if-ge v1, v2, :cond_ba

    .line 275
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/temporal/s;

    .line 277
    iget-object v5, v0, Lj$/time/format/w;->e:Lj$/time/format/x;

    invoke-interface {v4, v9, v0, v5}, Lj$/time/temporal/s;->S(Ljava/util/HashMap;Lj$/time/temporal/n;Lj$/time/format/x;)Lj$/time/temporal/n;

    move-result-object v5

    if-eqz v5, :cond_b3

    .line 279
    instance-of v2, v5, Lj$/time/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_7c

    .line 280
    check-cast v5, Lj$/time/chrono/ChronoZonedDateTime;

    .line 281
    iget-object v2, v0, Lj$/time/format/w;->b:Lj$/time/x;

    if-nez v2, :cond_57

    .line 282
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->Q()Lj$/time/x;

    move-result-object v2

    iput-object v2, v0, Lj$/time/format/w;->b:Lj$/time/x;

    goto :goto_61

    .line 283
    :cond_57
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->Q()Lj$/time/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/time/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 286
    :goto_61
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v5

    goto :goto_7c

    .line 284
    :cond_66
    new-instance v1, Lj$/time/c;

    iget-object v2, v0, Lj$/time/format/w;->b:Lj$/time/x;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    .line 288
    :cond_7c
    :goto_7c
    instance-of v2, v5, Lj$/time/chrono/e;

    if-eqz v2, :cond_95

    .line 289
    check-cast v5, Lj$/time/chrono/e;

    .line 290
    invoke-interface {v5}, Lj$/time/chrono/e;->n()Lj$/time/k;

    move-result-object v2

    sget-object v3, Lj$/time/r;->d:Lj$/time/r;

    invoke-direct {v0, v2, v3}, Lj$/time/format/w;->y(Lj$/time/k;Lj$/time/r;)V

    .line 291
    invoke-interface {v5}, Lj$/time/chrono/e;->o()Lj$/time/chrono/b;

    move-result-object v2

    invoke-direct {v0, v2}, Lj$/time/format/w;->A(Lj$/time/chrono/b;)V

    :goto_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 295
    :cond_95
    instance-of v2, v5, Lj$/time/chrono/b;

    if-eqz v2, :cond_9f

    .line 296
    check-cast v5, Lj$/time/chrono/b;

    invoke-direct {v0, v5}, Lj$/time/format/w;->A(Lj$/time/chrono/b;)V

    goto :goto_92

    .line 300
    :cond_9f
    instance-of v2, v5, Lj$/time/k;

    if-eqz v2, :cond_ab

    .line 301
    check-cast v5, Lj$/time/k;

    sget-object v2, Lj$/time/r;->d:Lj$/time/r;

    invoke-direct {v0, v5, v2}, Lj$/time/format/w;->y(Lj$/time/k;Lj$/time/r;)V

    goto :goto_92

    .line 305
    :cond_ab
    new-instance v1, Lj$/time/c;

    .line 88
    const-string v2, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 305
    throw v1

    .line 307
    :cond_b3
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_92

    :cond_ba
    if-eq v1, v2, :cond_d0

    if-lez v1, :cond_d8

    .line 319
    invoke-direct {v0}, Lj$/time/format/w;->s()V

    .line 360
    iget-object v1, v0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    iget-object v2, v0, Lj$/time/format/w;->e:Lj$/time/format/x;

    invoke-interface {v1, v9, v2}, Lj$/time/chrono/l;->P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/format/w;->A(Lj$/time/chrono/b;)V

    .line 321
    invoke-direct {v0}, Lj$/time/format/w;->x()V

    goto :goto_d8

    .line 315
    :cond_d0
    new-instance v1, Lj$/time/c;

    .line 88
    const-string v2, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 315
    throw v1

    .line 489
    :cond_d8
    :goto_d8
    iget-object v1, v0, Lj$/time/format/w;->g:Lj$/time/k;

    const-wide/32 v12, 0xf4240

    const-wide/16 v14, 0x3e8

    if-nez v1, :cond_1b9

    .line 491
    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 492
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 493
    sget-object v4, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    mul-long/2addr v2, v14

    .line 495
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    rem-long/2addr v5, v14

    add-long/2addr v5, v2

    .line 496
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lj$/time/format/w;->C(Lj$/time/temporal/s;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 497
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_144

    .line 501
    :cond_11d
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_144

    .line 503
    :cond_128
    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 505
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 506
    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_144
    :goto_144
    sget-object v1, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1b9

    .line 512
    sget-object v3, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 513
    sget-object v5, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 514
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v4, :cond_173

    if-nez v6, :cond_16d

    if-nez v8, :cond_16d

    goto :goto_173

    :cond_16d
    :goto_16d
    move-wide/from16 v16, v12

    const-wide/16 v24, 0x0

    goto/16 :goto_200

    :cond_173
    :goto_173
    if-eqz v4, :cond_17a

    if-nez v6, :cond_17a

    if-eqz v8, :cond_17a

    goto :goto_16d

    :cond_17a
    if-eqz v4, :cond_181

    .line 523
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_183

    :cond_181
    const-wide/16 v16, 0x0

    :goto_183
    if-eqz v6, :cond_18a

    .line 524
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_18c

    :cond_18a
    const-wide/16 v18, 0x0

    :goto_18c
    if-eqz v8, :cond_193

    .line 525
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_195

    :cond_193
    const-wide/16 v20, 0x0

    .line 526
    :goto_195
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object v10, v1

    move-object v11, v3

    move-wide/from16 v3, v16

    move-wide/from16 v1, v22

    const-wide/16 v24, 0x0

    move-wide/from16 v16, v12

    move-object v12, v5

    move-object v13, v7

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Lj$/time/format/w;->w(JJJJ)V

    .line 527
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bd

    :cond_1b9
    move-wide/from16 v16, v12

    const-wide/16 v24, 0x0

    .line 535
    :goto_1bd
    iget-object v1, v0, Lj$/time/format/w;->e:Lj$/time/format/x;

    sget-object v2, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-eq v1, v2, :cond_200

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_200

    .line 536
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d1
    :goto_1d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_200

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 537
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/temporal/s;

    .line 538
    instance-of v4, v3, Lj$/time/temporal/a;

    if-eqz v4, :cond_1d1

    move-object v4, v3

    check-cast v4, Lj$/time/temporal/a;

    invoke-virtual {v4}, Lj$/time/temporal/a;->b0()Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 539
    check-cast v3, Lj$/time/temporal/a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lj$/time/temporal/a;->a0(J)V

    goto :goto_1d1

    .line 633
    :cond_200
    :goto_200
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_207

    .line 634
    invoke-direct {v0, v1}, Lj$/time/format/w;->q(Lj$/time/temporal/n;)V

    .line 636
    :cond_207
    iget-object v1, v0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v1, :cond_223

    .line 637
    invoke-direct {v0, v1}, Lj$/time/format/w;->q(Lj$/time/temporal/n;)V

    .line 638
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_223

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_223

    .line 639
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    iget-object v2, v0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-interface {v1, v2}, Lj$/time/chrono/b;->K(Lj$/time/k;)Lj$/time/chrono/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/format/w;->q(Lj$/time/temporal/n;)V

    .line 570
    :cond_223
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_241

    iget-object v1, v0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v1, :cond_241

    iget-object v1, v0, Lj$/time/format/w;->h:Lj$/time/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    sget-object v2, Lj$/time/r;->d:Lj$/time/r;

    if-ne v1, v2, :cond_235

    goto :goto_241

    .line 571
    :cond_235
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    iget-object v3, v0, Lj$/time/format/w;->h:Lj$/time/r;

    invoke-interface {v1, v3}, Lj$/time/chrono/b;->M(Lj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    .line 572
    iput-object v2, v0, Lj$/time/format/w;->h:Lj$/time/r;

    .line 579
    :cond_241
    :goto_241
    iget-object v1, v0, Lj$/time/format/w;->g:Lj$/time/k;

    if-nez v1, :cond_29f

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 580
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25d

    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 581
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25d

    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 582
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29f

    .line 583
    :cond_25d
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_286

    .line 584
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 585
    sget-object v3, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    div-long v4, v1, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    div-long v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29f

    .line 588
    :cond_286
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_29f
    :goto_29f
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_2f2

    iget-object v1, v0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v1, :cond_2f2

    .line 599
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2d3

    .line 601
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 602
    iget-object v2, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    iget-object v3, v0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-interface {v2, v3}, Lj$/time/chrono/b;->K(Lj$/time/k;)Lj$/time/chrono/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lj$/time/chrono/e;->H(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v1

    .line 603
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 605
    :cond_2d3
    iget-object v1, v0, Lj$/time/format/w;->b:Lj$/time/x;

    if-eqz v1, :cond_2f2

    .line 606
    iget-object v1, v0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    iget-object v2, v0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-interface {v1, v2}, Lj$/time/chrono/b;->K(Lj$/time/k;)Lj$/time/chrono/e;

    move-result-object v1

    iget-object v2, v0, Lj$/time/format/w;->b:Lj$/time/x;

    invoke-interface {v1, v2}, Lj$/time/chrono/e;->H(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v1

    .line 607
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 669
    iget-object v1, p0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v2, p0, Lj$/time/format/w;->b:Lj$/time/x;

    if-eqz v2, :cond_22

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/w;->b:Lj$/time/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    :cond_22
    iget-object v1, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-nez v1, :cond_2a

    iget-object v1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v1, :cond_4a

    .line 674
    :cond_2a
    const-string v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v1, p0, Lj$/time/format/w;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_45

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    if-eqz v1, :cond_4a

    const/16 v1, 0x54

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 681
    :cond_45
    iget-object v1, p0, Lj$/time/format/w;->g:Lj$/time/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
