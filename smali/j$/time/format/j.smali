###### Class j$.time.format.j (j$.time.format.j)
.class final Lj$/time/format/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# static fields
.field static final d:[Ljava/lang/String;

.field static final e:Lj$/time/format/j;

.field static final f:Lj$/time/format/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 3538
    const-string v21, "+Hmmss"

    const-string v22, "+H:mm:ss"

    const-string v1, "+HH"

    const-string v2, "+HHmm"

    const-string v3, "+HH:mm"

    const-string v4, "+HHMM"

    const-string v5, "+HH:MM"

    const-string v6, "+HHMMss"

    const-string v7, "+HH:MM:ss"

    const-string v8, "+HHMMSS"

    const-string v9, "+HH:MM:SS"

    const-string v10, "+HHmmss"

    const-string v11, "+HH:mm:ss"

    const-string v12, "+H"

    const-string v13, "+Hmm"

    const-string v14, "+H:mm"

    const-string v15, "+HMM"

    const-string v16, "+H:MM"

    const-string v17, "+HMMss"

    const-string v18, "+H:MM:ss"

    const-string v19, "+HMMSS"

    const-string v20, "+H:MM:SS"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/time/format/j;->d:[Ljava/lang/String;

    .line 3542
    new-instance v0, Lj$/time/format/j;

    const-string v1, "Z"

    const-string v2, "+HH:MM:ss"

    invoke-direct {v0, v2, v1}, Lj$/time/format/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/format/j;->e:Lj$/time/format/j;

    .line 3543
    new-instance v0, Lj$/time/format/j;

    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Lj$/time/format/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/format/j;->f:Lj$/time/format/j;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 3555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3564
    :goto_4
    sget-object v1, Lj$/time/format/j;->d:[Ljava/lang/String;

    const/16 v2, 0x16

    if-ge v0, v2, :cond_1e

    .line 3565
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3558
    iput v0, p0, Lj$/time/format/j;->b:I

    .line 3559
    rem-int/lit8 v0, v0, 0xb

    iput v0, p0, Lj$/time/format/j;->c:I

    .line 3560
    iput-object p2, p0, Lj$/time/format/j;->a:Ljava/lang/String;

    return-void

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3569
    :cond_1e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid zone offset pattern: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(ZILjava/lang/StringBuilder;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 3618
    const-string p0, ":"

    goto :goto_7

    :cond_5
    const-string p0, ""

    :goto_7
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 p0, p1, 0xa

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    .line 3619
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p0, p1

    .line 3620
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static b(Ljava/lang/CharSequence;ZI[I)Z
    .registers 9

    const/4 v0, 0x0

    .line 3772
    aget v1, p3, v0

    const/4 v2, 0x1

    if-gez v1, :cond_7

    return v2

    :cond_7
    if-eqz p1, :cond_1d

    if-eq p2, v2, :cond_1d

    add-int/lit8 p1, v1, 0x1

    .line 3777
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p1, v3, :cond_4e

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1c

    goto :goto_4e

    :cond_1c
    move v1, p1

    :cond_1d
    add-int/lit8 p1, v1, 0x2

    .line 3782
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le p1, v3, :cond_26

    goto :goto_4e

    :cond_26
    add-int/lit8 v3, v1, 0x1

    .line 3785
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3786
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v3, 0x30

    if-lt v1, v3, :cond_4e

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4e

    if-lt p0, v3, :cond_4e

    if-le p0, v4, :cond_3d

    goto :goto_4e

    :cond_3d
    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr p0, v3

    add-int/2addr p0, v1

    if-ltz p0, :cond_4e

    const/16 v1, 0x3b

    if-le p0, v1, :cond_49

    goto :goto_4e

    .line 3794
    :cond_49
    aput p0, p3, p2

    .line 3795
    aput p1, p3, v0

    return v2

    :cond_4e
    :goto_4e
    return v0
.end method

.method private static c(Ljava/lang/CharSequence;Z[I)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 3740
    invoke-static {p0, p1, v0, p2}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    move-result p0

    if-nez p0, :cond_f

    .line 3741
    aget p0, p2, p1

    not-int p0, p0

    aput p0, p2, p1

    :cond_f
    return-void

    :cond_10
    const/4 p1, 0x2

    .line 3745
    invoke-static {p0, v0, p1, p2}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    return-void
.end method

.method private static d(Ljava/lang/CharSequence;ZZ[I)V
    .registers 5

    const/4 v0, 0x2

    .line 3750
    invoke-static {p0, p1, v0, p3}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    move-result p0

    if-nez p0, :cond_f

    if-eqz p2, :cond_f

    const/4 p0, 0x0

    .line 3752
    aget p1, p3, p0

    not-int p1, p1

    aput p1, p3, p0

    :cond_f
    return-void
.end method

.method private static e(Ljava/lang/CharSequence;II[I)V
    .registers 13

    const/4 v0, 0x0

    .line 3803
    aget v1, p3, v0

    .line 3805
    new-array v2, p2, [C

    move v3, v0

    move v4, v3

    :goto_7
    const/16 v5, 0x30

    if-ge v3, p2, :cond_27

    add-int/lit8 v6, v1, 0x1

    .line 3807
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_14

    goto :goto_27

    .line 3810
    :cond_14
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_27

    const/16 v8, 0x39

    if-le v7, v8, :cond_1f

    goto :goto_27

    .line 3815
    :cond_1f
    aput-char v7, v2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_7

    :cond_27
    :goto_27
    if-ge v4, p1, :cond_2f

    .line 3819
    aget p0, p3, v0

    not-int p0, p0

    aput p0, p3, v0

    return-void

    :cond_2f
    const/4 p0, 0x1

    const/4 p1, 0x4

    const/4 p2, 0x3

    const/4 v3, 0x2

    packed-switch v4, :pswitch_data_b4

    goto/16 :goto_b0

    .line 3843
    :pswitch_38
    aget-char v4, v2, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v2, p0

    sub-int/2addr v6, v5

    add-int/2addr v6, v4

    aput v6, p3, p0

    .line 3844
    aget-char p0, v2, v3

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    aget-char v4, v2, p2

    sub-int/2addr v4, v5

    add-int/2addr v4, p0

    aput v4, p3, v3

    .line 3845
    aget-char p0, v2, p1

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    const/4 p1, 0x5

    aget-char p1, v2, p1

    sub-int/2addr p1, v5

    add-int/2addr p1, p0

    aput p1, p3, p2

    goto :goto_b0

    .line 3838
    :pswitch_5b
    aget-char v4, v2, v0

    sub-int/2addr v4, v5

    aput v4, p3, p0

    .line 3839
    aget-char p0, v2, p0

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    aget-char v4, v2, v3

    sub-int/2addr v4, v5

    add-int/2addr v4, p0

    aput v4, p3, v3

    .line 3840
    aget-char p0, v2, p2

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    aget-char p1, v2, p1

    sub-int/2addr p1, v5

    add-int/2addr p1, p0

    aput p1, p3, p2

    goto :goto_b0

    .line 3834
    :pswitch_77
    aget-char p1, v2, v0

    sub-int/2addr p1, v5

    mul-int/lit8 p1, p1, 0xa

    aget-char v4, v2, p0

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    aput v4, p3, p0

    .line 3835
    aget-char p0, v2, v3

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    aget-char p1, v2, p2

    sub-int/2addr p1, v5

    add-int/2addr p1, p0

    aput p1, p3, v3

    goto :goto_b0

    .line 3830
    :pswitch_8e
    aget-char p1, v2, v0

    sub-int/2addr p1, v5

    aput p1, p3, p0

    .line 3831
    aget-char p0, v2, p0

    sub-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0xa

    aget-char p1, v2, v3

    sub-int/2addr p1, v5

    add-int/2addr p1, p0

    aput p1, p3, v3

    goto :goto_b0

    .line 3827
    :pswitch_9f
    aget-char p1, v2, v0

    sub-int/2addr p1, v5

    mul-int/lit8 p1, p1, 0xa

    aget-char p2, v2, p0

    sub-int/2addr p2, v5

    add-int/2addr p2, p1

    aput p2, p3, p0

    goto :goto_b0

    .line 3824
    :pswitch_ab
    aget-char p1, v2, v0

    sub-int/2addr p1, v5

    aput p1, p3, p0

    .line 3848
    :goto_b0
    aput v1, p3, v0

    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_9f
        :pswitch_8e
        :pswitch_77
        :pswitch_5b
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 12

    .line 3582
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {p1, v0}, Lj$/time/format/s;->e(Lj$/time/temporal/s;)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 3586
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    const/4 v1, 0x1

    .line 3587
    iget-object v2, p0, Lj$/time/format/j;->a:Ljava/lang/String;

    if-nez p1, :cond_1b

    .line 3588
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    .line 3590
    :cond_1b
    div-int/lit16 v3, p1, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3591
    div-int/lit8 v4, p1, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3592
    rem-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3593
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gez p1, :cond_3a

    .line 3595
    const-string p1, "-"

    goto :goto_3c

    :cond_3a
    const-string p1, "+"

    :goto_3c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    iget p1, p0, Lj$/time/format/j;->b:I

    const/16 v7, 0xb

    if-ge p1, v7, :cond_46

    goto :goto_4a

    :cond_46
    const/16 p1, 0xa

    if-lt v3, p1, :cond_4e

    .line 3597
    :goto_4a
    invoke-static {v0, v3, p2}, Lj$/time/format/j;->a(ZILjava/lang/StringBuilder;)V

    goto :goto_54

    :cond_4e
    add-int/lit8 p1, v3, 0x30

    int-to-char p1, p1

    .line 3599
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3601
    :goto_54
    iget p1, p0, Lj$/time/format/j;->c:I

    const/4 v7, 0x3

    const/16 v8, 0x8

    if-lt p1, v7, :cond_5d

    if-le p1, v8, :cond_67

    :cond_5d
    const/16 v7, 0x9

    if-lt p1, v7, :cond_63

    if-gtz v5, :cond_67

    :cond_63
    if-lt p1, v1, :cond_89

    if-lez v4, :cond_89

    :cond_67
    if-lez p1, :cond_6f

    .line 3577
    rem-int/lit8 v7, p1, 0x2

    if-nez v7, :cond_6f

    move v7, v1

    goto :goto_70

    :cond_6f
    move v7, v0

    .line 3602
    :goto_70
    invoke-static {v7, v4, p2}, Lj$/time/format/j;->a(ZILjava/lang/StringBuilder;)V

    add-int/2addr v3, v4

    const/4 v4, 0x7

    if-eq p1, v4, :cond_7e

    if-eq p1, v8, :cond_7e

    const/4 v4, 0x5

    if-lt p1, v4, :cond_89

    if-lez v5, :cond_89

    :cond_7e
    if-lez p1, :cond_85

    .line 3577
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_85

    move v0, v1

    .line 3605
    :cond_85
    invoke-static {v0, v5, p2}, Lj$/time/format/j;->a(ZILjava/lang/StringBuilder;)V

    add-int/2addr v3, v5

    :cond_89
    if-nez v3, :cond_91

    .line 3610
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3611
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    return v1
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 18

    move/from16 v4, p3

    .line 3625
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 3626
    iget-object v0, p0, Lj$/time/format/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1f

    if-ne v4, v6, :cond_1c

    .line 3629
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const-wide/16 v2, 0x0

    move/from16 v5, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result p1

    return p1

    :cond_1c
    move-object/from16 v1, p2

    goto :goto_3f

    :cond_1f
    if-ne v4, v6, :cond_23

    not-int p1, v4

    return p1

    .line 3635
    :cond_23
    iget-object v3, p0, Lj$/time/format/j;->a:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3636
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const-wide/16 v2, 0x0

    add-int v5, p3, v5

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result p1

    return p1

    .line 3641
    :cond_3f
    :goto_3f
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    if-eq v0, v2, :cond_4b

    if-ne v0, v3, :cond_133

    :cond_4b
    const/4 v2, 0x1

    if-ne v0, v3, :cond_50

    const/4 v0, -0x1

    goto :goto_51

    :cond_50
    move v0, v2

    :goto_51
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 3577
    iget v7, p0, Lj$/time/format/j;->c:I

    if-lez v7, :cond_5c

    rem-int/2addr v7, v3

    if-nez v7, :cond_5c

    move v7, v2

    goto :goto_5d

    :cond_5c
    move v7, v4

    :goto_5d
    const/16 v8, 0xb

    .line 3573
    iget v9, p0, Lj$/time/format/j;->b:I

    if-ge v9, v8, :cond_65

    move v10, v2

    goto :goto_66

    :cond_65
    move v10, v4

    :goto_66
    const/4 v11, 0x4

    .line 3647
    new-array v12, v11, [I

    add-int/lit8 v13, p3, 0x1

    .line 3648
    aput v13, v12, v4

    .line 3651
    invoke-virtual {p1}, Lj$/time/format/q;->k()Z

    move-result v13

    if-nez v13, :cond_aa

    const/16 v13, 0x3a

    if-eqz v10, :cond_8d

    if-nez v7, :cond_89

    if-nez v9, :cond_86

    add-int/lit8 v8, p3, 0x3

    if-le v6, v8, :cond_86

    .line 3653
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v13, :cond_86

    goto :goto_89

    :cond_86
    const/16 v9, 0x9

    goto :goto_aa

    :cond_89
    :goto_89
    const/16 v9, 0xa

    :goto_8b
    move v7, v2

    goto :goto_aa

    :cond_8d
    if-nez v7, :cond_a7

    if-ne v9, v8, :cond_a4

    add-int/lit8 v8, p3, 0x3

    if-le v6, v8, :cond_a4

    add-int/lit8 v6, p3, 0x2

    .line 3660
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v13, :cond_a7

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v13, :cond_a4

    goto :goto_a7

    :cond_a4
    const/16 v9, 0x14

    goto :goto_aa

    :cond_a7
    :goto_a7
    const/16 v9, 0x15

    goto :goto_8b

    :cond_aa
    :goto_aa
    const/4 v6, 0x3

    const/4 v8, 0x6

    packed-switch v9, :pswitch_data_148

    goto :goto_ff

    .line 3719
    :pswitch_b0
    invoke-static {v1, v2, v8, v12}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    goto :goto_ff

    :pswitch_b4
    const/4 v7, 0x5

    .line 3716
    invoke-static {v1, v7, v8, v12}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    goto :goto_ff

    .line 3713
    :pswitch_b9
    invoke-static {v1, v6, v8, v12}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    goto :goto_ff

    .line 3710
    :pswitch_bd
    invoke-static {v1, v6, v11, v12}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    goto :goto_ff

    .line 3707
    :pswitch_c1
    invoke-static {v1, v2, v11, v12}, Lj$/time/format/j;->e(Ljava/lang/CharSequence;II[I)V

    goto :goto_ff

    .line 3703
    :pswitch_c5
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3766
    invoke-static {v1, v7, v3, v12}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 3767
    invoke-static {v1, v7, v6, v12}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    goto :goto_ff

    .line 3696
    :pswitch_d2
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3697
    invoke-static {v1, v7, v2, v12}, Lj$/time/format/j;->d(Ljava/lang/CharSequence;ZZ[I)V

    .line 3758
    invoke-static {v1, v7, v6, v12}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    move-result v1

    if-nez v1, :cond_ff

    .line 3760
    aget v1, v12, v4

    not-int v1, v1

    aput v1, v12, v4

    goto :goto_ff

    .line 3689
    :pswitch_e4
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3690
    invoke-static {v1, v7, v2, v12}, Lj$/time/format/j;->d(Ljava/lang/CharSequence;ZZ[I)V

    .line 3758
    invoke-static {v1, v7, v6, v12}, Lj$/time/format/j;->b(Ljava/lang/CharSequence;ZI[I)Z

    goto :goto_ff

    .line 3683
    :pswitch_ee
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3684
    invoke-static {v1, v7, v2, v12}, Lj$/time/format/j;->d(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_ff

    .line 3677
    :pswitch_f5
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3678
    invoke-static {v1, v7, v4, v12}, Lj$/time/format/j;->d(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_ff

    .line 3672
    :pswitch_fc
    invoke-static {v1, v10, v12}, Lj$/time/format/j;->c(Ljava/lang/CharSequence;Z[I)V

    .line 3722
    :cond_ff
    :goto_ff
    aget v1, v12, v4

    if-lez v1, :cond_133

    .line 3723
    aget v2, v12, v2

    const/16 v4, 0x17

    if-gt v2, v4, :cond_12b

    aget v3, v12, v3

    const/16 v4, 0x3b

    if-gt v3, v4, :cond_12b

    aget v5, v12, v6

    if-gt v5, v4, :cond_12b

    int-to-long v6, v0

    int-to-long v8, v2

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    int-to-long v2, v3

    const-wide/16 v10, 0x3c

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v5

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    move v5, v1

    .line 3727
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result p1

    return p1

    .line 3724
    :cond_12b
    new-instance p1, Lj$/time/c;

    .line 88
    const-string v0, "Value out of range: Hour[0-23], Minute[0-59], Second[0-59]"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3724
    throw p1

    :cond_133
    if-nez v5, :cond_143

    .line 3732
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const-wide/16 v2, 0x0

    move/from16 v5, p3

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result p1

    return p1

    :cond_143
    move/from16 v4, p3

    not-int p1, v4

    return p1

    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f5
        :pswitch_f5
        :pswitch_ee
        :pswitch_ee
        :pswitch_e4
        :pswitch_e4
        :pswitch_d2
        :pswitch_d2
        :pswitch_c5
        :pswitch_c5
        :pswitch_fc
        :pswitch_c1
        :pswitch_f5
        :pswitch_bd
        :pswitch_ee
        :pswitch_b9
        :pswitch_e4
        :pswitch_b4
        :pswitch_d2
        :pswitch_b0
        :pswitch_c5
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 3853
    const-string v0, "\'"

    const-string v1, "\'\'"

    iget-object v2, p0, Lj$/time/format/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3854
    sget-object v1, Lj$/time/format/j;->d:[Ljava/lang/String;

    iget v2, p0, Lj$/time/format/j;->b:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offset("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
