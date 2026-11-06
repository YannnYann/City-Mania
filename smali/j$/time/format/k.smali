###### Class j$.time.format.k (j$.time.format.k)
.class final Lj$/time/format/k;
.super Lj$/time/format/l;
.source "SourceFile"


# virtual methods
.method protected final b(CC)Z
    .registers 3

    .line 4584
    invoke-static {p1, p2}, Lj$/time/format/q;->b(CC)Z

    move-result p1

    return p1
.end method

.method protected final d(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/l;)Lj$/time/format/l;
    .registers 6

    .line 4579
    new-instance v0, Lj$/time/format/k;

    const/4 v1, 0x0

    .line 4574
    invoke-direct {v0, p1, p2, p3, v1}, Lj$/time/format/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/l;I)V

    return-object v0
.end method

.method protected final f(Ljava/lang/CharSequence;II)Z
    .registers 8

    .line 4589
    iget-object v0, p0, Lj$/time/format/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, p2

    const/4 v1, 0x0

    if-le v0, p3, :cond_b

    return v1

    :cond_b
    move p3, v1

    :goto_c
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_29

    .line 4595
    iget-object v0, p0, Lj$/time/format/l;->a:Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 4584
    invoke-static {p3, p2}, Lj$/time/format/q;->b(CC)Z

    move-result p2

    if-nez p2, :cond_25

    return v1

    :cond_25
    move p2, v0

    move v0, v2

    move p3, v3

    goto :goto_c

    :cond_29
    const/4 p1, 0x1

    return p1
.end method
