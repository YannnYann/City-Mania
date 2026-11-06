###### Class j$.time.temporal.p (j$.time.temporal.p)
.class public final synthetic Lj$/time/temporal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lj$/time/temporal/p;->a:I

    iput p1, p0, Lj$/time/temporal/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    iget v0, p0, Lj$/time/temporal/p;->a:I

    packed-switch v0, :pswitch_data_3c

    .line 469
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    .line 470
    iget v1, p0, Lj$/time/temporal/p;->b:I

    if-ne v0, v1, :cond_10

    goto :goto_1f

    :cond_10
    sub-int/2addr v1, v0

    if-ltz v1, :cond_17

    rsub-int/lit8 v0, v1, 0x7

    :goto_15
    int-to-long v0, v0

    goto :goto_19

    :cond_17
    neg-int v0, v1

    goto :goto_15

    .line 474
    :goto_19
    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->e(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    :goto_1f
    return-object p1

    .line 415
    :pswitch_20
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    .line 416
    iget v1, p0, Lj$/time/temporal/p;->b:I

    if-ne v0, v1, :cond_2b

    goto :goto_3a

    :cond_2b
    sub-int/2addr v0, v1

    if-ltz v0, :cond_32

    rsub-int/lit8 v0, v0, 0x7

    :goto_30
    int-to-long v0, v0

    goto :goto_34

    :cond_32
    neg-int v0, v0

    goto :goto_30

    .line 420
    :goto_34
    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    :goto_3a
    return-object p1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method
