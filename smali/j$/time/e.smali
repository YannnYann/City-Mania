###### Class j$.time.e (j$.time.e)
.class public final enum Lj$/time/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Lj$/time/temporal/o;


# static fields
.field public static final enum FRIDAY:Lj$/time/e;

.field public static final enum MONDAY:Lj$/time/e;

.field public static final enum SATURDAY:Lj$/time/e;

.field public static final enum SUNDAY:Lj$/time/e;

.field public static final enum THURSDAY:Lj$/time/e;

.field public static final enum TUESDAY:Lj$/time/e;

.field public static final enum WEDNESDAY:Lj$/time/e;

.field private static final a:[Lj$/time/e;

.field private static final synthetic b:[Lj$/time/e;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 115
    new-instance v0, Lj$/time/e;

    .line 109
    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    sput-object v0, Lj$/time/e;->MONDAY:Lj$/time/e;

    .line 120
    new-instance v1, Lj$/time/e;

    .line 109
    const-string v2, "TUESDAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    sput-object v1, Lj$/time/e;->TUESDAY:Lj$/time/e;

    .line 125
    new-instance v2, Lj$/time/e;

    .line 109
    const-string v3, "WEDNESDAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v2, Lj$/time/e;->WEDNESDAY:Lj$/time/e;

    .line 130
    new-instance v3, Lj$/time/e;

    .line 109
    const-string v4, "THURSDAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    sput-object v3, Lj$/time/e;->THURSDAY:Lj$/time/e;

    .line 135
    new-instance v4, Lj$/time/e;

    .line 109
    const-string v5, "FRIDAY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    sput-object v4, Lj$/time/e;->FRIDAY:Lj$/time/e;

    .line 140
    new-instance v5, Lj$/time/e;

    .line 109
    const-string v6, "SATURDAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    sput-object v5, Lj$/time/e;->SATURDAY:Lj$/time/e;

    .line 145
    new-instance v6, Lj$/time/e;

    .line 109
    const-string v7, "SUNDAY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lj$/time/e;->SUNDAY:Lj$/time/e;

    .line 109
    filled-new-array/range {v0 .. v6}, [Lj$/time/e;

    move-result-object v0

    sput-object v0, Lj$/time/e;->b:[Lj$/time/e;

    .line 149
    invoke-static {}, Lj$/time/e;->values()[Lj$/time/e;

    move-result-object v0

    sput-object v0, Lj$/time/e;->a:[Lj$/time/e;

    return-void
.end method

.method public static r(I)Lj$/time/e;
    .registers 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/4 v1, 0x7

    if-gt p0, v1, :cond_c

    .line 167
    sget-object v1, Lj$/time/e;->a:[Lj$/time/e;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 165
    :cond_c
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/e;
    .registers 2

    .line 109
    const-class v0, Lj$/time/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/e;

    return-object p0
.end method

.method public static values()[Lj$/time/e;
    .registers 1

    .line 109
    sget-object v0, Lj$/time/e;->b:[Lj$/time/e;

    invoke-virtual {v0}, [Lj$/time/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 407
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 408
    sget-object p1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    return-object p1

    .line 410
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 454
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/e;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 252
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_9

    .line 253
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_13

    goto :goto_11

    :cond_9
    if-eqz p1, :cond_13

    .line 255
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

    .line 345
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_a

    .line 346
    invoke-virtual {p0}, Lj$/time/e;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 347
    :cond_a
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_13

    .line 350
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    .line 348
    :cond_13
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 348
    throw v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 3

    .line 315
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 316
    invoke-virtual {p0}, Lj$/time/e;->p()I

    move-result p1

    return p1

    .line 318
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 282
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 283
    invoke-interface {p1}, Lj$/time/temporal/s;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 285
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final p()I
    .registers 2

    .line 209
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
