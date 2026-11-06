###### Class j$.time.format.p (j$.time.format.p)
.class public final Lj$/time/format/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lj$/time/format/a;


# instance fields
.field private a:Lj$/time/format/p;

.field private final b:Lj$/time/format/p;

.field private final c:Ljava/util/ArrayList;

.field private final d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 158
    new-instance v0, Lj$/time/format/a;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 158
    sput-object v0, Lj$/time/format/p;->f:Lj$/time/format/a;

    .line 1999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x47

    .line 2002
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    .line 2003
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 2004
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 2005
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/j;->a:Lj$/time/temporal/s;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    .line 2006
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    .line 2007
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    .line 2008
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    .line 2009
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 2010
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    .line 2011
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 2012
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    .line 2013
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    .line 2014
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    .line 2015
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    .line 2016
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    .line 2017
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    .line 2018
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    .line 2019
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    .line 2020
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    .line 2021
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 2022
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    .line 2023
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    .line 2024
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    .line 2025
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    .line 2026
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/l;->a:Lj$/time/temporal/s;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Lj$/time/format/p;->e:I

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lj$/time/format/p;->b:Lj$/time/format/p;

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lj$/time/format/p;->d:Z

    return-void
.end method

.method private constructor <init>(Lj$/time/format/p;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Lj$/time/format/p;->e:I

    .line 269
    iput-object p1, p0, Lj$/time/format/p;->b:Lj$/time/format/p;

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lj$/time/format/p;->d:Z

    return-void
.end method

.method private d(Lj$/time/format/f;)I
    .registers 3

    .line 2169
    const-string v0, "pp"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2170
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2177
    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    const/4 v0, -0x1

    iput v0, p1, Lj$/time/format/p;->e:I

    .line 2179
    iget-object p1, p1, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private j(Lj$/time/format/i;)V
    .registers 7

    .line 648
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget v1, v0, Lj$/time/format/p;->e:I

    if-ltz v1, :cond_40

    .line 652
    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/i;

    .line 653
    iget v2, p1, Lj$/time/format/i;->b:I

    iget v3, p1, Lj$/time/format/i;->c:I

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lj$/time/format/i;->a(Lj$/time/format/i;)Lj$/time/format/y;

    move-result-object v2

    sget-object v4, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    if-ne v2, v4, :cond_2c

    .line 655
    invoke-virtual {v0, v3}, Lj$/time/format/i;->d(I)Lj$/time/format/i;

    move-result-object v0

    .line 657
    invoke-virtual {p1}, Lj$/time/format/i;->c()Lj$/time/format/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    .line 659
    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iput v1, p1, Lj$/time/format/p;->e:I

    goto :goto_38

    .line 662
    :cond_2c
    invoke-virtual {v0}, Lj$/time/format/i;->c()Lj$/time/format/i;

    move-result-object v0

    .line 664
    iget-object v2, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    move-result p1

    iput p1, v2, Lj$/time/format/p;->e:I

    .line 667
    :goto_38
    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object p1, p1, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 670
    :cond_40
    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    move-result p1

    iput p1, v0, Lj$/time/format/p;->e:I

    return-void
.end method

.method private v(Ljava/util/Locale;Lj$/time/format/x;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;
    .registers 7

    .line 2249
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2250
    :goto_5
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v0, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    if-eqz v0, :cond_f

    .line 2251
    invoke-virtual {p0}, Lj$/time/format/p;->n()V

    goto :goto_5

    .line 2253
    :cond_f
    new-instance v0, Lj$/time/format/e;

    iget-object v1, p0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/e;-><init>(Ljava/util/ArrayList;Z)V

    .line 2254
    new-instance v1, Lj$/time/format/DateTimeFormatter;

    sget-object v2, Lj$/time/format/v;->a:Lj$/time/format/v;

    invoke-direct {v1, v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/e;Ljava/util/Locale;Lj$/time/format/x;Lj$/time/chrono/s;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lj$/time/format/DateTimeFormatter;)V
    .registers 3

    .line 1469
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1470
    invoke-virtual {p1}, Lj$/time/format/DateTimeFormatter;->g()Lj$/time/format/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final b(Lj$/time/temporal/a;)V
    .registers 8

    .line 717
    new-instance v0, Lj$/time/format/g;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    move-object v1, p1

    .line 3090
    invoke-direct/range {v0 .. v5}, Lj$/time/format/g;-><init>(Lj$/time/temporal/s;IIZI)V

    .line 3091
    const-string p1, "field"

    invoke-static {v1, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3092
    invoke-virtual {v1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/x;->g()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 717
    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void

    .line 3093
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Field must have a fixed set of values: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .registers 2

    .line 856
    new-instance v0, Lj$/time/format/h;

    .line 3407
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 856
    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final e(C)V
    .registers 3

    .line 1432
    new-instance v0, Lj$/time/format/d;

    invoke-direct {v0, p1}, Lj$/time/format/d;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 4

    .line 1448
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1450
    new-instance v0, Lj$/time/format/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lj$/time/format/d;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void

    .line 1452
    :cond_1b
    new-instance v0, Lj$/time/format/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/time/format/n;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    :cond_24
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 990
    new-instance v0, Lj$/time/format/j;

    invoke-direct {v0, p1, p2}, Lj$/time/format/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final h()V
    .registers 2

    .line 916
    sget-object v0, Lj$/time/format/j;->e:Lj$/time/format/j;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final i(Lj$/time/temporal/a;Ljava/util/HashMap;)V
    .registers 5

    .line 799
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 801
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 802
    sget-object p2, Lj$/time/format/z;->FULL:Lj$/time/format/z;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 803
    new-instance v1, Lj$/time/format/u;

    invoke-direct {v1, v0}, Lj$/time/format/u;-><init>(Ljava/util/Map;)V

    .line 804
    new-instance v0, Lj$/time/format/b;

    invoke-direct {v0, v1}, Lj$/time/format/b;-><init>(Lj$/time/format/u;)V

    .line 825
    new-instance v1, Lj$/time/format/o;

    invoke-direct {v1, p1, p2, v0}, Lj$/time/format/o;-><init>(Lj$/time/temporal/a;Lj$/time/format/z;Lj$/time/format/b;)V

    invoke-direct {p0, v1}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final k(Lj$/time/temporal/s;I)V
    .registers 5

    .line 463
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_17

    const/16 v0, 0x13

    if-gt p2, v0, :cond_17

    .line 467
    new-instance v0, Lj$/time/format/i;

    sget-object v1, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;)V

    .line 468
    invoke-direct {p0, v0}, Lj$/time/format/p;->j(Lj$/time/format/i;)V

    return-void

    .line 465
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lj$/time/temporal/s;IILj$/time/format/y;)V
    .registers 7

    if-ne p2, p3, :cond_a

    .line 505
    sget-object v0, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    if-ne p4, v0, :cond_a

    .line 506
    invoke-virtual {p0, p1, p3}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    return-void

    .line 508
    :cond_a
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_5a

    const/16 v1, 0x13

    if-gt p2, v1, :cond_5a

    if-lt p3, v0, :cond_46

    if-gt p3, v1, :cond_46

    if-lt p3, p2, :cond_2a

    .line 520
    new-instance v0, Lj$/time/format/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/i;-><init>(Lj$/time/temporal/s;IILj$/time/format/y;)V

    .line 521
    invoke-direct {p0, v0}, Lj$/time/format/p;->j(Lj$/time/format/i;)V

    return-void

    .line 517
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 511
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()V
    .registers 4

    .line 1136
    new-instance v0, Lj$/time/format/n;

    sget-object v1, Lj$/time/format/p;->f:Lj$/time/format/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/time/format/n;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final n()V
    .registers 4

    .line 2148
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v1, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    if-eqz v1, :cond_2a

    .line 2151
    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 2152
    new-instance v0, Lj$/time/format/e;

    iget-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v2, v1, Lj$/time/format/p;->c:Ljava/util/ArrayList;

    iget-boolean v1, v1, Lj$/time/format/p;->d:Z

    invoke-direct {v0, v2, v1}, Lj$/time/format/e;-><init>(Ljava/util/ArrayList;Z)V

    .line 2153
    iget-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v1, v1, Lj$/time/format/p;->b:Lj$/time/format/p;

    iput-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    .line 2154
    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void

    .line 2156
    :cond_23
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v0, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    iput-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    return-void

    .line 2149
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .registers 3

    .line 2117
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/p;->e:I

    .line 2118
    new-instance v1, Lj$/time/format/p;

    invoke-direct {v1, v0}, Lj$/time/format/p;-><init>(Lj$/time/format/p;)V

    iput-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    return-void
.end method

.method public final p()V
    .registers 2

    .line 313
    sget-object v0, Lj$/time/format/m;->INSENSITIVE:Lj$/time/format/m;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final q()V
    .registers 2

    .line 293
    sget-object v0, Lj$/time/format/m;->SENSITIVE:Lj$/time/format/m;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final r()V
    .registers 2

    .line 351
    sget-object v0, Lj$/time/format/m;->LENIENT:Lj$/time/format/m;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final s()V
    .registers 2

    .line 332
    sget-object v0, Lj$/time/format/m;->STRICT:Lj$/time/format/m;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/f;)I

    return-void
.end method

.method public final t()Lj$/time/format/DateTimeFormatter;
    .registers 4

    .line 2203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2224
    sget-object v1, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lj$/time/format/p;->v(Ljava/util/Locale;Lj$/time/format/x;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method final u(Lj$/time/format/x;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;
    .registers 4

    .line 2238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lj$/time/format/p;->v(Ljava/util/Locale;Lj$/time/format/x;Lj$/time/chrono/s;)Lj$/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1
.end method
