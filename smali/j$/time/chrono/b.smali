###### Class j$.time.chrono.InterfaceC4273b (j$.time.chrono.b)
.class public interface abstract Lj$/time/chrono/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;


# virtual methods
.method public K(Lj$/time/k;)Lj$/time/chrono/e;
    .registers 2

    .line 657
    invoke-static {p0, p1}, Lj$/time/chrono/g;->C(Lj$/time/chrono/b;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public abstract M(Lj$/time/temporal/r;)Lj$/time/chrono/b;
.end method

.method public V(Lj$/time/chrono/b;)I
    .registers 6

    .line 707
    invoke-interface {p0}, Lj$/time/chrono/b;->v()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/b;->v()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_25

    .line 709
    invoke-interface {p0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

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

    :cond_25
    return v0
.end method

.method public a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 511
    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_13

    goto :goto_33

    .line 513
    :cond_13
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    goto :goto_33

    .line 515
    :cond_1a
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_25

    .line 516
    invoke-interface {p0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object p1

    return-object p1

    .line 517
    :cond_25
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    .line 518
    sget-object p1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    return-object p1

    .line 522
    :cond_2e
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract b(JLj$/time/temporal/s;)Lj$/time/chrono/b;
.end method

.method public c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 551
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p0}, Lj$/time/chrono/b;->v()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 241
    check-cast p1, Lj$/time/chrono/b;

    invoke-interface {p0, p1}, Lj$/time/chrono/b;->V(Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method public abstract d(JLj$/time/temporal/v;)Lj$/time/chrono/b;
.end method

.method public e(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 5

    .line 486
    invoke-interface {p0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lj$/time/temporal/m;->e(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/d;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 387
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_b

    .line 388
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->T()Z

    move-result p1

    return p1

    :cond_b
    if-eqz p1, :cond_15

    .line 390
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public abstract h()Lj$/time/chrono/l;
.end method

.method public abstract hashCode()I
.end method

.method public abstract m(Lj$/time/temporal/o;)Lj$/time/chrono/b;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u()Lj$/time/chrono/m;
    .registers 3

    .line 326
    invoke-interface {p0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p0, v1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v1

    invoke-interface {v0, v1}, Lj$/time/chrono/l;->N(I)Lj$/time/chrono/m;

    move-result-object v0

    return-object v0
.end method

.method public v()J
    .registers 3

    .line 673
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0
.end method
