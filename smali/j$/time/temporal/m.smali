###### Class j$.time.temporal.m (j$.time.temporal.m)
.class public interface abstract Lj$/time/temporal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# virtual methods
.method public abstract b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
.end method

.method public abstract d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
.end method

.method public e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    .line 370
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1, p3}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1

    :cond_16
    neg-long p1, p1

    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract j(Lj$/time/h;)Lj$/time/temporal/m;
.end method
