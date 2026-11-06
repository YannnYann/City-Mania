###### Class j$.time.chrono.ChronoZonedDateTime (j$.time.chrono.ChronoZonedDateTime)
.class public interface abstract Lj$/time/chrono/ChronoZonedDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lj$/time/chrono/b;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/time/temporal/m;",
        "Ljava/lang/Comparable<",
        "Lj$/time/chrono/ChronoZonedDateTime<",
        "*>;>;"
    }
.end annotation


# virtual methods
.method public abstract B()Lj$/time/chrono/e;
.end method

.method public abstract E()Lj$/time/ZoneOffset;
.end method

.method public abstract I(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;
.end method

.method public O()J
    .registers 5

    .line 553
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->o()Lj$/time/chrono/b;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/b;->v()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    .line 554
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/k;->l0()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 555
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->b0()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract Q()Lj$/time/x;
.end method

.method public a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 491
    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_3c

    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_3c

    .line 493
    :cond_d
    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 494
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 495
    :cond_18
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_23

    .line 496
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 497
    :cond_23
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    .line 498
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->h()Lj$/time/chrono/l;

    move-result-object p1

    return-object p1

    .line 499
    :cond_2e
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_37

    .line 500
    sget-object p1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    return-object p1

    .line 504
    :cond_37
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 492
    :cond_3c
    :goto_3c
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->Q()Lj$/time/x;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(JLj$/time/temporal/s;)Lj$/time/chrono/ChronoZonedDateTime;
.end method

.method public bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->b(JLj$/time/temporal/s;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 122
    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->z(Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public abstract d(JLj$/time/temporal/v;)Lj$/time/chrono/ChronoZonedDateTime;
.end method

.method public bridge synthetic d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->d(JLj$/time/temporal/v;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 122
    check-cast p3, Lj$/time/temporal/b;

    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->k(JLj$/time/temporal/b;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj$/time/temporal/s;)J
    .registers 4

    .line 212
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2d

    .line 213
    sget-object v0, Lj$/time/chrono/i;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 217
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 215
    :cond_1e
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->b0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 214
    :cond_28
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_2d
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Lj$/time/chrono/l;
    .registers 2

    .line 265
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->o()Lj$/time/chrono/b;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    return-object v0
.end method

.method public i(Lj$/time/temporal/s;)I
    .registers 4

    .line 198
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2f

    .line 199
    sget-object v0, Lj$/time/chrono/i;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 205
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1

    .line 203
    :cond_1e
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->b0()I

    move-result p1

    return p1

    .line 201
    :cond_27
    new-instance p1, Lj$/time/temporal/w;

    .line 88
    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    throw p1

    .line 207
    :cond_2f
    invoke-super {p0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 122
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->m(Lj$/time/temporal/o;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public k(JLj$/time/temporal/b;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 5

    .line 466
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lj$/time/temporal/m;->e(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/k;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 187
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1d

    .line 188
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_16

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_d

    goto :goto_16

    .line 191
    :cond_d
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 189
    :cond_16
    :goto_16
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1d
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public m(Lj$/time/temporal/o;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    .line 420
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->h()Lj$/time/chrono/l;

    move-result-object v0

    .line 190
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->c(Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    .line 420
    invoke-static {v0, p1}, Lj$/time/chrono/k;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public n()Lj$/time/k;
    .registers 2

    .line 243
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/e;->n()Lj$/time/k;

    move-result-object v0

    return-object v0
.end method

.method public o()Lj$/time/chrono/b;
    .registers 2

    .line 231
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/e;->o()Lj$/time/chrono/b;

    move-result-object v0

    return-object v0
.end method

.method public toInstant()Lj$/time/Instant;
    .registers 5

    .line 538
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/k;->W()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->W(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public z(Lj$/time/chrono/ChronoZonedDateTime;)I
    .registers 6

    .line 577
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->O()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_5c

    .line 579
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/k;->W()I

    move-result v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->n()Lj$/time/k;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/k;->W()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_5c

    .line 581
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->B()Lj$/time/chrono/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/e;->X(Lj$/time/chrono/e;)I

    move-result v0

    if-nez v0, :cond_5c

    .line 583
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->Q()Lj$/time/x;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/x;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->Q()Lj$/time/x;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/x;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5c

    .line 585
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->h()Lj$/time/chrono/l;

    move-result-object p1

    check-cast v0, Lj$/time/chrono/a;

    .line 682
    invoke-interface {v0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-interface {p1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5c
    return v0
.end method
