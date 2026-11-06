###### Class vm2.lib.OsLib (vm2.lib.OsLib)
.class public Lvm2/lib/OsLib;
.super Lvm2/lib/TwoArgFunction;
.source "OsLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/OsLib$OsLibFunc;
    }
.end annotation


# static fields
.field private static final CLOCK:I = 0x0

.field private static final DATE:I = 0x1

.field private static final DIFFTIME:I = 0x2

.field private static final EXECUTE:I = 0x3

.field private static final EXIT:I = 0x4

.field private static final GETENV:I = 0x5

.field private static final MonthName:[Ljava/lang/String;

.field private static final MonthNameAbbrev:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;

.field private static final REMOVE:I = 0x6

.field private static final RENAME:I = 0x7

.field private static final SETLOCALE:I = 0x8

.field private static final TIME:I = 0x9

.field private static final TMPNAME:I = 0xa

.field public static final TMP_PREFIX:Ljava/lang/String; = ".luaj"

.field public static final TMP_SUFFIX:Ljava/lang/String; = "tmp"

.field private static final WeekdayName:[Ljava/lang/String;

.field private static final WeekdayNameAbbrev:[Ljava/lang/String;

.field private static final t0:J

.field private static tmpnames:J


# instance fields
.field protected globals:Lvm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 100
    const-string v9, "time"

    const-string v10, "tmpname"

    const-string v0, "clock"

    const-string v1, "date"

    const-string v2, "difftime"

    const-string v3, "execute"

    const-string v4, "exit"

    const-string v5, "getenv"

    const-string v6, "remove"

    const-string v7, "rename"

    const-string v8, "setlocale"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/OsLib;->NAMES:[Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lvm2/lib/OsLib;->t0:J

    .line 115
    sput-wide v0, Lvm2/lib/OsLib;->tmpnames:J

    .line 348
    const-string v7, "Fri"

    const-string v8, "Sat"

    const-string v2, "Sun"

    const-string v3, "Mon"

    const-string v4, "Tue"

    const-string v5, "Wed"

    const-string v6, "Thu"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/OsLib;->WeekdayNameAbbrev:[Ljava/lang/String;

    .line 349
    const-string v6, "Friday"

    const-string v7, "Saturday"

    const-string v1, "Sunday"

    const-string v2, "Monday"

    const-string v3, "Tuesday"

    const-string v4, "Wednesday"

    const-string v5, "Thursday"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/OsLib;->WeekdayName:[Ljava/lang/String;

    .line 350
    const-string v11, "Nov"

    const-string v12, "Dec"

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/OsLib;->MonthNameAbbrev:[Ljava/lang/String;

    .line 351
    const-string v11, "November"

    const-string v12, "December"

    const-string v1, "January"

    const-string v2, "February"

    const-string v3, "March"

    const-string v4, "April"

    const-string v5, "May"

    const-string v6, "June"

    const-string v7, "July"

    const-string v8, "August"

    const-string v9, "September"

    const-string v10, "October"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/OsLib;->MonthName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lvm2/lib/OsLib;Ljava/util/Calendar;)Z
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lvm2/lib/OsLib;->isDaylightSavingsTime(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method private beginningOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 5

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 356
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    .line 357
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 358
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 359
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 360
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 361
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private isDaylightSavingsTime(Ljava/util/Calendar;)Z
    .registers 3

    .line 391
    invoke-direct {p0, p1}, Lvm2/lib/OsLib;->timeZoneOffset(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    if-eq v0, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private timeZoneOffset(Ljava/util/Calendar;)I
    .registers 10

    const/16 v0, 0xb

    .line 378
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/16 v1, 0xc

    .line 379
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const/16 v1, 0xd

    .line 380
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v7, v0, 0x3e8

    .line 381
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v0, 0x1

    .line 383
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    .line 384
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x5

    .line 385
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x7

    .line 386
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x1

    .line 381
    invoke-virtual/range {v1 .. v7}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method private weekNumber(Ljava/util/Calendar;I)I
    .registers 8

    .line 366
    invoke-direct {p0, p1}, Lvm2/lib/OsLib;->beginningOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 p2, p2, 0x8

    const/4 v1, 0x7

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v2, p2, v2

    rem-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 368
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 369
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr p2, v2

    rem-int/2addr p2, v1

    add-int/2addr p2, v3

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 372
    :cond_2c
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x240c8400

    .line 373
    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p1, v3

    return p1
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 132
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/OsLib;->globals:Lvm2/Globals;

    .line 133
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    .line 134
    :goto_c
    sget-object v1, Lvm2/lib/OsLib;->NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 135
    aget-object v1, v1, v0

    new-instance v2, Lvm2/lib/OsLib$OsLibFunc;

    invoke-direct {v2, p0, v0, v1}, Lvm2/lib/OsLib$OsLibFunc;-><init>(Lvm2/lib/OsLib;ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 136
    :cond_1e
    const-string v0, "os"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 137
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_3c
    return-object p1
.end method

.method public clock()D
    .registers 5

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lvm2/lib/OsLib;->t0:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public date(Ljava/lang/String;D)Ljava/lang/String;
    .registers 16

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v4, p2, v2

    double-to-long v4, v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 245
    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_31

    .line 246
    invoke-direct {p0, v0}, Lvm2/lib/OsLib;->timeZoneOffset(Ljava/util/Calendar;)I

    move-result v1

    int-to-double v5, v1

    sub-double/2addr p2, v5

    .line 247
    new-instance v1, Ljava/util/Date;

    mul-double/2addr v2, p2

    double-to-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 251
    array-length v1, p1

    .line 252
    new-instance v2, Lvm2/Buffer;

    invoke-direct {v2, v1}, Lvm2/Buffer;-><init>(I)V

    const/4 v3, 0x0

    move v5, v3

    :goto_3d
    if-ge v5, v1, :cond_246

    add-int/lit8 v6, v5, 0x1

    .line 255
    aget-byte v7, p1, v5

    const/16 v8, 0xa

    if-eq v7, v8, :cond_23e

    const/16 v8, 0x25

    if-eq v7, v8, :cond_50

    .line 260
    invoke-virtual {v2, v7}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto/16 :goto_243

    :cond_50
    if-lt v6, v1, :cond_54

    goto/16 :goto_243

    :cond_54
    add-int/lit8 v5, v5, 0x2

    .line 264
    aget-byte v6, p1, v6

    if-eq v6, v8, :cond_239

    const/16 v7, 0x4d

    const/16 v8, 0xc

    if-eq v6, v7, :cond_226

    const/16 v7, 0x53

    if-eq v6, v7, :cond_211

    const/16 v7, 0x55

    if-eq v6, v7, :cond_204

    const/16 v7, 0x6a

    if-eq v6, v7, :cond_1db

    const/16 v7, 0x6d

    const/4 v9, 0x2

    if-eq v6, v7, :cond_1c8

    const/16 v7, 0x70

    const/16 v10, 0xb

    if-eq v6, v7, :cond_1b8

    const/16 v7, 0x41

    const/4 v11, 0x7

    if-eq v6, v7, :cond_1aa

    const/16 v7, 0x42

    if-eq v6, v7, :cond_19d

    const/16 v7, 0x48

    if-eq v6, v7, :cond_18a

    const/16 v7, 0x49

    if-eq v6, v7, :cond_176

    packed-switch v6, :pswitch_data_24c

    packed-switch v6, :pswitch_data_256

    packed-switch v6, :pswitch_data_262

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid conversion specifier \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    goto :goto_3d

    .line 335
    :pswitch_ab
    invoke-direct {p0, v0}, Lvm2/lib/OsLib;->timeZoneOffset(Ljava/util/Calendar;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    .line 336
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 337
    div-int/lit8 v8, v7, 0x3c

    add-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 338
    rem-int/lit8 v7, v7, 0x3c

    add-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v6, :cond_d7

    const-string v6, "+"

    goto :goto_d9

    :cond_d7
    const-string v6, "-"

    :goto_d9
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 329
    :pswitch_eb
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 323
    :pswitch_fc
    const-string v6, "%m/%d/%y"

    invoke-virtual {p0, v6, p2, p3}, Lvm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 317
    :pswitch_107
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    rem-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    :pswitch_117
    const/4 v6, 0x5

    .line 287
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 284
    :pswitch_12b
    const-string v6, "%a %b %d %H:%M:%S %Y"

    invoke-virtual {p0, v6, p2, p3}, Lvm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 278
    :pswitch_136
    sget-object v6, Lvm2/lib/OsLib;->MonthNameAbbrev:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 272
    :pswitch_143
    sget-object v6, Lvm2/lib/OsLib;->WeekdayNameAbbrev:[Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 332
    :pswitch_151
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 326
    :pswitch_15e
    const-string v6, "%H:%M:%S"

    invoke-virtual {p0, v6, p2, p3}, Lvm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 320
    :pswitch_169
    invoke-direct {p0, v0, v4}, Lvm2/lib/OsLib;->weekNumber(Ljava/util/Calendar;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 293
    :cond_176
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 290
    :cond_18a
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 281
    :cond_19d
    sget-object v6, Lvm2/lib/OsLib;->MonthName:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 275
    :cond_1aa
    sget-object v6, Lvm2/lib/OsLib;->WeekdayName:[Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 308
    :cond_1b8
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v8, :cond_1c1

    const-string v6, "AM"

    goto :goto_1c3

    :cond_1c1
    const-string v6, "PM"

    :goto_1c3
    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 302
    :cond_1c8
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x65

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 296
    :cond_1db
    invoke-direct {p0, v0}, Lvm2/lib/OsLib;->beginningOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    .line 297
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v6, v7

    add-int/lit16 v6, v6, 0x3e9

    .line 298
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 314
    :cond_204
    invoke-direct {p0, v0, v3}, Lvm2/lib/OsLib;->weekNumber(Ljava/util/Calendar;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    :cond_211
    const/16 v6, 0xd

    .line 311
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 305
    :cond_226
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 269
    :cond_239
    invoke-virtual {v2, v8}, Lvm2/Buffer;->append(B)Lvm2/Buffer;

    goto/16 :goto_3d

    .line 257
    :cond_23e
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    :goto_243
    move v5, v6

    goto/16 :goto_3d

    .line 345
    :cond_246
    invoke-virtual {v2}, Lvm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_24c
    .packed-switch 0x57
        :pswitch_169
        :pswitch_15e
        :pswitch_151
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x61
        :pswitch_143
        :pswitch_136
        :pswitch_12b
        :pswitch_117
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x77
        :pswitch_107
        :pswitch_fc
        :pswitch_eb
        :pswitch_ab
    .end packed-switch
.end method

.method public difftime(DD)D
    .registers 5

    .line 0
    sub-double/2addr p1, p3

    return-wide p1
.end method

.method public execute(Ljava/lang/String;)Lvm2/Varargs;
    .registers 4

    .line 403
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const-string v0, "exit"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sget-object v1, Lvm2/LuaValue;->ONE:Lvm2/LuaNumber;

    invoke-static {p1, v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public exit(I)V
    .registers 2

    .line 411
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 432
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    new-instance p1, Ljava/io/IOException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    new-instance p1, Ljava/io/IOException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setlocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 478
    const-string p1, "C"

    return-object p1
.end method

.method public time(Lvm2/LuaTable;)D
    .registers 6

    if-nez p1, :cond_8

    .line 493
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    goto :goto_6e

    .line 495
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 496
    const-string v1, "year"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 497
    const-string v1, "month"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 498
    const-string v1, "day"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 499
    const-string v1, "hour"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v1

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 500
    const-string v1, "min"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 501
    const-string v1, "sec"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 502
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->set(II)V

    .line 503
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 505
    :goto_6e
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public tmpname()Ljava/lang/String;
    .registers 7

    .line 522
    const-class v0, Lvm2/lib/OsLib;

    monitor-enter v0

    .line 523
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".luaj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lvm2/lib/OsLib;->tmpnames:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lvm2/lib/OsLib;->tmpnames:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    .line 524
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

###### Class vm2.lib.OsLib.OsLibFunc (vm2.lib.OsLib$OsLibFunc)
.class Lvm2/lib/OsLib$OsLibFunc;
.super Lvm2/lib/VarArgFunction;
.source "OsLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/OsLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OsLibFunc"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/OsLib;


# direct methods
.method public constructor <init>(Lvm2/lib/OsLib;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 143
    iput p2, p0, Lvm2/lib/LibFunction;->opcode:I

    .line 144
    iput-object p3, p0, Lvm2/lib/LibFunction;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 10

    .line 148
    :try_start_0
    iget v0, p0, Lvm2/lib/LibFunction;->opcode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_184

    .line 197
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :catch_b
    move-exception p1

    goto/16 :goto_175

    .line 195
    :pswitch_e
    iget-object p1, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1}, Lvm2/lib/OsLib;->tmpname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_19
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3, v1}, Lvm2/Varargs;->opttable(ILvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/OsLib;->time(Lvm2/LuaTable;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_28
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "all"

    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/lib/OsLib;->setlocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 190
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    :cond_3f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 186
    :pswitch_42
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/lib/OsLib;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 183
    :pswitch_52
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/OsLib;->remove(Ljava/lang/String;)V

    .line 184
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 179
    :pswitch_5e
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/OsLib;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 180
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    :cond_6f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 176
    :pswitch_72
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lvm2/lib/OsLib;->exit(I)V

    .line 177
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 174
    :pswitch_7f
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/OsLib;->execute(Ljava/lang/String;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 172
    :pswitch_8a
    iget-object v0, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lvm2/lib/OsLib;->difftime(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_9d
    const-string v0, "%c"

    invoke-virtual {p1, v3, v0}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1, v2}, Lvm2/Varargs;->isnumber(I)Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-virtual {p1, v2}, Lvm2/Varargs;->todouble(I)D

    move-result-wide v4

    goto :goto_b4

    :cond_ae
    iget-object p1, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1, v1}, Lvm2/lib/OsLib;->time(Lvm2/LuaTable;)D

    move-result-wide v4

    .line 154
    :goto_b4
    const-string p1, "*t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_155

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/util/Date;

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 158
    const-string v1, "year"

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 159
    const-string v1, "month"

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 160
    const-string v1, "day"

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 161
    const-string v1, "hour"

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 162
    const-string v1, "min"

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 163
    const-string v1, "sec"

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 164
    const-string v1, "wday"

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 165
    const-string v1, "yday"

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 166
    const-string v1, "isdst"

    iget-object v2, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-static {v2, p1}, Lvm2/lib/OsLib;->access$000(Lvm2/lib/OsLib;Ljava/util/Calendar;)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object v0

    .line 169
    :cond_155
    iget-object p1, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_161

    invoke-virtual {p1, v1}, Lvm2/lib/OsLib;->time(Lvm2/LuaTable;)D

    move-result-wide v4

    :cond_161
    invoke-virtual {p1, v0, v4, v5}, Lvm2/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_16a
    iget-object p1, p0, Lvm2/lib/OsLib$OsLibFunc;->this$0:Lvm2/lib/OsLib;

    invoke-virtual {p1}, Lvm2/lib/OsLib;->clock()D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_174} :catch_b

    return-object p1

    .line 199
    :goto_175
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_9d
        :pswitch_8a
        :pswitch_7f
        :pswitch_72
        :pswitch_5e
        :pswitch_52
        :pswitch_42
        :pswitch_28
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
