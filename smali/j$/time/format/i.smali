###### Class j$.time.format.i (j$.time.format.i)
.class Lj$/time/format/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# static fields
.field static final f:[J


# instance fields
.field final a:Ljava/lang/Enum;

.field final b:I

.field final c:I

.field private final d:Lj$/time/format/y;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xb

    .line 2638
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lj$/time/format/i;->f:[J

    return-void

    :array_a
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Lj$/time/temporal/s;IILj$/time/format/y;)V
    .registers 5

    .line 2666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    check-cast p1, Ljava/lang/Enum;

    iput-object p1, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    .line 2669
    iput p2, p0, Lj$/time/format/i;->b:I

    .line 2670
    iput p3, p0, Lj$/time/format/i;->c:I

    .line 2671
    iput-object p4, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    const/4 p1, 0x0

    .line 2672
    iput p1, p0, Lj$/time/format/i;->e:I

    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/s;IILj$/time/format/y;I)V
    .registers 6

    .line 2685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2687
    check-cast p1, Ljava/lang/Enum;

    iput-object p1, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    .line 2688
    iput p2, p0, Lj$/time/format/i;->b:I

    .line 2689
    iput p3, p0, Lj$/time/format/i;->c:I

    .line 2690
    iput-object p4, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    .line 2691
    iput p5, p0, Lj$/time/format/i;->e:I

    return-void
.end method

.method static bridge synthetic a(Lj$/time/format/i;)Lj$/time/format/y;
    .registers 1

    iget-object p0, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    return-object p0
.end method


# virtual methods
.method b(Lj$/time/format/q;)Z
    .registers 3

    const/4 p1, -0x1

    .line 2782
    iget v0, p0, Lj$/time/format/i;->e:I

    if-eq v0, p1, :cond_16

    if-lez v0, :cond_14

    iget p1, p0, Lj$/time/format/i;->b:I

    iget v0, p0, Lj$/time/format/i;->c:I

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    sget-object v0, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method c()Lj$/time/format/i;
    .registers 9

    .line 2700
    iget v0, p0, Lj$/time/format/i;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    .line 2703
    :cond_6
    new-instance v2, Lj$/time/format/i;

    iget-object v3, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    iget v4, p0, Lj$/time/format/i;->b:I

    iget v5, p0, Lj$/time/format/i;->c:I

    iget-object v6, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;I)V

    return-object v2
.end method

.method d(I)Lj$/time/format/i;
    .registers 8

    .line 2713
    new-instance v0, Lj$/time/format/i;

    iget v1, p0, Lj$/time/format/i;->e:I

    add-int v5, v1, p1

    iget-object v1, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    iget v3, p0, Lj$/time/format/i;->c:I

    iget-object v4, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    iget v2, p0, Lj$/time/format/i;->b:I

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;I)V

    return-object v0
.end method

.method public p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 14

    .line 2718
    iget-object v0, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lj$/time/format/s;->e(Lj$/time/temporal/s;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2722
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2723
    invoke-virtual {p1}, Lj$/time/format/s;->b()Lj$/time/format/v;

    move-result-object p1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v3, v5

    if-nez v1, :cond_1b

    .line 2724
    const-string v1, "9223372036854775808"

    goto :goto_23

    :cond_1b
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2725
    :goto_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " cannot be printed as the value "

    const-string v7, "Field "

    iget v8, p0, Lj$/time/format/i;->c:I

    if-gt v5, v8, :cond_aa

    .line 2730
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v8, 0x0

    cmp-long p1, v3, v8

    const/4 v5, 0x1

    .line 2732
    iget v8, p0, Lj$/time/format/i;->b:I

    const/4 v9, 0x2

    iget-object v10, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    if-ltz p1, :cond_61

    .line 2733
    sget-object p1, Lj$/time/format/c;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x2b

    if-eq p1, v5, :cond_51

    if-eq p1, v9, :cond_4d

    goto :goto_96

    .line 2740
    :cond_4d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_96

    :cond_51
    const/16 p1, 0x13

    if-ge v8, p1, :cond_96

    .line 2735
    sget-object p1, Lj$/time/format/i;->f:[J

    aget-wide v6, p1, v8

    cmp-long p1, v3, v6

    if-ltz p1, :cond_96

    .line 2736
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_96

    .line 2744
    :cond_61
    sget-object p1, Lj$/time/format/c;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget p1, p1, v10

    if-eq p1, v5, :cond_91

    if-eq p1, v9, :cond_91

    const/4 v9, 0x3

    if-eq p1, v9, :cond_91

    const/4 v9, 0x4

    if-eq p1, v9, :cond_74

    goto :goto_96

    .line 2751
    :cond_74
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cannot be negative according to the SignStyle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2751
    throw p1

    :cond_91
    const/16 p1, 0x2d

    .line 2748
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2756
    :cond_96
    :goto_96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int p1, v8, p1

    if-ge v2, p1, :cond_a6

    const/16 p1, 0x30

    .line 2757
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 2759
    :cond_a6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v5

    .line 2726
    :cond_aa
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " exceeds the maximum print width of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2726
    throw p1
.end method

.method public r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2788
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_c

    not-int v1, v1

    return v1

    .line 2792
    :cond_c
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2795
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->f()Lj$/time/format/v;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x2b

    iget v7, v0, Lj$/time/format/i;->c:I

    iget-object v8, v0, Lj$/time/format/i;->d:Lj$/time/format/y;

    iget v9, v0, Lj$/time/format/i;->b:I

    const/4 v10, 0x0

    if-ne v3, v6, :cond_46

    .line 2796
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v3

    if-ne v9, v7, :cond_2c

    move v6, v5

    goto :goto_2d

    :cond_2c
    move v6, v10

    .line 126
    :goto_2d
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_3c

    if-eq v11, v5, :cond_3e

    if-eq v11, v4, :cond_3e

    if-nez v3, :cond_44

    if-nez v6, :cond_44

    goto :goto_3e

    :cond_3c
    if-nez v3, :cond_44

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move v3, v5

    move v1, v10

    goto :goto_80

    :cond_44
    not-int v1, v1

    return v1

    .line 2801
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->f()Lj$/time/format/v;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_71

    .line 2802
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v3

    if-ne v9, v7, :cond_59

    move v6, v5

    goto :goto_5a

    :cond_59
    move v6, v10

    .line 126
    :goto_5a
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_6b

    if-eq v11, v5, :cond_6b

    if-eq v11, v4, :cond_6b

    if-nez v3, :cond_69

    if-nez v6, :cond_69

    goto :goto_6b

    :cond_69
    not-int v1, v1

    return v1

    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move v1, v5

    move v3, v10

    goto :goto_80

    .line 2808
    :cond_71
    sget-object v3, Lj$/time/format/y;->ALWAYS:Lj$/time/format/y;

    if-ne v8, v3, :cond_7d

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v3

    if-eqz v3, :cond_7d

    not-int v1, v1

    return v1

    :cond_7d
    move v6, v1

    move v1, v10

    move v3, v1

    .line 2812
    :goto_80
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/i;->b(Lj$/time/format/q;)Z

    move-result v4

    if-eqz v4, :cond_8d

    goto :goto_8f

    :cond_8d
    move v4, v5

    goto :goto_90

    :cond_8f
    :goto_8f
    move v4, v9

    :goto_90
    add-int v11, v6, v4

    if-le v11, v2, :cond_96

    not-int v1, v6

    return v1

    .line 2817
    :cond_96
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v12

    if-nez v12, :cond_a5

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/i;->b(Lj$/time/format/q;)Z

    move-result v12

    if-eqz v12, :cond_a3

    goto :goto_a5

    :cond_a3
    const/16 v7, 0x9

    :cond_a5
    :goto_a5
    iget v12, v0, Lj$/time/format/i;->e:I

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v13, v7

    :goto_ac
    const/4 v7, 0x2

    const/16 v16, 0x0

    if-ge v10, v7, :cond_11c

    add-int/2addr v13, v6

    .line 2822
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v13, v6

    const-wide/16 v17, 0x0

    :goto_b9
    if-ge v13, v7, :cond_101

    add-int/lit8 v19, v13, 0x1

    move/from16 v20, v5

    const-wide/16 v21, 0x0

    move-object/from16 v5, p2

    .line 2824
    invoke-interface {v5, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 2825
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->f()Lj$/time/format/v;

    move-result-object v15

    invoke-virtual {v15, v14}, Lj$/time/format/v;->a(C)I

    move-result v14

    if-gez v14, :cond_d5

    if-ge v13, v11, :cond_107

    not-int v1, v6

    return v1

    :cond_d5
    sub-int v13, v19, v6

    const/16 v15, 0x12

    if-le v13, v15, :cond_f5

    if-nez v16, :cond_e1

    .line 2835
    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    :cond_e1
    move-object/from16 v13, v16

    .line 2837
    sget-object v15, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v16, v13

    goto :goto_fc

    :cond_f5
    const-wide/16 v23, 0xa

    mul-long v17, v17, v23

    int-to-long v13, v14

    add-long v17, v17, v13

    :goto_fc
    move/from16 v13, v19

    move/from16 v5, v20

    goto :goto_b9

    :cond_101
    move/from16 v20, v5

    const-wide/16 v21, 0x0

    move-object/from16 v5, p2

    :cond_107
    if-lez v12, :cond_116

    if-nez v10, :cond_116

    sub-int/2addr v13, v6

    sub-int/2addr v13, v12

    .line 2845
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v20

    goto :goto_ac

    :cond_116
    move v7, v13

    move-wide/from16 v4, v17

    :goto_119
    move-object/from16 v2, v16

    goto :goto_124

    :cond_11c
    move/from16 v20, v5

    const-wide/16 v21, 0x0

    move v7, v6

    move-wide/from16 v4, v21

    goto :goto_119

    :goto_124
    if-eqz v1, :cond_14f

    if-eqz v2, :cond_13f

    .line 2855
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v1

    if-eqz v1, :cond_13a

    add-int/lit8 v6, v6, -0x1

    not-int v1, v6

    return v1

    .line 2858
    :cond_13a
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_167

    :cond_13f
    cmp-long v1, v4, v21

    if-nez v1, :cond_14d

    .line 2860
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v1

    if-eqz v1, :cond_14d

    add-int/lit8 v6, v6, -0x1

    not-int v1, v6

    return v1

    :cond_14d
    neg-long v4, v4

    goto :goto_167

    .line 2865
    :cond_14f
    sget-object v1, Lj$/time/format/y;->EXCEEDS_PAD:Lj$/time/format/y;

    if-ne v8, v1, :cond_167

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->k()Z

    move-result v1

    if-eqz v1, :cond_167

    sub-int v1, v7, v6

    if-eqz v3, :cond_163

    if-gt v1, v9, :cond_167

    add-int/lit8 v6, v6, -0x1

    not-int v1, v6

    return v1

    :cond_163
    if-le v1, v9, :cond_167

    not-int v1, v6

    return v1

    .line 2877
    :cond_167
    :goto_167
    iget-object v3, v0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    if-eqz v2, :cond_186

    .line 2878
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v4, 0x3f

    if-le v1, v4, :cond_17b

    .line 2880
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v7, v7, -0x1

    .line 2883
    :cond_17b
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    move-object/from16 v2, p1

    .line 2898
    invoke-virtual/range {v2 .. v7}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v1

    return v1

    :cond_186
    move-object/from16 v2, p1

    .line 2898
    invoke-virtual/range {v2 .. v7}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 2903
    iget-object v0, p0, Lj$/time/format/i;->a:Ljava/lang/Enum;

    const/4 v1, 0x1

    iget v2, p0, Lj$/time/format/i;->c:I

    const-string v3, ")"

    const-string v4, "Value("

    iget-object v5, p0, Lj$/time/format/i;->d:Lj$/time/format/y;

    iget v6, p0, Lj$/time/format/i;->b:I

    if-ne v6, v1, :cond_27

    const/16 v1, 0x13

    if-ne v2, v1, :cond_27

    sget-object v1, Lj$/time/format/y;->NORMAL:Lj$/time/format/y;

    if-ne v5, v1, :cond_27

    .line 2904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2906
    :cond_27
    const-string v1, ","

    if-ne v6, v2, :cond_45

    sget-object v7, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    if-ne v5, v7, :cond_45

    .line 2907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2909
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
