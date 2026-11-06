###### Class j$.time.temporal.b (j$.time.temporal.b)
.class public final enum Lj$/time/temporal/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/v;


# static fields
.field public static final enum CENTURIES:Lj$/time/temporal/b;

.field public static final enum DAYS:Lj$/time/temporal/b;

.field public static final enum DECADES:Lj$/time/temporal/b;

.field public static final enum ERAS:Lj$/time/temporal/b;

.field public static final enum FOREVER:Lj$/time/temporal/b;

.field public static final enum HALF_DAYS:Lj$/time/temporal/b;

.field public static final enum HOURS:Lj$/time/temporal/b;

.field public static final enum MICROS:Lj$/time/temporal/b;

.field public static final enum MILLENNIA:Lj$/time/temporal/b;

.field public static final enum MILLIS:Lj$/time/temporal/b;

.field public static final enum MINUTES:Lj$/time/temporal/b;

.field public static final enum MONTHS:Lj$/time/temporal/b;

.field public static final enum NANOS:Lj$/time/temporal/b;

.field public static final enum SECONDS:Lj$/time/temporal/b;

.field public static final enum WEEKS:Lj$/time/temporal/b;

.field public static final enum YEARS:Lj$/time/temporal/b;

.field private static final synthetic b:[Lj$/time/temporal/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 83
    new-instance v1, Lj$/time/temporal/b;

    sget-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    const/4 v0, 0x0

    const-string v2, "Nanos"

    const-string v3, "NANOS"

    invoke-direct {v1, v3, v0, v2}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    .line 88
    new-instance v2, Lj$/time/temporal/b;

    const/4 v0, 0x1

    const-string v3, "Micros"

    const-string v4, "MICROS"

    invoke-direct {v2, v4, v0, v3}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lj$/time/temporal/b;->MICROS:Lj$/time/temporal/b;

    .line 93
    new-instance v3, Lj$/time/temporal/b;

    const/4 v0, 0x2

    const-string v4, "Millis"

    const-string v5, "MILLIS"

    invoke-direct {v3, v5, v0, v4}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lj$/time/temporal/b;->MILLIS:Lj$/time/temporal/b;

    .line 99
    new-instance v4, Lj$/time/temporal/b;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const-string v0, "SECONDS"

    const/4 v5, 0x3

    const-string v6, "Seconds"

    invoke-direct {v4, v0, v5, v6}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lj$/time/temporal/b;->SECONDS:Lj$/time/temporal/b;

    .line 104
    new-instance v5, Lj$/time/temporal/b;

    const-wide/16 v6, 0x3c

    invoke-static {v6, v7}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/4 v0, 0x4

    const-string v6, "Minutes"

    const-string v7, "MINUTES"

    invoke-direct {v5, v7, v0, v6}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lj$/time/temporal/b;->MINUTES:Lj$/time/temporal/b;

    .line 109
    new-instance v6, Lj$/time/temporal/b;

    const-wide/16 v7, 0xe10

    invoke-static {v7, v8}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/4 v0, 0x5

    const-string v7, "Hours"

    const-string v8, "HOURS"

    invoke-direct {v6, v8, v0, v7}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lj$/time/temporal/b;->HOURS:Lj$/time/temporal/b;

    .line 114
    new-instance v7, Lj$/time/temporal/b;

    const-wide/32 v8, 0xa8c0

    invoke-static {v8, v9}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/4 v0, 0x6

    const-string v8, "HalfDays"

    const-string v9, "HALF_DAYS"

    invoke-direct {v7, v9, v0, v8}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lj$/time/temporal/b;->HALF_DAYS:Lj$/time/temporal/b;

    .line 125
    new-instance v8, Lj$/time/temporal/b;

    const-wide/32 v9, 0x15180

    invoke-static {v9, v10}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/4 v0, 0x7

    const-string v9, "Days"

    const-string v10, "DAYS"

    invoke-direct {v8, v10, v0, v9}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    .line 132
    new-instance v9, Lj$/time/temporal/b;

    const-wide/32 v10, 0x93a80

    invoke-static {v10, v11}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0x8

    const-string v10, "Weeks"

    const-string v11, "WEEKS"

    invoke-direct {v9, v11, v0, v10}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lj$/time/temporal/b;->WEEKS:Lj$/time/temporal/b;

    .line 140
    new-instance v10, Lj$/time/temporal/b;

    const-wide/32 v11, 0x282072

    invoke-static {v11, v12}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0x9

    const-string v11, "Months"

    const-string v12, "MONTHS"

    invoke-direct {v10, v12, v0, v11}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    .line 149
    new-instance v11, Lj$/time/temporal/b;

    const-wide/32 v12, 0x1e18558

    invoke-static {v12, v13}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0xa

    const-string v12, "Years"

    const-string v13, "YEARS"

    invoke-direct {v11, v13, v0, v12}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lj$/time/temporal/b;->YEARS:Lj$/time/temporal/b;

    .line 157
    new-instance v12, Lj$/time/temporal/b;

    const-wide/32 v13, 0x12cf3570

    invoke-static {v13, v14}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0xb

    const-string v13, "Decades"

    const-string v14, "DECADES"

    invoke-direct {v12, v14, v0, v13}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lj$/time/temporal/b;->DECADES:Lj$/time/temporal/b;

    .line 165
    new-instance v13, Lj$/time/temporal/b;

    const-wide v14, 0xbc181660L

    invoke-static {v14, v15}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0xc

    const-string v14, "Centuries"

    const-string v15, "CENTURIES"

    invoke-direct {v13, v15, v0, v14}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lj$/time/temporal/b;->CENTURIES:Lj$/time/temporal/b;

    .line 173
    new-instance v14, Lj$/time/temporal/b;

    const-wide v15, 0x758f0dfc0L

    invoke-static/range {v15 .. v16}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0xd

    const-string v15, "Millennia"

    move-object/from16 v16, v1

    const-string v1, "MILLENNIA"

    invoke-direct {v14, v1, v0, v15}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lj$/time/temporal/b;->MILLENNIA:Lj$/time/temporal/b;

    .line 182
    new-instance v15, Lj$/time/temporal/b;

    const-wide v0, 0x701ce172277000L

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const/16 v0, 0xe

    const-string v1, "Eras"

    move-object/from16 v17, v2

    const-string v2, "ERAS"

    invoke-direct {v15, v2, v0, v1}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lj$/time/temporal/b;->ERAS:Lj$/time/temporal/b;

    .line 190
    new-instance v0, Lj$/time/temporal/b;

    const-wide v1, 0x7fffffffffffffffL

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    const-wide/32 v3, 0x3b9ac9ff

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration;->S(JJ)Lj$/time/Duration;

    const/16 v1, 0xf

    const-string v2, "Forever"

    const-string v3, "FOREVER"

    invoke-direct {v0, v3, v1, v2}, Lj$/time/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj$/time/temporal/b;->FOREVER:Lj$/time/temporal/b;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v16, v0

    .line 77
    filled-new-array/range {v1 .. v16}, [Lj$/time/temporal/b;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/b;->b:[Lj$/time/temporal/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lj$/time/temporal/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/b;
    .registers 2

    .line 77
    const-class v0, Lj$/time/temporal/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/b;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/b;
    .registers 1

    .line 77
    sget-object v0, Lj$/time/temporal/b;->b:[Lj$/time/temporal/b;

    invoke-virtual {v0}, [Lj$/time/temporal/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/b;

    return-object v0
.end method


# virtual methods
.method public final p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;
    .registers 4

    .line 266
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lj$/time/temporal/b;->a:Ljava/lang/String;

    return-object v0
.end method
