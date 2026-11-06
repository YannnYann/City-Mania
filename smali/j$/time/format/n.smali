###### Class j$.time.format.n (j$.time.format.n)
.class final Lj$/time/format/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# static fields
.field private static volatile c:Ljava/util/AbstractMap$SimpleImmutableEntry;

.field private static volatile d:Ljava/util/AbstractMap$SimpleImmutableEntry;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lj$/time/format/n;->a:I

    iput-object p1, p0, Lj$/time/format/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lj$/time/format/q;Ljava/lang/CharSequence;IILj$/time/format/j;)I
    .registers 8

    .line 4308
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4309
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_1a

    .line 4310
    invoke-static {v0}, Lj$/time/x;->J(Ljava/lang/String;)Lj$/time/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/format/q;->m(Lj$/time/x;)V

    return p3

    .line 4315
    :cond_1a
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_60

    .line 4316
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2}, Lj$/time/format/q;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_60

    .line 4321
    :cond_2f
    invoke-virtual {p0}, Lj$/time/format/q;->c()Lj$/time/format/q;

    move-result-object v1

    .line 4322
    invoke-virtual {p4, v1, p1, p3}, Lj$/time/format/j;->r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I

    move-result p1

    if-gez p1, :cond_47

    .line 4325
    :try_start_39
    sget-object p1, Lj$/time/format/j;->e:Lj$/time/format/j;

    if-ne p4, p1, :cond_3f

    not-int p0, p2

    return p0

    .line 4328
    :cond_3f
    invoke-static {v0}, Lj$/time/x;->J(Ljava/lang/String;)Lj$/time/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/format/q;->m(Lj$/time/x;)V

    return p3

    .line 4331
    :cond_47
    sget-object p3, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v1, p3}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-int p3, p3

    .line 4332
    invoke-static {p3}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p3

    .line 4333
    invoke-static {v0, p3}, Lj$/time/x;->T(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/x;

    move-result-object p3

    invoke-virtual {p0, p3}, Lj$/time/format/q;->m(Lj$/time/x;)V
    :try_end_5d
    .catch Lj$/time/c; {:try_start_39 .. :try_end_5d} :catch_5e

    return p1

    :catch_5e
    not-int p0, p2

    return p0

    .line 4317
    :cond_60
    :goto_60
    invoke-static {v0}, Lj$/time/x;->J(Ljava/lang/String;)Lj$/time/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/format/q;->m(Lj$/time/x;)V

    return p3
.end method


# virtual methods
.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 4

    iget v0, p0, Lj$/time/format/n;->a:I

    packed-switch v0, :pswitch_data_26

    .line 4208
    iget-object v0, p0, Lj$/time/format/n;->b:Ljava/lang/Object;

    check-cast v0, Lj$/time/format/a;

    invoke-virtual {p1, v0}, Lj$/time/format/s;->f(Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/x;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    goto :goto_1b

    .line 4212
    :cond_13
    invoke-virtual {p1}, Lj$/time/x;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    :goto_1b
    return p1

    .line 2606
    :pswitch_1c
    iget-object p1, p0, Lj$/time/format/n;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 11

    iget v0, p0, Lj$/time/format/n;->a:I

    packed-switch v0, :pswitch_data_156

    .line 4251
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_127

    if-ne p3, v0, :cond_10

    :cond_d
    not-int p1, p3

    goto/16 :goto_126

    .line 4260
    :cond_10
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_120

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1e

    goto/16 :goto_120

    :cond_1e
    add-int/lit8 v2, p3, 0x2

    if-lt v0, v2, :cond_9a

    add-int/lit8 v3, p3, 0x1

    .line 4264
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x55

    .line 4265
    invoke-virtual {p1, v1, v4}, Lj$/time/format/q;->a(CC)Z

    move-result v4

    const/16 v5, 0x54

    if-eqz v4, :cond_58

    invoke-virtual {p1, v3, v5}, Lj$/time/format/q;->a(CC)Z

    move-result v4

    if-eqz v4, :cond_58

    add-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_50

    .line 4266
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x43

    invoke-virtual {p1, v0, v3}, Lj$/time/format/q;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4267
    sget-object v0, Lj$/time/format/j;->f:Lj$/time/format/j;

    invoke-static {p1, p2, p3, v1, v0}, Lj$/time/format/n;->a(Lj$/time/format/q;Ljava/lang/CharSequence;IILj$/time/format/j;)I

    move-result p1

    goto/16 :goto_126

    .line 4269
    :cond_50
    sget-object v0, Lj$/time/format/j;->f:Lj$/time/format/j;

    invoke-static {p1, p2, p3, v2, v0}, Lj$/time/format/n;->a(Lj$/time/format/q;Ljava/lang/CharSequence;IILj$/time/format/j;)I

    move-result p1

    goto/16 :goto_126

    :cond_58
    const/16 v4, 0x47

    .line 4270
    invoke-virtual {p1, v1, v4}, Lj$/time/format/q;->a(CC)Z

    move-result v4

    if-eqz v4, :cond_9a

    add-int/lit8 v4, p3, 0x3

    if-lt v0, v4, :cond_9a

    const/16 v6, 0x4d

    .line 4271
    invoke-virtual {p1, v3, v6}, Lj$/time/format/q;->a(CC)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2, v5}, Lj$/time/format/q;->a(CC)Z

    move-result v2

    if-eqz v2, :cond_9a

    add-int/lit8 v1, p3, 0x4

    if-lt v0, v1, :cond_92

    .line 4272
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2}, Lj$/time/format/q;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 4273
    const-string p2, "GMT0"

    invoke-static {p2}, Lj$/time/x;->J(Ljava/lang/String;)Lj$/time/x;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/format/q;->m(Lj$/time/x;)V

    move p1, v1

    goto/16 :goto_126

    .line 4276
    :cond_92
    sget-object v0, Lj$/time/format/j;->f:Lj$/time/format/j;

    invoke-static {p1, p2, p3, v4, v0}, Lj$/time/format/n;->a(Lj$/time/format/q;Ljava/lang/CharSequence;IILj$/time/format/j;)I

    move-result p1

    goto/16 :goto_126

    .line 4224
    :cond_9a
    invoke-static {}, Lj$/time/zone/j;->a()Ljava/util/Set;

    move-result-object v0

    .line 4225
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 4226
    invoke-virtual {p1}, Lj$/time/format/q;->j()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 4227
    sget-object v3, Lj$/time/format/n;->c:Ljava/util/AbstractMap$SimpleImmutableEntry;

    goto :goto_ad

    :cond_ab
    sget-object v3, Lj$/time/format/n;->d:Ljava/util/AbstractMap$SimpleImmutableEntry;

    :goto_ad
    if-eqz v3, :cond_bb

    .line 4228
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_f1

    .line 4229
    :cond_bb
    monitor-enter p0

    .line 4230
    :try_start_bc
    invoke-virtual {p1}, Lj$/time/format/q;->j()Z

    move-result v3

    if-eqz v3, :cond_c8

    sget-object v3, Lj$/time/format/n;->c:Ljava/util/AbstractMap$SimpleImmutableEntry;

    goto :goto_ca

    :catchall_c5
    move-exception v0

    move-object p1, v0

    goto :goto_11e

    :cond_c8
    sget-object v3, Lj$/time/format/n;->d:Ljava/util/AbstractMap$SimpleImmutableEntry;

    :goto_ca
    if-eqz v3, :cond_d8

    .line 4231
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_f0

    .line 4232
    :cond_d8
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1}, Lj$/time/format/l;->e(Ljava/util/Set;Lj$/time/format/q;)Lj$/time/format/l;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4233
    invoke-virtual {p1}, Lj$/time/format/q;->j()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 4234
    sput-object v3, Lj$/time/format/n;->c:Ljava/util/AbstractMap$SimpleImmutableEntry;

    goto :goto_f0

    .line 4236
    :cond_ee
    sput-object v3, Lj$/time/format/n;->d:Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4239
    :cond_f0
    :goto_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_bc .. :try_end_f1} :catchall_c5

    .line 4241
    :cond_f1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/l;

    .line 4282
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4283
    invoke-virtual {v0, p2, v2}, Lj$/time/format/l;->c(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_112

    const/16 p2, 0x5a

    .line 4285
    invoke-virtual {p1, v1, p2}, Lj$/time/format/q;->a(CC)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 4286
    sget-object p2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {p1, p2}, Lj$/time/format/q;->m(Lj$/time/x;)V

    add-int/lit8 p1, p3, 0x1

    goto :goto_126

    .line 4291
    :cond_112
    invoke-static {p2}, Lj$/time/x;->J(Ljava/lang/String;)Lj$/time/x;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/format/q;->m(Lj$/time/x;)V

    .line 4292
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    goto :goto_126

    .line 4239
    :goto_11e
    :try_start_11e
    monitor-exit p0
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_c5

    throw p1

    .line 4262
    :cond_120
    :goto_120
    sget-object v0, Lj$/time/format/j;->e:Lj$/time/format/j;

    invoke-static {p1, p2, p3, p3, v0}, Lj$/time/format/n;->a(Lj$/time/format/q;Ljava/lang/CharSequence;IILj$/time/format/j;)I

    move-result p1

    :goto_126
    return p1

    .line 4253
    :cond_127
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2612
    :pswitch_12d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_150

    if-ltz p3, :cond_150

    .line 2616
    iget-object v0, p0, Lj$/time/format/n;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/q;->r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_14a

    not-int p1, v3

    goto :goto_14f

    .line 2619
    :cond_14a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    :goto_14f
    return p1

    .line 2614
    :cond_150
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_12d
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lj$/time/format/n;->a:I

    packed-switch v0, :pswitch_data_24

    .line 4342
    const-string v0, "ZoneRegionId()"

    return-object v0

    .line 2624
    :pswitch_8
    const-string v0, "\'\'"

    iget-object v1, p0, Lj$/time/format/n;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
