###### Class j$.time.format.o (j$.time.format.o)
.class final Lj$/time/format/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:Lj$/time/temporal/a;

.field private final b:Lj$/time/format/z;

.field private final c:Lj$/time/format/b;

.field private volatile d:Lj$/time/format/i;


# direct methods
.method constructor <init>(Lj$/time/temporal/a;Lj$/time/format/z;Lj$/time/format/b;)V
    .registers 4

    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    .line 3312
    iput-object p2, p0, Lj$/time/format/o;->b:Lj$/time/format/z;

    .line 3313
    iput-object p3, p0, Lj$/time/format/o;->c:Lj$/time/format/b;

    return-void
.end method


# virtual methods
.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 8

    .line 3318
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    invoke-virtual {p1, v0}, Lj$/time/format/s;->e(Lj$/time/temporal/s;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 3323
    :cond_a
    invoke-virtual {p1}, Lj$/time/format/s;->d()Lj$/time/temporal/n;

    move-result-object v1

    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/l;

    if-eqz v1, :cond_31

    .line 3324
    sget-object v2, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v1, v2, :cond_1f

    goto :goto_31

    .line 3327
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/o;->b:Lj$/time/format/z;

    invoke-virtual {p1}, Lj$/time/format/s;->c()Ljava/util/Locale;

    iget-object v3, p0, Lj$/time/format/o;->c:Lj$/time/format/b;

    .line 808
    iget-object v3, v3, Lj$/time/format/b;->a:Lj$/time/format/u;

    invoke-virtual {v3, v0, v1, v2}, Lj$/time/format/u;->a(JLj$/time/format/z;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 3325
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/o;->b:Lj$/time/format/z;

    invoke-virtual {p1}, Lj$/time/format/s;->c()Ljava/util/Locale;

    iget-object v3, p0, Lj$/time/format/o;->c:Lj$/time/format/b;

    .line 812
    iget-object v3, v3, Lj$/time/format/b;->a:Lj$/time/format/u;

    invoke-virtual {v3, v0, v1, v2}, Lj$/time/format/u;->a(JLj$/time/format/z;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    const/4 v1, 0x1

    if-nez v0, :cond_5d

    .line 3380
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    if-nez v0, :cond_56

    .line 3381
    new-instance v0, Lj$/time/format/i;

    iget-object v2, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    sget-object v3, Lj$/time/format/y;->NORMAL:Lj$/time/format/y;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4, v3}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;)V

    iput-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    .line 3383
    :cond_56
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    .line 3330
    invoke-virtual {v0, p1, p2}, Lj$/time/format/i;->p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 3332
    :cond_5d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 14

    .line 3338
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz p3, :cond_d9

    if-gt p3, v0, :cond_d9

    .line 3342
    invoke-virtual {p1}, Lj$/time/format/q;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/format/z;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3343
    :goto_12
    invoke-virtual {p1}, Lj$/time/format/q;->g()Lj$/time/chrono/l;

    move-result-object v6

    .line 3345
    iget-object v1, p0, Lj$/time/format/o;->c:Lj$/time/format/b;

    iget-object v7, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    if-eqz v6, :cond_2c

    sget-object v2, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v6, v2, :cond_21

    goto :goto_2c

    .line 3348
    :cond_21
    invoke-virtual {p1}, Lj$/time/format/q;->h()Ljava/util/Locale;

    .line 817
    iget-object v1, v1, Lj$/time/format/b;->a:Lj$/time/format/u;

    invoke-virtual {v1, v0}, Lj$/time/format/u;->b(Lj$/time/format/z;)Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    move-object v8, v0

    goto :goto_36

    .line 3346
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Lj$/time/format/q;->h()Ljava/util/Locale;

    .line 822
    iget-object v1, v1, Lj$/time/format/b;->a:Lj$/time/format/u;

    invoke-virtual {v1, v0}, Lj$/time/format/u;->b(Lj$/time/format/z;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2a

    :goto_36
    if-eqz v8, :cond_c0

    .line 3351
    :cond_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3352
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map$Entry;

    .line 3353
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3354
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3355
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    iget-object v1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v0

    return v0

    .line 3358
    :cond_73
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne v7, v0, :cond_b8

    invoke-virtual {p1}, Lj$/time/format/q;->k()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 3360
    invoke-interface {v6}, Lj$/time/chrono/l;->D()Ljava/util/List;

    move-result-object v0

    .line 3361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_85
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lj$/time/chrono/m;

    .line 3362
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3363
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 3364
    invoke-interface {v7}, Lj$/time/chrono/m;->p()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    iget-object v1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v0

    return v0

    .line 3368
    :cond_b8
    invoke-virtual {p1}, Lj$/time/format/q;->k()Z

    move-result v0

    if-eqz v0, :cond_c0

    not-int v0, p3

    return v0

    .line 3380
    :cond_c0
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    if-nez v0, :cond_d2

    .line 3381
    new-instance v0, Lj$/time/format/i;

    iget-object v1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/y;->NORMAL:Lj$/time/format/y;

    const/4 v3, 0x1

    const/16 v5, 0x13

    invoke-direct {v0, v1, v3, v5, v2}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;)V

    iput-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    .line 3383
    :cond_d2
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/i;

    .line 3372
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/i;->r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 3340
    :cond_d9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 3388
    sget-object v0, Lj$/time/format/z;->FULL:Lj$/time/format/z;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/o;->a:Lj$/time/temporal/a;

    iget-object v4, p0, Lj$/time/format/o;->b:Lj$/time/format/z;

    if-ne v4, v0, :cond_1c

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3391
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
