###### Class j$.time.format.s (j$.time.format.s)
.class final Lj$/time/format/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lj$/time/temporal/n;

.field private b:Lj$/time/format/DateTimeFormatter;

.field private c:I


# direct methods
.method constructor <init>(Lj$/time/temporal/n;Lj$/time/format/DateTimeFormatter;)V
    .registers 12

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p2}, Lj$/time/format/DateTimeFormatter;->b()Lj$/time/chrono/l;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_80

    .line 132
    :cond_b
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/l;

    .line 133
    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/x;

    .line 134
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    move-object v0, v4

    :cond_27
    if-nez v0, :cond_2a

    goto :goto_80

    :cond_2a
    if-eqz v0, :cond_2e

    move-object v3, v0

    goto :goto_2f

    :cond_2e
    move-object v3, v1

    :goto_2f
    if-eqz v0, :cond_7a

    .line 163
    sget-object v5, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v5}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 164
    invoke-interface {v3, p1}, Lj$/time/chrono/l;->t(Lj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object v4

    goto :goto_7a

    .line 167
    :cond_3e
    sget-object v5, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    if-ne v0, v5, :cond_44

    if-eqz v1, :cond_7a

    .line 168
    :cond_44
    invoke-static {}, Lj$/time/temporal/a;->values()[Lj$/time/temporal/a;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_4a
    if-ge v6, v5, :cond_7a

    aget-object v7, v1, v6

    .line 169
    invoke-virtual {v7}, Lj$/time/temporal/a;->T()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {p1, v7}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_77

    .line 170
    :cond_5b
    new-instance p2, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to apply override chronology \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p2

    :cond_77
    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 185
    :cond_7a
    :goto_7a
    new-instance v0, Lj$/time/format/r;

    invoke-direct {v0, v4, p1, v3, v2}, Lj$/time/format/r;-><init>(Lj$/time/chrono/b;Lj$/time/temporal/n;Lj$/time/chrono/l;Lj$/time/x;)V

    move-object p1, v0

    .line 119
    :goto_80
    iput-object p1, p0, Lj$/time/format/s;->a:Lj$/time/temporal/n;

    .line 120
    iput-object p2, p0, Lj$/time/format/s;->b:Lj$/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    .line 276
    iget v0, p0, Lj$/time/format/s;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/time/format/s;->c:I

    return-void
.end method

.method final b()Lj$/time/format/v;
    .registers 2

    .line 261
    iget-object v0, p0, Lj$/time/format/s;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->c()Lj$/time/format/v;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/util/Locale;
    .registers 2

    .line 250
    iget-object v0, p0, Lj$/time/format/s;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->d()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method final d()Lj$/time/temporal/n;
    .registers 2

    .line 238
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/temporal/n;

    return-object v0
.end method

.method final e(Lj$/time/temporal/s;)Ljava/lang/Long;
    .registers 4

    .line 305
    iget v0, p0, Lj$/time/format/s;->c:I

    iget-object v1, p0, Lj$/time/format/s;->a:Lj$/time/temporal/n;

    if-lez v0, :cond_e

    invoke-interface {v1, p1}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_e
    invoke-interface {v1, p1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method final f(Lj$/time/format/a;)Ljava/lang/Object;
    .registers 6

    .line 287
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/temporal/n;

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 288
    iget v2, p0, Lj$/time/format/s;->c:I

    if-eqz v2, :cond_d

    goto :goto_29

    .line 289
    :cond_d
    new-instance v1, Lj$/time/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to extract "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from temporal "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 289
    throw v1

    :cond_29
    :goto_29
    return-object v1
.end method

.method final g()V
    .registers 2

    .line 269
    iget v0, p0, Lj$/time/format/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/time/format/s;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/temporal/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
