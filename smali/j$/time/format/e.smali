###### Class j$.time.format.e (j$.time.format.e)
.class final Lj$/time/format/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:[Lj$/time/format/f;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 4

    .line 2328
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lj$/time/format/f;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/format/f;

    invoke-direct {p0, p1, p2}, Lj$/time/format/e;-><init>([Lj$/time/format/f;Z)V

    return-void
.end method

.method constructor <init>([Lj$/time/format/f;Z)V
    .registers 3

    .line 2331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2332
    iput-object p1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    .line 2333
    iput-boolean p2, p0, Lj$/time/format/e;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lj$/time/format/e;
    .registers 4

    .line 2343
    iget-boolean v0, p0, Lj$/time/format/e;->b:Z

    if-nez v0, :cond_5

    return-object p0

    .line 2346
    :cond_5
    new-instance v0, Lj$/time/format/e;

    iget-object v1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/e;-><init>([Lj$/time/format/f;Z)V

    return-object v0
.end method

.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 10

    .line 2351
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2352
    iget-boolean v1, p0, Lj$/time/format/e;->b:Z

    if-eqz v1, :cond_b

    .line 2353
    invoke-virtual {p1}, Lj$/time/format/s;->g()V

    .line 2356
    :cond_b
    :try_start_b
    iget-object v2, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x1

    if-ge v4, v3, :cond_28

    aget-object v6, v2, v4

    .line 2357
    invoke-interface {v6, p1, p2}, Lj$/time/format/f;->p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 2358
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_23

    if-eqz v1, :cond_2d

    .line 2364
    invoke-virtual {p1}, Lj$/time/format/s;->a()V

    return v5

    :catchall_23
    move-exception p2

    goto :goto_2e

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_28
    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Lj$/time/format/s;->a()V

    :cond_2d
    return v5

    :goto_2e
    if-eqz v1, :cond_33

    invoke-virtual {p1}, Lj$/time/format/s;->a()V

    .line 2366
    :cond_33
    throw p2
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 10

    .line 2372
    iget-boolean v0, p0, Lj$/time/format/e;->b:Z

    iget-object v1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 2373
    invoke-virtual {p1}, Lj$/time/format/q;->q()V

    .line 2375
    array-length v0, v1

    move v4, p3

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_1e

    aget-object v5, v1, v3

    .line 2376
    invoke-interface {v5, p1, p2, v4}, Lj$/time/format/f;->r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I

    move-result v4

    if-gez v4, :cond_1b

    .line 2378
    invoke-virtual {p1, v2}, Lj$/time/format/q;->e(Z)V

    return p3

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    const/4 p2, 0x1

    .line 2382
    invoke-virtual {p1, p2}, Lj$/time/format/q;->e(Z)V

    return v4

    .line 2385
    :cond_23
    array-length v0, v1

    :goto_24
    if-ge v2, v0, :cond_32

    aget-object v3, v1, v2

    .line 2386
    invoke-interface {v3, p1, p2, p3}, Lj$/time/format/f;->r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I

    move-result p3

    if-gez p3, :cond_2f

    return p3

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_32
    return p3
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2398
    iget-object v1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    if-eqz v1, :cond_2b

    .line 2399
    iget-boolean v2, p0, Lj$/time/format/e;->b:Z

    if-eqz v2, :cond_10

    const-string v3, "["

    goto :goto_12

    :cond_10
    const-string v3, "("

    :goto_12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    array-length v3, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_21

    aget-object v5, v1, v4

    .line 2401
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    if-eqz v2, :cond_26

    .line 2403
    const-string v1, "]"

    goto :goto_28

    :cond_26
    const-string v1, ")"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
