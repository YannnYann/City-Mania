###### Class j$.time.temporal.n (j$.time.temporal.n)
.class public interface abstract Lj$/time/temporal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 309
    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/u;

    if-eq p1, v0, :cond_12

    .line 310
    sget-object v0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    if-eq p1, v0, :cond_12

    .line 311
    sget-object v0, Lj$/time/temporal/t;->c:Lj$/time/temporal/u;

    if-ne p1, v0, :cond_d

    goto :goto_12

    .line 314
    :cond_d
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract f(Lj$/time/temporal/s;)Z
.end method

.method public abstract g(Lj$/time/temporal/s;)J
.end method

.method public i(Lj$/time/temporal/s;)I
    .registers 8

    .line 218
    invoke-interface {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lj$/time/temporal/x;->h()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 222
    invoke-interface {p0, p1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    .line 223
    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/x;->i(J)Z

    move-result v3

    if-eqz v3, :cond_16

    long-to-int p1, v1

    return p1

    .line 224
    :cond_16
    new-instance v3, Lj$/time/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid value for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    throw v3

    .line 220
    :cond_3a
    new-instance v0, Lj$/time/temporal/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 220
    throw v0
.end method

.method public l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 4

    .line 170
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1d

    .line 171
    invoke-interface {p0, p1}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 174
    :cond_11
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v0

    .line 176
    :cond_1d
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method
