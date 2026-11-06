###### Class j$.time.chrono.C (j$.time.chrono.C)
.class public final Lj$/time/chrono/C;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x120bd9be64a3de1eL


# instance fields
.field private final transient a:Lj$/time/h;


# direct methods
.method constructor <init>(Lj$/time/h;)V
    .registers 3

    .line 212
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 213
    const-string v0, "isoDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iput-object p1, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    return-void
.end method

.method private T()I
    .registers 2

    .line 306
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method private Z(Lj$/time/h;)Lj$/time/chrono/C;
    .registers 3

    .line 422
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {p1, v0}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Lj$/time/chrono/C;

    invoke-direct {v0, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 485
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 502
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final C(J)Lj$/time/chrono/b;
    .registers 4

    .line 388
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->k0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1
.end method

.method final J(J)Lj$/time/chrono/b;
    .registers 4

    .line 378
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lj$/time/k;)Lj$/time/chrono/e;
    .registers 2

    .line 657
    invoke-static {p0, p1}, Lj$/time/chrono/g;->C(Lj$/time/chrono/b;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lj$/time/temporal/r;)Lj$/time/chrono/b;
    .registers 2

    .line 357
    invoke-super {p0, p1}, Lj$/time/chrono/d;->M(Lj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method final S(J)Lj$/time/chrono/b;
    .registers 4

    .line 373
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1
.end method

.method public final W(JLj$/time/temporal/s;)Lj$/time/chrono/C;
    .registers 12

    .line 312
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_99

    .line 313
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 314
    invoke-virtual {p0, v0}, Lj$/time/chrono/C;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    return-object p0

    .line 317
    :cond_10
    sget-object v1, Lj$/time/chrono/B;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    iget-object v3, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq v2, v6, :cond_4b

    const/4 v7, 0x5

    if-eq v2, v7, :cond_27

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_4b

    goto :goto_61

    .line 228
    :cond_27
    sget-object p3, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 319
    invoke-virtual {p3, v0}, Lj$/time/chrono/A;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/x;->b(JLj$/time/temporal/s;)V

    .line 302
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v4, 0xc

    mul-long/2addr v0, v4

    invoke-virtual {v3}, Lj$/time/h;->Z()I

    move-result p3

    int-to-long v4, p3

    add-long/2addr v0, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 378
    invoke-virtual {v3, p1, p2}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1

    .line 228
    :cond_4b
    sget-object v2, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 324
    invoke-virtual {v2, v0}, Lj$/time/chrono/A;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v2

    .line 325
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_84

    if-eq v0, v5, :cond_79

    if-eq v0, v4, :cond_6a

    .line 335
    :goto_61
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/h;->p0(JLj$/time/temporal/s;)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1

    .line 331
    :cond_6a
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    rsub-int p1, p1, 0x778

    invoke-virtual {v3, p1}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1

    :cond_79
    add-int/lit16 v2, v2, 0x777

    .line 329
    invoke-virtual {v3, v2}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1

    .line 327
    :cond_84
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_8e

    add-int/lit16 v2, v2, 0x777

    goto :goto_90

    :cond_8e
    rsub-int v2, v2, 0x778

    :goto_90
    invoke-virtual {v3, v2}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/C;->Z(Lj$/time/h;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1

    .line 337
    :cond_99
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/chrono/b;
    .registers 4

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/C;->W(JLj$/time/temporal/s;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/C;->W(JLj$/time/temporal/s;)Lj$/time/chrono/C;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 393
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 393
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 398
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 398
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 460
    :cond_4
    instance-of v0, p1, Lj$/time/chrono/C;

    if-eqz v0, :cond_13

    .line 461
    check-cast p1, Lj$/time/chrono/C;

    .line 462
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    iget-object p1, p1, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 8

    .line 283
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_50

    .line 284
    sget-object v0, Lj$/time/chrono/B;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x5

    iget-object v3, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    if-eq v0, v1, :cond_33

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    .line 296
    invoke-virtual {v3, p1}, Lj$/time/h;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 294
    :cond_23
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    if-lt p1, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    int-to-long v0, v2

    return-wide v0

    .line 292
    :cond_2d
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 302
    :cond_33
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v4, 0xc

    mul-long/2addr v0, v4

    invoke-virtual {v3}, Lj$/time/h;->Z()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 288
    :cond_45
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result p1

    if-lt p1, v2, :cond_4c

    goto :goto_4e

    :cond_4c
    rsub-int/lit8 p1, p1, 0x1

    :goto_4e
    int-to-long v0, p1

    return-wide v0

    .line 298
    :cond_50
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lj$/time/chrono/l;
    .registers 2

    .line 228
    sget-object v0, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 228
    sget-object v0, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->hashCode()I

    move-result v0

    const v1, -0x769fa231

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 347
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 6

    .line 260
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5e

    .line 261
    invoke-interface {p0, p1}, Lj$/time/chrono/b;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 262
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 263
    sget-object v1, Lj$/time/chrono/B;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4b

    const/4 p1, 0x4

    if-eq v1, p1, :cond_28

    .line 228
    sget-object p1, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 274
    invoke-virtual {p1, v0}, Lj$/time/chrono/A;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 269
    :cond_28
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    .line 270
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result v0

    if-gtz v0, :cond_3d

    invoke-virtual {p1}, Lj$/time/temporal/x;->e()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/16 v2, 0x778

    add-long/2addr v0, v2

    goto :goto_44

    :cond_3d
    invoke-virtual {p1}, Lj$/time/temporal/x;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x777

    sub-long/2addr v0, v2

    :goto_44
    const-wide/16 v2, 0x1

    .line 271
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 267
    :cond_4b
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 276
    :cond_52
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    throw v0

    .line 278
    :cond_5e
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .registers 2

    .line 347
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/C;

    return-object p1
.end method

.method public final u()Lj$/time/chrono/m;
    .registers 3

    .line 241
    invoke-direct {p0}, Lj$/time/chrono/C;->T()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Lj$/time/chrono/D;->ROC:Lj$/time/chrono/D;

    return-object v0

    :cond_a
    sget-object v0, Lj$/time/chrono/D;->BEFORE_ROC:Lj$/time/chrono/D;

    return-object v0
.end method

.method public final v()J
    .registers 3

    .line 439
    iget-object v0, p0, Lj$/time/chrono/C;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->v()J

    move-result-wide v0

    return-wide v0
.end method
