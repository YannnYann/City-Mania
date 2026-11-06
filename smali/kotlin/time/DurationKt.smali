###### Class kotlin.time.DurationKt (kotlin.time.DurationKt)
.class public final Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/DurationKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/LongParser\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 Duration.kt\nkotlin/time/FractionalParser\n*L\n1#1,1629:1\n1#2:1630\n1300#3,12:1631\n1312#3,15:1646\n1300#3,12:1690\n1312#3,15:1705\n1665#4,3:1643\n1665#4,3:1684\n1665#4,3:1687\n1665#4,3:1702\n1665#4,3:1743\n1358#5,23:1661\n1358#5,23:1720\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1116#1:1631,12\n1116#1:1646,15\n1195#1:1690,12\n1195#1:1705,15\n1116#1:1643,3\n1125#1:1684,3\n1190#1:1687,3\n1195#1:1702,3\n1207#1:1743,3\n1125#1:1661,23\n1207#1:1720,23\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$addMillisWithoutOverflow(JJ)J
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/DurationKt;->addMillisWithoutOverflow(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOf(JI)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->durationOf(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillis(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanosNormalized(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanosNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$millisToNanos(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nanosToMillis(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final addMillisWithoutOverflow(JJ)J
    .registers 11

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p0, v0

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz v2, :cond_2e

    cmp-long v2, p0, v3

    if-nez v2, :cond_13

    goto :goto_2e

    :cond_13
    cmp-long v0, p2, v0

    if-eqz v0, :cond_2d

    cmp-long v0, p2, v3

    if-nez v0, :cond_1c

    goto :goto_2d

    :cond_1c
    add-long v1, p0, p2

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 1395
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_2d
    :goto_2d
    return-wide p2

    :cond_2e
    :goto_2e
    cmp-long v2, v3, p2

    if-gez v2, :cond_37

    cmp-long v0, p2, v0

    if-gez v0, :cond_37

    return-wide p0

    :cond_37
    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_3f

    return-wide p0

    :cond_3f
    const-wide p0, 0x7fffffffffffc0deL

    return-wide p0
.end method

.method public static final defaultDurationUnitByShortNameOrNull(Ljava/lang/String;I)Lkotlin/time/DurationUnit;
    .registers 5

    .line 1478
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1479
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge p1, v1, :cond_11

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    const/16 p1, 0x64

    if-eq v0, p1, :cond_46

    const/16 p1, 0x68

    if-eq v0, p1, :cond_43

    const/16 p1, 0x73

    if-eq v0, p1, :cond_40

    const/16 v1, 0x75

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_32

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2c

    return-object v2

    :cond_2c
    if-ne p0, p1, :cond_31

    .line 1487
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    :cond_31
    return-object v2

    :cond_32
    if-ne p0, p1, :cond_37

    .line 1485
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    :cond_37
    sget-object p0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    return-object p0

    :cond_3a
    if-ne p0, p1, :cond_3f

    .line 1486
    sget-object p0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    :cond_3f
    return-object v2

    .line 1484
    :cond_40
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    .line 1483
    :cond_43
    sget-object p0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    return-object p0

    .line 1482
    :cond_46
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    return-object p0
.end method

.method public static final durationOf(JI)J
    .registers 6

    .line 1611
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    int-to-long v1, p2

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/Duration$Companion;->fromRawValue-UwyO8pc$kotlin_stdlib(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final durationOfMillis(J)J
    .registers 5

    .line 1610
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/Duration$Companion;->fromRawValue-UwyO8pc$kotlin_stdlib(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final durationOfMillisNormalized(J)J
    .registers 8

    const-wide v0, -0x431bde82d7aL

    cmp-long v0, v0, p0

    if-gtz v0, :cond_1b

    const-wide v0, 0x431bde82d7bL

    cmp-long v0, p0, v0

    if-gez v0, :cond_1b

    .line 1621
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_1b
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v0, p0

    .line 1623
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final durationOfNanos(J)J
    .registers 4

    .line 1609
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/Duration$Companion;->fromRawValue-UwyO8pc$kotlin_stdlib(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final durationOfNanosNormalized(J)J
    .registers 4

    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v0, v0, p0

    if-gtz v0, :cond_17

    const-wide v0, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    .line 1614
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 1616
    :cond_17
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final fractionDigitsToNanos(JLkotlin/time/DurationUnit;)J
    .registers 5

    long-to-double p0, p0

    .line 1443
    invoke-static {p2}, Lkotlin/time/DurationKt;->getFractionMultiplier(Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getFallbackFractionMultiplier(Lkotlin/time/DurationUnit;)J
    .registers 4

    .line 1543
    sget-object v0, Lkotlin/time/DurationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_37

    const/4 v1, 0x7

    if-ne v0, v1, :cond_17

    const-wide v0, 0x4e94914f0000L

    return-wide v0

    .line 1546
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for fallback fraction multiplier"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const-wide v0, 0x34630b8a000L

    return-wide v0

    :cond_3d
    const-wide v0, 0xdf8475800L

    return-wide v0
.end method

.method public static final getFractionMultiplier(Lkotlin/time/DurationUnit;)D
    .registers 4

    .line 1521
    sget-object v0, Lkotlin/time/DurationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 1528
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    const-wide v0, 0x3fb61e4f765fd8aeL    # 0.0864

    return-wide v0

    :pswitch_2c
    const-wide v0, 0x3f6d7dbf487fcb92L    # 0.0036

    return-wide v0

    :pswitch_32
    const-wide v0, 0x3f0f75104d551d69L    # 6.0E-5

    return-wide v0

    :pswitch_38
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    return-wide v0

    :pswitch_3e
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    return-wide v0

    :pswitch_44
    const-wide v0, 0x3cd203af9ee75616L    # 1.0E-15

    return-wide v0

    :pswitch_4a
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    return-wide v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public static final getShortNameLength(Lkotlin/time/DurationUnit;)I
    .registers 4

    .line 1555
    sget-object v0, Lkotlin/time/DurationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const/4 v2, 0x3

    if-eq p0, v2, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public static final isoDurationUnitByShortNameOrNull(Ljava/lang/String;I)Lkotlin/time/DurationUnit;
    .registers 2

    .line 1501
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x44

    if-eq p0, p1, :cond_1f

    const/16 p1, 0x48

    if-eq p0, p1, :cond_1c

    const/16 p1, 0x4d

    if-eq p0, p1, :cond_19

    const/16 p1, 0x53

    if-eq p0, p1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 1505
    :cond_16
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    .line 1504
    :cond_19
    sget-object p0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    return-object p0

    .line 1503
    :cond_1c
    sget-object p0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    return-object p0

    .line 1502
    :cond_1f
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    return-object p0
.end method

.method public static final millisToNanos(J)J
    .registers 4

    .line 0
    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static final nanosToMillis(J)J
    .registers 4

    const v0, 0xf4240

    int-to-long v0, v0

    .line 1606
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final parseDefaultStringFormat(Ljava/lang/String;IZZ)J
    .registers 32

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v4, 0x1

    .line 1173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    xor-int/lit8 v6, p2, 0x1

    if-eqz p2, :cond_38

    .line 1176
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_38

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_38

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v5, v1

    if-ne v6, v5, :cond_36

    if-nez p3, :cond_2e

    .line 1180
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move v7, v4

    goto :goto_3b

    :cond_38
    move v7, v6

    move/from16 v6, p1

    :goto_3b
    const/4 v10, 0x0

    move v15, v4

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_41
    if-ge v6, v5, :cond_2b4

    if-nez v15, :cond_58

    if-eqz v7, :cond_58

    .line 1666
    :goto_47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_58

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v1, 0x20

    if-ne v15, v1, :cond_58

    add-int/2addr v6, v4

    const/4 v1, -0x1

    goto :goto_47

    .line 1195
    :cond_58
    sget-object v1, Lkotlin/time/LongParser;->Companion:Lkotlin/time/LongParser$Companion;

    invoke-virtual {v1}, Lkotlin/time/LongParser$Companion;->getDefault()Lkotlin/time/LongParser;

    move-result-object v1

    .line 1302
    invoke-static {v1}, Lkotlin/time/LongParser;->access$getAllowSign$p(Lkotlin/time/LongParser;)Z

    move-result v15

    if-eqz v15, :cond_76

    .line 1303
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3

    const/16 v3, 0x2b

    if-eq v15, v3, :cond_73

    const/16 v3, 0x2d

    if-eq v15, v3, :cond_73

    goto :goto_78

    :cond_73
    add-int/lit8 v3, v6, 0x1

    goto :goto_79

    :cond_76
    const/16 v16, 0x3

    :goto_78
    move v3, v6

    .line 1666
    :goto_79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v3, v15, :cond_87

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v2, :cond_87

    add-int/2addr v3, v4

    goto :goto_79

    :cond_87
    const-wide/16 v8, 0x0

    .line 1313
    :goto_89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v17, v4

    const-string v4, ""

    const/16 v2, 0x3a

    if-ge v3, v15, :cond_f4

    .line 1314
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v19, v1

    const/16 v1, 0x30

    if-gt v1, v15, :cond_f4

    if-ge v15, v2, :cond_f4

    sub-int/2addr v15, v1

    .line 1317
    invoke-static/range {v19 .. v19}, Lkotlin/time/LongParser;->access$getOverflowThreshold$p(Lkotlin/time/LongParser;)J

    move-result-wide v20

    cmp-long v1, v8, v20

    if-gtz v1, :cond_ce

    invoke-static/range {v19 .. v19}, Lkotlin/time/LongParser;->access$getOverflowThreshold$p(Lkotlin/time/LongParser;)J

    move-result-wide v20

    cmp-long v1, v8, v20

    if-nez v1, :cond_bd

    move v1, v3

    int-to-long v2, v15

    invoke-static/range {v19 .. v19}, Lkotlin/time/LongParser;->access$getLastDigitMax$p(Lkotlin/time/LongParser;)J

    move-result-wide v21

    cmp-long v2, v2, v21

    if-lez v2, :cond_be

    goto :goto_cf

    :cond_bd
    move v1, v3

    :cond_be
    shl-long v2, v8, v16

    shl-long v8, v8, v17

    add-long/2addr v2, v8

    int-to-long v8, v15

    add-long/2addr v8, v2

    add-int/lit8 v3, v1, 0x1

    move/from16 v4, v17

    move-object/from16 v1, v19

    const/16 v2, 0x30

    goto :goto_89

    :cond_ce
    move v1, v3

    :goto_cf
    move v3, v1

    .line 1666
    :goto_d0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_e5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-gt v2, v1, :cond_e5

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_e5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    :cond_e5
    if-nez p3, :cond_ee

    .line 1197
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f4
    move v1, v3

    if-eq v1, v6, :cond_2a5

    if-eq v1, v5, :cond_2a5

    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_104

    move/from16 v2, v17

    goto :goto_105

    :cond_104
    const/4 v2, 0x0

    :goto_105
    if-eqz v2, :cond_1d8

    add-int/lit8 v3, v1, 0x1

    .line 1207
    sget-object v6, Lkotlin/time/FractionalParser;->INSTANCE:Lkotlin/time/FractionalParser;

    add-int/lit8 v6, v1, 0x7

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v15, v3

    const/16 v21, 0x0

    :goto_118
    move/from16 v22, v1

    if-ge v15, v6, :cond_13d

    .line 1371
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v23, v2

    const/16 v2, 0x30

    if-gt v2, v1, :cond_13f

    move/from16 v18, v2

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_13f

    shl-int/lit8 v2, v21, 0x3

    shl-int/lit8 v21, v21, 0x1

    add-int v2, v2, v21

    add-int/lit8 v1, v1, -0x30

    add-int v21, v2, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v22

    move/from16 v2, v23

    goto :goto_118

    :cond_13d
    move/from16 v23, v2

    :cond_13f
    sub-int v1, v15, v3

    rsub-int/lit8 v1, v1, 0x6

    move/from16 v2, v21

    const/4 v6, 0x0

    :goto_146
    if-ge v6, v1, :cond_151

    shl-int/lit8 v21, v2, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int v2, v21, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_146

    :cond_151
    add-int/lit8 v1, v15, 0x9

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v6, v15

    const/16 v21, 0x0

    :goto_15e
    if-ge v6, v1, :cond_181

    move/from16 v24, v1

    .line 1371
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v25, v6

    const/16 v6, 0x30

    if-gt v6, v1, :cond_183

    move/from16 v18, v6

    const/16 v6, 0x3a

    if-ge v1, v6, :cond_183

    shl-int/lit8 v6, v21, 0x3

    shl-int/lit8 v21, v21, 0x1

    add-int v6, v6, v21

    add-int/lit8 v1, v1, -0x30

    add-int v21, v6, v1

    add-int/lit8 v6, v25, 0x1

    move/from16 v1, v24

    goto :goto_15e

    :cond_181
    move/from16 v25, v6

    :cond_183
    sub-int v6, v25, v15

    rsub-int/lit8 v1, v6, 0x9

    move/from16 v6, v21

    const/4 v15, 0x0

    :goto_18a
    if-ge v15, v1, :cond_195

    shl-int/lit8 v21, v6, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int v6, v21, v6

    add-int/lit8 v15, v15, 0x1

    goto :goto_18a

    :cond_195
    move/from16 v1, v25

    .line 1666
    :goto_197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v1, v15, :cond_1b0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v21, v7

    const/16 v7, 0x30

    if-gt v7, v15, :cond_1b2

    const/16 v7, 0x3a

    if-ge v15, v7, :cond_1b2

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v21

    goto :goto_197

    :cond_1b0
    move/from16 v21, v7

    :cond_1b2
    if-eq v1, v3, :cond_1c9

    if-ne v1, v5, :cond_1b7

    goto :goto_1c9

    :cond_1b7
    int-to-long v2, v2

    const v4, 0x3b9aca00

    move v7, v1

    move-wide/from16 v24, v2

    int-to-long v1, v4

    mul-long v2, v24, v1

    move-wide/from16 v24, v2

    int-to-long v1, v6

    add-long v2, v24, v1

    move/from16 v1, v22

    goto :goto_1e3

    :cond_1c9
    :goto_1c9
    if-nez p3, :cond_1d2

    .line 1209
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_1d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d8
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v21, v7

    move/from16 v7, v22

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 1217
    :goto_1e3
    invoke-static {v0, v7}, Lkotlin/time/DurationKt;->defaultDurationUnitByShortNameOrNull(Ljava/lang/String;I)Lkotlin/time/DurationUnit;

    move-result-object v4

    if-nez v4, :cond_20d

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_207

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20d
    if-eqz v10, :cond_226

    .line 1219
    invoke-virtual {v10, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gtz v6, :cond_226

    if-nez p3, :cond_21e

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_21e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected order of duration components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_226
    sget-object v6, Lkotlin/time/DurationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    move/from16 v10, v17

    if-eq v6, v10, :cond_24e

    const/4 v15, 0x2

    if-eq v6, v15, :cond_23f

    .line 1245
    invoke-static {v8, v9, v4}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->convertDurationUnitToMilliseconds(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9}, Lkotlin/time/DurationKt;->addMillisWithoutOverflow(JJ)J

    move-result-wide v8

    move-wide v11, v8

    goto :goto_263

    :cond_23f
    const v6, 0xf4240

    move-wide/from16 v24, v11

    int-to-long v10, v6

    .line 1238
    div-long v26, v8, v10

    add-long v24, v24, v26

    .line 1240
    rem-long/2addr v8, v10

    add-long/2addr v13, v8

    :cond_24b
    :goto_24b
    move-wide/from16 v11, v24

    goto :goto_263

    :cond_24e
    move-wide/from16 v24, v11

    const-wide/16 v10, 0x3e8

    .line 1227
    div-long v26, v8, v10

    add-long v24, v24, v26

    const-wide v26, 0x431bde82d7aL

    cmp-long v6, v24, v26

    if-gtz v6, :cond_24b

    .line 1231
    rem-long/2addr v8, v10

    mul-long v13, v8, v10

    goto :goto_24b

    .line 1249
    :goto_263
    invoke-static {v4}, Lkotlin/time/DurationKt;->getShortNameLength(Lkotlin/time/DurationUnit;)I

    move-result v6

    add-int/2addr v6, v7

    if-eqz v23, :cond_29b

    if-ge v6, v5, :cond_27d

    if-nez p3, :cond_275

    .line 1253
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fractional component must be last"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_27d
    sget-object v7, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-virtual {v4, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_296

    sub-int v7, v6, v1

    const/16 v8, 0xf

    if-le v7, v8, :cond_296

    .line 1260
    invoke-static {v4}, Lkotlin/time/DurationKt;->getShortNameLength(Lkotlin/time/DurationUnit;)I

    move-result v2

    sub-int v2, v6, v2

    invoke-static {v0, v1, v2, v4}, Lkotlin/time/DurationKt;->parseFractionFallback(Ljava/lang/String;IILkotlin/time/DurationUnit;)J

    move-result-wide v1

    goto :goto_29a

    .line 1262
    :cond_296
    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->fractionDigitsToNanos(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    :goto_29a
    add-long/2addr v13, v1

    :cond_29b
    move-object v10, v4

    move/from16 v7, v21

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto/16 :goto_41

    :cond_2a5
    if-nez p3, :cond_2ae

    .line 1197
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_2ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b4
    move-wide/from16 v24, v11

    .line 1266
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v13, v14, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final parseDuration(Ljava/lang/String;ZZ)J
    .registers 13

    .line 1053
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    if-nez p2, :cond_f

    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide p0

    return-wide p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The string is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_28

    move v1, v0

    :goto_26
    move v5, v1

    goto :goto_2c

    :cond_28
    move v1, v3

    goto :goto_26

    :cond_2a
    move v1, v0

    move v5, v3

    :goto_2c
    if-lez v5, :cond_2f

    move v0, v3

    .line 1065
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_46

    if-nez p2, :cond_3e

    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide p0

    return-wide p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1066
    :cond_46
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x50

    if-ne v2, v4, :cond_54

    add-int/2addr v5, v3

    invoke-static {p0, v5, p2}, Lkotlin/time/DurationKt;->parseIsoStringFormat(Ljava/lang/String;IZ)J

    move-result-wide p0

    goto :goto_88

    :cond_54
    if-eqz p1, :cond_67

    if-nez p2, :cond_5f

    .line 1067
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide p0

    return-wide p0

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1068
    :cond_67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    const/16 v2, 0x8

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x1

    const-string v6, "Infinity"

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_84

    .line 1069
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide p0

    goto :goto_88

    .line 1071
    :cond_84
    invoke-static {v4, v5, v0, p2}, Lkotlin/time/DurationKt;->parseDefaultStringFormat(Ljava/lang/String;IZZ)J

    move-result-wide p0

    :goto_88
    if-eqz v1, :cond_9a

    .line 1073
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p2}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p2

    if-nez p2, :cond_9a

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    :cond_9a
    return-wide p0
.end method

.method public static synthetic parseDuration$default(Ljava/lang/String;ZZILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1052
    :cond_5
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->parseDuration(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final parseFractionFallback(Ljava/lang/String;IILkotlin/time/DurationUnit;)J
    .registers 5

    .line 1435
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p3}, Lkotlin/time/DurationKt;->getFallbackFractionMultiplier(Lkotlin/time/DurationUnit;)J

    move-result-wide p2

    long-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final parseIsoStringFormat(Ljava/lang/String;IZ)J
    .registers 30

    move-object/from16 v0, p0

    const/16 v1, 0x30

    const/4 v3, 0x1

    .line 1090
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ""

    move/from16 v6, p1

    if-ne v6, v4, :cond_1e

    if-nez p2, :cond_18

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 1104
    :goto_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_2a2

    .line 1105
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3

    const/16 v2, 0x54

    if-ne v15, v2, :cond_4f

    if-nez v14, :cond_40

    add-int/2addr v6, v3

    .line 1107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v6, v2, :cond_3e

    goto :goto_40

    :cond_3e
    move v14, v3

    goto :goto_24

    :cond_40
    :goto_40
    if-nez p2, :cond_49

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_4f
    sget-object v2, Lkotlin/time/LongParser;->Companion:Lkotlin/time/LongParser$Companion;

    invoke-virtual {v2}, Lkotlin/time/LongParser$Companion;->getIso()Lkotlin/time/LongParser;

    move-result-object v2

    .line 1302
    invoke-static {v2}, Lkotlin/time/LongParser;->access$getAllowSign$p(Lkotlin/time/LongParser;)Z

    move-result v17

    move/from16 v18, v3

    const/16 v3, 0x2d

    const/16 v4, 0x2b

    if-eqz v17, :cond_73

    .line 1303
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_6e

    if-eq v7, v3, :cond_6a

    goto :goto_73

    :cond_6a
    add-int/lit8 v7, v6, 0x1

    const/4 v8, -0x1

    goto :goto_75

    :cond_6e
    add-int/lit8 v7, v6, 0x1

    :goto_70
    move/from16 v8, v18

    goto :goto_75

    :cond_73
    :goto_73
    move v7, v6

    goto :goto_70

    .line 1666
    :goto_75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_84

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_84

    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    :cond_84
    const-wide/16 v19, 0x0

    .line 1313
    :goto_86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3a

    if-ge v7, v3, :cond_115

    .line 1314
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v1, v3, :cond_115

    if-ge v3, v4, :cond_115

    sub-int/2addr v3, v1

    .line 1317
    invoke-static {v2}, Lkotlin/time/LongParser;->access$getOverflowThreshold$p(Lkotlin/time/LongParser;)J

    move-result-wide v21

    cmp-long v21, v19, v21

    if-gtz v21, :cond_cd

    invoke-static {v2}, Lkotlin/time/LongParser;->access$getOverflowThreshold$p(Lkotlin/time/LongParser;)J

    move-result-wide v21

    cmp-long v21, v19, v21

    if-nez v21, :cond_b5

    move-object/from16 v21, v5

    int-to-long v4, v3

    invoke-static {v2}, Lkotlin/time/LongParser;->access$getLastDigitMax$p(Lkotlin/time/LongParser;)J

    move-result-wide v23

    cmp-long v4, v4, v23

    if-lez v4, :cond_b7

    :goto_b2
    move-object/from16 v24, v2

    goto :goto_d0

    :cond_b5
    move-object/from16 v21, v5

    :cond_b7
    shl-long v4, v19, v16

    shl-long v19, v19, v18

    add-long v4, v4, v19

    move-object/from16 v24, v2

    int-to-long v1, v3

    add-long v19, v4, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v21

    move-object/from16 v2, v24

    const/16 v1, 0x30

    const/16 v4, 0x2b

    goto :goto_86

    :cond_cd
    move-object/from16 v21, v5

    goto :goto_b2

    .line 1666
    :goto_d0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_e5

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-gt v2, v1, :cond_e5

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_e5

    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    .line 1119
    :cond_e5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v7, v1, :cond_104

    const/16 v1, 0x2b

    if-eq v15, v1, :cond_f5

    const/16 v1, 0x2d

    if-eq v15, v1, :cond_f5

    const/4 v1, 0x0

    goto :goto_f7

    :cond_f5
    move/from16 v1, v18

    :goto_f7
    add-int/2addr v6, v1

    if-ne v7, v6, :cond_fb

    goto :goto_104

    .line 1320
    :cond_fb
    invoke-static/range {v24 .. v24}, Lkotlin/time/LongParser;->access$getOverflowLimit$p(Lkotlin/time/LongParser;)J

    move-result-wide v19

    move-object/from16 v1, v21

    :cond_101
    move-wide/from16 v2, v19

    goto :goto_12d

    :cond_104
    :goto_104
    if-nez p2, :cond_10d

    .line 1119
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_10d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    move-object v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v7, v2, :cond_293

    const/16 v2, 0x2b

    if-eq v15, v2, :cond_126

    const/16 v2, 0x2d

    if-eq v15, v2, :cond_126

    const/4 v2, 0x0

    goto :goto_128

    :cond_126
    move/from16 v2, v18

    :goto_128
    add-int/2addr v6, v2

    if-ne v7, v6, :cond_101

    goto/16 :goto_293

    .line 1123
    :goto_12d
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1f5

    add-int/lit8 v4, v7, 0x1

    .line 1125
    sget-object v5, Lkotlin/time/FractionalParser;->INSTANCE:Lkotlin/time/FractionalParser;

    add-int/lit8 v7, v7, 0x7

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v4

    const/4 v7, 0x0

    :goto_145
    if-ge v6, v5, :cond_15e

    .line 1371
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-gt v13, v12, :cond_15e

    const/16 v15, 0x3a

    if-ge v12, v15, :cond_15e

    shl-int/lit8 v15, v7, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v15, v7

    sub-int/2addr v12, v13

    add-int v7, v15, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_145

    :cond_15e
    sub-int v5, v6, v4

    rsub-int/lit8 v5, v5, 0x6

    const/4 v12, 0x0

    :goto_163
    if-ge v12, v5, :cond_16d

    shl-int/lit8 v13, v7, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_163

    :cond_16d
    add-int/lit8 v5, v6, 0x9

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v12, v6

    const/4 v13, 0x0

    :goto_179
    if-ge v12, v5, :cond_199

    .line 1371
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 p1, v5

    const/16 v5, 0x30

    if-gt v5, v15, :cond_199

    move/from16 v23, v5

    const/16 v5, 0x3a

    if-ge v15, v5, :cond_199

    shl-int/lit8 v5, v13, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v5, v13

    add-int/lit8 v15, v15, -0x30

    add-int v13, v5, v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, p1

    goto :goto_179

    :cond_199
    sub-int v5, v12, v6

    rsub-int/lit8 v5, v5, 0x9

    const/4 v6, 0x0

    :goto_19e
    if-ge v6, v5, :cond_1a8

    shl-int/lit8 v15, v13, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_19e

    .line 1666
    :cond_1a8
    :goto_1a8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v12, v5, :cond_1bd

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-gt v6, v5, :cond_1bf

    const/16 v15, 0x3a

    if-ge v5, v15, :cond_1bf

    add-int/lit8 v12, v12, 0x1

    goto :goto_1a8

    :cond_1bd
    const/16 v6, 0x30

    :cond_1bf
    if-eq v12, v4, :cond_1e6

    .line 1128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v12, v4, :cond_1e6

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_1d0

    goto :goto_1e6

    :cond_1d0
    int-to-long v4, v7

    const v7, 0x3b9aca00

    int-to-long v6, v7

    mul-long/2addr v4, v6

    int-to-long v6, v13

    add-long/2addr v4, v6

    int-to-long v6, v8

    .line 1133
    sget-object v13, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v13}, Lkotlin/time/DurationKt;->fractionDigitsToNanos(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    mul-long/2addr v6, v4

    move-wide/from16 v25, v6

    move v7, v12

    move-wide/from16 v12, v25

    goto :goto_1f5

    :cond_1e6
    :goto_1e6
    if-nez p2, :cond_1ef

    .line 1129
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_1ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_1f5
    :goto_1f5
    invoke-static {v0, v7}, Lkotlin/time/DurationKt;->isoDurationUnitByShortNameOrNull(Ljava/lang/String;I)Lkotlin/time/DurationUnit;

    move-result-object v4

    if-nez v4, :cond_21f

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_219

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21f
    if-eqz v9, :cond_238

    .line 1138
    invoke-virtual {v9, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gtz v5, :cond_238

    if-nez p2, :cond_230

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected order of duration components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_238
    sget-object v5, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    if-ne v4, v5, :cond_255

    if-eqz v14, :cond_24d

    if-nez p2, :cond_247

    .line 1142
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24d
    int-to-long v5, v8

    .line 1143
    invoke-static {v2, v3, v4}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->convertDurationUnitToMilliseconds(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    mul-long/2addr v5, v2

    move-wide v10, v5

    goto :goto_289

    :cond_255
    if-nez v14, :cond_266

    if-nez p2, :cond_260

    .line 1145
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_266
    int-to-long v5, v8

    .line 1146
    invoke-static {v2, v3, v4}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->convertDurationUnitToMilliseconds(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    mul-long/2addr v5, v2

    invoke-static {v10, v11, v5, v6}, Lkotlin/time/DurationKt;->addMillisWithoutOverflow(JJ)J

    move-result-wide v2

    const-wide v5, 0x7fffffffffffc0deL

    cmp-long v5, v2, v5

    if-nez v5, :cond_288

    if-nez p2, :cond_282

    .line 1147
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_288
    move-wide v10, v2

    :goto_289
    add-int/lit8 v6, v7, 0x1

    move-object v5, v1

    move-object v9, v4

    move/from16 v3, v18

    const/16 v1, 0x30

    goto/16 :goto_24

    :cond_293
    :goto_293
    if-nez p2, :cond_29c

    .line 1119
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getINVALID-UwyO8pc$kotlin_stdlib()J

    move-result-wide v0

    return-wide v0

    :cond_29c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_2a2
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v11, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v12, v13, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .registers 7

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 1010
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1011
    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2c

    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v2, v0, v2

    if-gez v2, :cond_2c

    .line 1013
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 1015
    :cond_2c
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    .line 1016
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0

    .line 1010
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .registers 4

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_19

    int-to-long v0, p0

    .line 973
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_19
    int-to-long v0, p0

    .line 975
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .registers 9

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v3, v3, p0

    if-gtz v3, :cond_22

    cmp-long v1, p0, v1

    if-gtz v1, :cond_22

    .line 987
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 988
    :cond_22
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_46

    .line 989
    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->getSign(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 990
    invoke-static {p0, p1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 989
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->convertDurationUnitToMilliseconds(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    mul-long/2addr v0, p0

    .line 988
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0

    .line 994
    :cond_46
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v0

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

###### Class kotlin.time.DurationKt.WhenMappings (kotlin.time.DurationKt$WhenMappings)
.class public final synthetic Lkotlin/time/DurationKt$WhenMappings;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/DurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lkotlin/time/DurationUnit;->values()[Lkotlin/time/DurationUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    sput-object v0, Lkotlin/time/DurationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
