###### Class j$.time.format.a (j$.time.format.a)
.class public final synthetic Lj$/time/format/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/u;


# virtual methods
.method public final j(Lj$/time/temporal/n;)Ljava/lang/Object;
    .registers 3

    .line 159
    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/x;

    if-eqz p1, :cond_11

    .line 160
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-nez v0, :cond_11

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method
