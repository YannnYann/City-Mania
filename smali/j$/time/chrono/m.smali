###### Class j$.time.chrono.m (j$.time.chrono.m)
.class public interface abstract Lj$/time/chrono/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Lj$/time/temporal/o;


# virtual methods
.method public a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 269
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 270
    sget-object p1, Lj$/time/temporal/b;->ERAS:Lj$/time/temporal/b;

    return-object p1

    .line 272
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 301
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p0}, Lj$/time/chrono/m;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 146
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_13

    goto :goto_11

    :cond_9
    if-eqz p1, :cond_13

    .line 149
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_13

    :goto_11
    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lj$/time/temporal/s;)J
    .registers 4

    .line 239
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_a

    .line 240
    invoke-interface {p0}, Lj$/time/chrono/m;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 241
    :cond_a
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_13

    .line 244
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    .line 242
    :cond_13
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 242
    throw v0
.end method

.method public i(Lj$/time/temporal/s;)I
    .registers 3

    .line 209
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 210
    invoke-interface {p0}, Lj$/time/chrono/m;->p()I

    move-result p1

    return p1

    .line 212
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public abstract p()I
.end method
