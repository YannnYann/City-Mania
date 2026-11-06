###### Class j$.time.m (j$.time.m)
.class public final enum Lj$/time/m;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Lj$/time/temporal/o;


# static fields
.field public static final enum APRIL:Lj$/time/m;

.field public static final enum AUGUST:Lj$/time/m;

.field public static final enum DECEMBER:Lj$/time/m;

.field public static final enum FEBRUARY:Lj$/time/m;

.field public static final enum JANUARY:Lj$/time/m;

.field public static final enum JULY:Lj$/time/m;

.field public static final enum JUNE:Lj$/time/m;

.field public static final enum MARCH:Lj$/time/m;

.field public static final enum MAY:Lj$/time/m;

.field public static final enum NOVEMBER:Lj$/time/m;

.field public static final enum OCTOBER:Lj$/time/m;

.field public static final enum SEPTEMBER:Lj$/time/m;

.field private static final a:[Lj$/time/m;

.field private static final synthetic b:[Lj$/time/m;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 112
    new-instance v0, Lj$/time/m;

    .line 106
    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v0, Lj$/time/m;->JANUARY:Lj$/time/m;

    .line 117
    new-instance v1, Lj$/time/m;

    .line 106
    const-string v2, "FEBRUARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v1, Lj$/time/m;->FEBRUARY:Lj$/time/m;

    .line 122
    new-instance v2, Lj$/time/m;

    .line 106
    const-string v3, "MARCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v2, Lj$/time/m;->MARCH:Lj$/time/m;

    .line 127
    new-instance v3, Lj$/time/m;

    .line 106
    const-string v4, "APRIL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v3, Lj$/time/m;->APRIL:Lj$/time/m;

    .line 132
    new-instance v4, Lj$/time/m;

    .line 106
    const-string v5, "MAY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    sput-object v4, Lj$/time/m;->MAY:Lj$/time/m;

    .line 137
    new-instance v5, Lj$/time/m;

    .line 106
    const-string v6, "JUNE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v5, Lj$/time/m;->JUNE:Lj$/time/m;

    .line 142
    new-instance v6, Lj$/time/m;

    .line 106
    const-string v7, "JULY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    sput-object v6, Lj$/time/m;->JULY:Lj$/time/m;

    .line 147
    new-instance v7, Lj$/time/m;

    .line 106
    const-string v8, "AUGUST"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    sput-object v7, Lj$/time/m;->AUGUST:Lj$/time/m;

    .line 152
    new-instance v8, Lj$/time/m;

    .line 106
    const-string v9, "SEPTEMBER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    sput-object v8, Lj$/time/m;->SEPTEMBER:Lj$/time/m;

    .line 157
    new-instance v9, Lj$/time/m;

    .line 106
    const-string v10, "OCTOBER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v9, Lj$/time/m;->OCTOBER:Lj$/time/m;

    .line 162
    new-instance v10, Lj$/time/m;

    .line 106
    const-string v11, "NOVEMBER"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    sput-object v10, Lj$/time/m;->NOVEMBER:Lj$/time/m;

    .line 167
    new-instance v11, Lj$/time/m;

    .line 106
    const-string v12, "DECEMBER"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    sput-object v11, Lj$/time/m;->DECEMBER:Lj$/time/m;

    .line 106
    filled-new-array/range {v0 .. v11}, [Lj$/time/m;

    move-result-object v0

    sput-object v0, Lj$/time/m;->b:[Lj$/time/m;

    .line 171
    invoke-static {}, Lj$/time/m;->values()[Lj$/time/m;

    move-result-object v0

    sput-object v0, Lj$/time/m;->a:[Lj$/time/m;

    return-void
.end method

.method public static S(I)Lj$/time/m;
    .registers 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    const/16 v1, 0xc

    if-gt p0, v1, :cond_d

    .line 189
    sget-object v1, Lj$/time/m;->a:[Lj$/time/m;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 187
    :cond_d
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 187
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/m;
    .registers 2

    .line 106
    const-class v0, Lj$/time/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/m;

    return-object p0
.end method

.method public static values()[Lj$/time/m;
    .registers 1

    .line 106
    sget-object v0, Lj$/time/m;->b:[Lj$/time/m;

    invoke-virtual {v0}, [Lj$/time/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/m;

    return-object v0
.end method


# virtual methods
.method public final C(Z)I
    .registers 4

    .line 426
    sget-object v0, Lj$/time/l;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1a

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1a

    const/16 p1, 0x1f

    return p1

    :cond_1a
    const/16 p1, 0x1e

    return p1

    :cond_1d
    if-eqz p1, :cond_22

    const/16 p1, 0x1d

    return p1

    :cond_22
    const/16 p1, 0x1c

    return p1
.end method

.method public final J()I
    .registers 3

    .line 472
    sget-object v0, Lj$/time/l;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    const/16 v0, 0x1f

    return v0

    :cond_1a
    const/16 v0, 0x1e

    return v0

    :cond_1d
    const/16 v0, 0x1d

    return v0
.end method

.method public final T()Lj$/time/m;
    .registers 3

    const-wide/16 v0, 0x1

    long-to-int v0, v0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0xc

    sget-object v1, Lj$/time/m;->a:[Lj$/time/m;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 564
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 565
    sget-object p1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    return-object p1

    .line 566
    :cond_9
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 567
    sget-object p1, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    return-object p1

    .line 569
    :cond_12
    invoke-super {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 609
    invoke-static {p1}, Lj$/time/chrono/l;->F(Lj$/time/temporal/n;)Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-interface {v0, v1}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 612
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/m;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1

    .line 610
    :cond_18
    new-instance p1, Lj$/time/c;

    .line 88
    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 610
    throw p1
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 279
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_9

    .line 280
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_13

    goto :goto_11

    :cond_9
    if-eqz p1, :cond_13

    .line 282
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_13

    :goto_11
    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 372
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_a

    .line 373
    invoke-virtual {p0}, Lj$/time/m;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 374
    :cond_a
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_13

    .line 377
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    .line 375
    :cond_13
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 375
    throw v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 3

    .line 342
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lj$/time/m;->p()I

    move-result p1

    return p1

    .line 345
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 309
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 310
    invoke-interface {p1}, Lj$/time/temporal/s;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 312
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final p()I
    .registers 2

    .line 236
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final r(Z)I
    .registers 4

    .line 497
    sget-object v0, Lj$/time/l;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    add-int/lit16 p1, p1, 0x14f

    return p1

    :pswitch_e
    add-int/lit16 p1, p1, 0x112

    return p1

    :pswitch_11
    add-int/lit16 p1, p1, 0xd5

    return p1

    :pswitch_14
    add-int/lit16 p1, p1, 0xb6

    return p1

    :pswitch_17
    add-int/lit8 p1, p1, 0x79

    return p1

    :pswitch_1a
    add-int/lit8 p1, p1, 0x3c

    return p1

    :pswitch_1d
    const/4 p1, 0x1

    return p1

    :pswitch_1f
    add-int/lit16 p1, p1, 0x131

    return p1

    :pswitch_22
    add-int/lit16 p1, p1, 0xf4

    return p1

    :pswitch_25
    add-int/lit16 p1, p1, 0x98

    return p1

    :pswitch_28
    add-int/lit8 p1, p1, 0x5b

    return p1

    :pswitch_2b
    const/16 p1, 0x20

    return p1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
