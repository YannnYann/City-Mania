###### Class j$.time.format.q (j$.time.format.q)
.class final Lj$/time/format/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lj$/time/format/DateTimeFormatter;

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lj$/time/format/DateTimeFormatter;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lj$/time/format/q;->b:Z

    .line 105
    iput-boolean v0, p0, Lj$/time/format/q;->c:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/q;->d:Ljava/util/ArrayList;

    .line 122
    iput-object p1, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    .line 123
    new-instance p1, Lj$/time/format/w;

    invoke-direct {p1}, Lj$/time/format/w;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static b(CC)Z
    .registers 4

    if-eq p0, p1, :cond_19

    .line 257
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_19

    .line 258
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private d()Lj$/time/format/w;
    .registers 3

    .line 310
    iget-object v0, p0, Lj$/time/format/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/w;

    return-object v0
.end method


# virtual methods
.method final a(CC)Z
    .registers 4

    .line 184
    iget-boolean v0, p0, Lj$/time/format/q;->b:Z

    if-eqz v0, :cond_a

    if-ne p1, p2, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1

    .line 245
    :cond_a
    invoke-static {p1, p2}, Lj$/time/format/q;->b(CC)Z

    move-result p1

    return p1
.end method

.method final c()Lj$/time/format/q;
    .registers 3

    .line 131
    new-instance v0, Lj$/time/format/q;

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Lj$/time/format/q;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 132
    iget-boolean v1, p0, Lj$/time/format/q;->b:Z

    iput-boolean v1, v0, Lj$/time/format/q;->b:Z

    .line 133
    iget-boolean v1, p0, Lj$/time/format/q;->c:Z

    iput-boolean v1, v0, Lj$/time/format/q;->c:Z

    return-object v0
.end method

.method final e(Z)V
    .registers 3

    .line 296
    iget-object v0, p0, Lj$/time/format/q;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_e

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 299
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final f()Lj$/time/format/v;
    .registers 2

    .line 158
    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->c()Lj$/time/format/v;

    move-result-object v0

    return-object v0
.end method

.method final g()Lj$/time/chrono/l;
    .registers 2

    .line 167
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    if-nez v0, :cond_12

    .line 169
    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->b()Lj$/time/chrono/l;

    move-result-object v0

    if-nez v0, :cond_12

    .line 171
    sget-object v0, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    :cond_12
    return-object v0
.end method

.method final h()Ljava/util/Locale;
    .registers 2

    .line 147
    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->d()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method final i(Lj$/time/temporal/a;)Ljava/lang/Long;
    .registers 3

    .line 348
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method final j()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lj$/time/format/q;->b:Z

    return v0
.end method

.method final k()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Lj$/time/format/q;->c:Z

    return v0
.end method

.method final l(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lj$/time/format/q;->b:Z

    return-void
.end method

.method final m(Lj$/time/x;)V
    .registers 3

    .line 416
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    iput-object p1, v0, Lj$/time/format/w;->b:Lj$/time/x;

    return-void
.end method

.method final n(Lj$/time/temporal/s;JII)I
    .registers 8

    .line 364
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_21

    .line 366
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_21

    not-int p1, p4

    return p1

    :cond_21
    return p5
.end method

.method final o()V
    .registers 3

    .line 424
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/time/format/w;->d:Z

    return-void
.end method

.method final p(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lj$/time/format/q;->c:Z

    return-void
.end method

.method final q()V
    .registers 6

    .line 287
    iget-object v0, p0, Lj$/time/format/q;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    new-instance v2, Lj$/time/format/w;

    invoke-direct {v2}, Lj$/time/format/w;-><init>()V

    .line 171
    iget-object v3, v2, Lj$/time/format/w;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lj$/time/format/w;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 172
    iget-object v3, v1, Lj$/time/format/w;->b:Lj$/time/x;

    iput-object v3, v2, Lj$/time/format/w;->b:Lj$/time/x;

    .line 173
    iget-object v3, v1, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    iput-object v3, v2, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    .line 174
    iget-boolean v1, v1, Lj$/time/format/w;->d:Z

    iput-boolean v1, v2, Lj$/time/format/w;->d:Z

    .line 287
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 12

    add-int v0, p2, p5

    .line 209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_56

    add-int v0, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_12

    goto :goto_56

    .line 184
    :cond_12
    iget-boolean v0, p0, Lj$/time/format/q;->b:Z

    if-eqz v0, :cond_2b

    move v0, v2

    :goto_17
    if-ge v0, p5, :cond_54

    add-int v1, p2, v0

    .line 214
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    .line 215
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_28

    goto :goto_56

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    move v0, v2

    :goto_2c
    if-ge v0, p5, :cond_54

    add-int v1, p2, v0

    .line 222
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    .line 223
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_51

    .line 224
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_51

    .line 225
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v1, v3, :cond_51

    goto :goto_56

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_54
    const/4 p1, 0x1

    return p1

    :cond_56
    :goto_56
    return v2
.end method

.method final s(Lj$/time/format/x;)Lj$/time/temporal/n;
    .registers 4

    .line 328
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lj$/time/format/q;->g()Lj$/time/chrono/l;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/w;->c:Lj$/time/chrono/l;

    .line 330
    iget-object v1, v0, Lj$/time/format/w;->b:Lj$/time/x;

    if-eqz v1, :cond_f

    goto :goto_15

    :cond_f
    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_15
    iput-object v1, v0, Lj$/time/format/w;->b:Lj$/time/x;

    .line 331
    invoke-virtual {v0, p1}, Lj$/time/format/w;->r(Lj$/time/format/x;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 435
    invoke-direct {p0}, Lj$/time/format/q;->d()Lj$/time/format/w;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/w;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
