###### Class j$.time.format.d (j$.time.format.d)
.class final Lj$/time/format/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    .line 2557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2558
    iput-char p1, p0, Lj$/time/format/d;->a:C

    return-void
.end method


# virtual methods
.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 3

    .line 2563
    iget-char p1, p0, Lj$/time/format/d;->a:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 6

    .line 2569
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_8

    not-int p1, p3

    return p1

    .line 2573
    :cond_8
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 2574
    iget-char v0, p0, Lj$/time/format/d;->a:C

    if-eq p2, v0, :cond_2c

    .line 2575
    invoke-virtual {p1}, Lj$/time/format/q;->j()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 2576
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq p1, v1, :cond_2c

    .line 2577
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_2c

    :cond_2a
    not-int p1, p3

    return p1

    :cond_2c
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x27

    .line 2586
    iget-char v1, p0, Lj$/time/format/d;->a:C

    if-ne v1, v0, :cond_9

    .line 2587
    const-string v0, "\'\'"

    return-object v0

    .line 2589
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
