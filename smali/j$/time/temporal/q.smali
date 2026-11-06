###### Class j$.time.temporal.q (j$.time.temporal.q)
.class public final synthetic Lj$/time/temporal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/u;
.implements Lj$/time/temporal/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lj$/time/temporal/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 189
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/x;->d()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public j(Lj$/time/temporal/n;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lj$/time/temporal/q;->a:I

    packed-switch v0, :pswitch_data_6e

    .line 446
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 447
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1

    .line 428
    :pswitch_18
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 429
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/h;->h0(J)Lj$/time/h;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return-object p1

    .line 412
    :pswitch_2b
    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/u;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/x;

    if-eqz v0, :cond_36

    goto :goto_3f

    .line 413
    :cond_36
    sget-object v0, Lj$/time/temporal/t;->d:Lj$/time/temporal/u;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj$/time/x;

    :goto_3f
    return-object v0

    .line 394
    :pswitch_40
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 395
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    return-object p1

    .line 378
    :pswitch_53
    sget-object v0, Lj$/time/temporal/t;->c:Lj$/time/temporal/u;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/v;

    return-object p1

    .line 362
    :pswitch_5c
    sget-object v0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/l;

    return-object p1

    .line 347
    :pswitch_65
    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/u;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/x;

    return-object p1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_40
        :pswitch_2b
        :pswitch_18
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lj$/time/temporal/q;->a:I

    packed-switch v0, :pswitch_data_20

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 454
    :pswitch_a
    const-string v0, "LocalTime"

    return-object v0

    .line 436
    :pswitch_d
    const-string v0, "LocalDate"

    return-object v0

    .line 418
    :pswitch_10
    const-string v0, "Zone"

    return-object v0

    .line 402
    :pswitch_13
    const-string v0, "ZoneOffset"

    return-object v0

    .line 383
    :pswitch_16
    const-string v0, "Precision"

    return-object v0

    .line 367
    :pswitch_19
    const-string v0, "Chronology"

    return-object v0

    .line 352
    :pswitch_1c
    const-string v0, "ZoneId"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method
