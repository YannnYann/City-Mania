###### Class j$.time.chrono.C4278g (j$.time.chrono.g)
.class final Lj$/time/chrono/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/e;
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient a:Lj$/time/chrono/b;

.field private final transient b:Lj$/time/k;


# direct methods
.method private constructor <init>(Lj$/time/chrono/b;Lj$/time/k;)V
    .registers 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-string v0, "time"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 206
    iput-object p2, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    return-void
.end method

.method static C(Lj$/time/chrono/b;Lj$/time/k;)Lj$/time/chrono/g;
    .registers 3

    .line 174
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/k;)V

    return-object v0
.end method

.method private T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    .line 344
    iget-object v3, v0, Lj$/time/chrono/g;->b:Lj$/time/k;

    if-nez v2, :cond_17

    .line 345
    invoke-direct {v0, v1, v3}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :cond_17
    const-wide v4, 0x4e94914f0000L

    .line 347
    div-long v6, p8, v4

    const-wide/32 v8, 0x15180

    div-long v10, p6, v8

    add-long/2addr v10, v6

    const-wide/16 v6, 0x5a0

    div-long v12, p4, v6

    add-long/2addr v12, v10

    const-wide/16 v10, 0x18

    div-long v14, p2, v10

    add-long/2addr v14, v12

    .line 351
    rem-long v12, p8, v4

    rem-long v8, p6, v8

    const-wide/32 v16, 0x3b9aca00

    mul-long v8, v8, v16

    add-long/2addr v8, v12

    rem-long v6, p4, v6

    const-wide v12, 0xdf8475800L

    mul-long/2addr v6, v12

    add-long/2addr v6, v8

    rem-long v8, p2, v10

    const-wide v10, 0x34630b8a000L

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    .line 355
    invoke-virtual {v3}, Lj$/time/k;->k0()J

    move-result-wide v6

    add-long/2addr v8, v6

    .line 357
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v10

    add-long/2addr v10, v14

    .line 358
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_5d

    goto :goto_61

    .line 359
    :cond_5d
    invoke-static {v4, v5}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object v3

    .line 360
    :goto_61
    sget-object v2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v1, v10, v11, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1
.end method

.method private Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;
    .registers 5

    .line 218
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-ne v0, p1, :cond_9

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    if-ne v1, p2, :cond_9

    return-object p0

    .line 222
    :cond_9
    invoke-interface {v0}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/time/chrono/d;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    .line 223
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p1, p2}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/k;)V

    return-object v0
.end method

.method static r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/g;
    .registers 5

    .line 188
    check-cast p1, Lj$/time/chrono/g;

    .line 189
    invoke-interface {p1}, Lj$/time/chrono/e;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p1

    .line 190
    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-interface {p1}, Lj$/time/chrono/e;->h()Lj$/time/chrono/l;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/l;->s()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 423
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 413
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final H(Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    const/4 v0, 0x0

    .line 366
    invoke-static {p1, v0, p0}, Lj$/time/chrono/k;->C(Lj$/time/x;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLj$/time/temporal/v;)Lj$/time/chrono/g;
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object/from16 v1, p3

    .line 305
    instance-of v4, v1, Lj$/time/temporal/b;

    iget-object v5, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-eqz v4, :cond_bd

    .line 306
    move-object v4, v1

    check-cast v4, Lj$/time/temporal/b;

    .line 307
    sget-object v6, Lj$/time/chrono/f;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    iget-object v6, v0, Lj$/time/chrono/g;->b:Lj$/time/k;

    packed-switch v4, :pswitch_data_ca

    .line 316
    invoke-interface {v5, v2, v3, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_25
    const-wide/16 v7, 0x100

    .line 314
    div-long v9, v2, v7

    .line 322
    sget-object v1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v5, v9, v10, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v9

    .line 314
    rem-long v1, v2, v7

    const-wide/16 v3, 0xc

    mul-long v11, v1, v3

    .line 326
    iget-object v10, v9, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v9 .. v18}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 326
    :pswitch_46
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_53
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 330
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 311
    :pswitch_62
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/g;->S(J)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_67
    const-wide/32 v1, 0x5265c00

    .line 310
    div-long v3, p1, v1

    .line 322
    sget-object v7, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v5, v3, v4, v7}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v7

    .line 310
    rem-long v1, p1, v1

    const-wide/32 v3, 0xf4240

    mul-long v15, v1, v3

    .line 338
    iget-object v8, v7, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_8a
    const-wide v1, 0x141dd76000L

    .line 309
    div-long v3, p1, v1

    .line 322
    sget-object v7, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-interface {v5, v3, v4, v7}, Lj$/time/chrono/b;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object v7

    .line 309
    rem-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    mul-long v15, v1, v3

    .line 338
    iget-object v8, v7, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 338
    :pswitch_ae
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 318
    :cond_bd
    invoke-interface {v5}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3}, Lj$/time/temporal/v;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object v1

    invoke-static {v4, v1}, Lj$/time/chrono/g;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_8a
        :pswitch_67
        :pswitch_62
        :pswitch_53
        :pswitch_46
        :pswitch_25
    .end packed-switch
.end method

.method final S(J)Lj$/time/chrono/g;
    .registers 13

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    .line 334
    iget-object v1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->T(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final W(JLj$/time/temporal/s;)Lj$/time/chrono/g;
    .registers 7

    .line 291
    instance-of v0, p3, Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-eqz v0, :cond_23

    .line 292
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 293
    invoke-virtual {v0}, Lj$/time/temporal/a;->b0()Z

    move-result v0

    iget-object v2, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    if-eqz v0, :cond_1a

    .line 294
    invoke-virtual {v2, p1, p2, p3}, Lj$/time/k;->m0(JLj$/time/temporal/s;)Lj$/time/k;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    .line 296
    :cond_1a
    invoke-interface {v1, p1, p2, p3}, Lj$/time/chrono/b;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    .line 299
    :cond_23
    invoke-interface {v1}, Lj$/time/chrono/b;->h()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/g;->r(Lj$/time/chrono/l;Lj$/time/temporal/m;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->W(JLj$/time/temporal/s;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->J(JLj$/time/temporal/v;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 443
    :cond_4
    instance-of v1, p1, Lj$/time/chrono/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 444
    check-cast p1, Lj$/time/chrono/e;

    invoke-interface {p0, p1}, Lj$/time/chrono/e;->X(Lj$/time/chrono/e;)I

    move-result p1

    if-nez p1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 240
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_13

    .line 241
    check-cast p1, Lj$/time/temporal/a;

    .line 242
    invoke-virtual {p1}, Lj$/time/temporal/a;->T()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lj$/time/temporal/a;->b0()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1b

    :cond_13
    if-eqz p1, :cond_1d

    .line 244
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_1d

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 267
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1b

    .line 268
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 269
    invoke-virtual {v0}, Lj$/time/temporal/a;->b0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    :cond_14
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 271
    :cond_1b
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 3

    .line 451
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-virtual {v1}, Lj$/time/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 5

    .line 258
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1b

    .line 259
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 260
    invoke-virtual {v0}, Lj$/time/temporal/a;->b0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1

    :cond_14
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1

    .line 262
    :cond_1b
    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 3

    .line 280
    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-direct {p0, p1, v0}, Lj$/time/chrono/g;->Z(Lj$/time/temporal/m;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 249
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_17

    .line 250
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 251
    invoke-virtual {v0}, Lj$/time/temporal/a;->b0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    :goto_f
    invoke-interface {v0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    :cond_14
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    goto :goto_f

    .line 253
    :cond_17
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lj$/time/k;
    .registers 2

    .line 234
    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    return-object v0
.end method

.method public final o()Lj$/time/chrono/b;
    .registers 2

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 456
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-virtual {v1}, Lj$/time/k;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    .line 427
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/k;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
