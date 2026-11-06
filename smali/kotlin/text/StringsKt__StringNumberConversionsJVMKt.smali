###### Class kotlin.text.StringsKt__StringNumberConversionsJVMKt (kotlin.text.StringsKt__StringNumberConversionsJVMKt)
.class public Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,569:1\n267#1,7:570\n267#1,7:577\n278#1,8:584\n278#1,8:592\n1#2:600\n1665#3,3:601\n1665#3,3:604\n1665#3,3:607\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:570,7\n173#1:577,7\n253#1:584,8\n264#1:592,8\n430#1:601,3\n439#1:604,3\n452#1:607,3\n*E\n"
.end annotation


# direct methods
.method public static final isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const/16 v5, 0x20

    if-gt v4, v1, :cond_17

    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    if-le v4, v1, :cond_1a

    return v3

    :cond_1a
    :goto_1a
    if-le v1, v4, :cond_25

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 334
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_37

    :cond_35
    add-int/lit8 v4, v4, 0x1

    :cond_37
    if-le v4, v1, :cond_3a

    return v3

    .line 341
    :cond_3a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2e

    const/16 v10, 0xa

    const/16 v11, 0x30

    const v12, 0xffff

    const/4 v13, -0x1

    if-ne v6, v11, :cond_c5

    add-int/lit8 v6, v4, 0x1

    if-le v6, v1, :cond_4f

    return v2

    .line 347
    :cond_4f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v5

    const/16 v14, 0x78

    if-ne v6, v14, :cond_c5

    add-int/lit8 v4, v4, 0x2

    move v6, v4

    :goto_5b
    const/4 v14, 0x6

    if-gt v6, v1, :cond_77

    .line 350
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    move/from16 v17, v2

    and-int v2, v16, v12

    if-ge v2, v10, :cond_6b

    goto :goto_72

    :cond_6b
    or-int/lit8 v2, v15, 0x20

    add-int/lit8 v2, v2, -0x61

    and-int/2addr v2, v12

    if-ge v2, v14, :cond_79

    :goto_72
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    goto :goto_5b

    :cond_77
    move/from16 v17, v2

    :cond_79
    if-eq v4, v6, :cond_7e

    move/from16 v2, v17

    goto :goto_7f

    :cond_7e
    move v2, v3

    :goto_7f
    if-le v6, v1, :cond_85

    move/from16 v18, v5

    :goto_83
    move v4, v13

    goto :goto_bc

    :cond_85
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_b3

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    :goto_8e
    if-gt v4, v1, :cond_a9

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    move/from16 v18, v5

    and-int v5, v16, v12

    if-ge v5, v10, :cond_9d

    goto :goto_a4

    :cond_9d
    or-int/lit8 v5, v15, 0x20

    add-int/lit8 v5, v5, -0x61

    and-int/2addr v5, v12

    if-ge v5, v14, :cond_ab

    :goto_a4
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    goto :goto_8e

    :cond_a9
    move/from16 v18, v5

    :cond_ab
    if-eq v6, v4, :cond_b0

    move/from16 v5, v17

    goto :goto_b1

    :cond_b0
    move v5, v3

    :goto_b1
    move v6, v4

    goto :goto_b6

    :cond_b3
    move/from16 v18, v5

    move v5, v3

    :goto_b6
    if-nez v2, :cond_bb

    if-nez v5, :cond_bb

    goto :goto_83

    :cond_bb
    move v4, v6

    :goto_bc
    if-eq v4, v13, :cond_c4

    if-le v4, v1, :cond_c1

    goto :goto_c4

    :cond_c1
    move/from16 v2, v17

    goto :goto_ca

    :cond_c4
    :goto_c4
    return v3

    :cond_c5
    move/from16 v17, v2

    move/from16 v18, v5

    move v2, v3

    :goto_ca
    if-nez v2, :cond_128

    move v5, v4

    :goto_cd
    if-gt v5, v1, :cond_da

    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v11

    and-int/2addr v6, v12

    if-ge v6, v10, :cond_da

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    :cond_da
    if-eq v4, v5, :cond_df

    move/from16 v4, v17

    goto :goto_e0

    :cond_df
    move v4, v3

    :goto_e0
    if-le v5, v1, :cond_e4

    move v4, v5

    goto :goto_122

    :cond_e4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_ff

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    :goto_ed
    if-gt v6, v1, :cond_fa

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v11

    and-int/2addr v9, v12

    if-ge v9, v10, :cond_fa

    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    :cond_fa
    if-eq v5, v6, :cond_100

    move/from16 v5, v17

    goto :goto_101

    :cond_ff
    move v6, v5

    :cond_100
    move v5, v3

    :goto_101
    if-nez v4, :cond_121

    if-nez v5, :cond_121

    add-int/lit8 v4, v6, 0x2

    if-ne v1, v4, :cond_10c

    const-string v4, "NaN"

    goto :goto_114

    :cond_10c
    add-int/lit8 v4, v6, 0x7

    if-ne v1, v4, :cond_113

    const-string v4, "Infinity"

    goto :goto_114

    :cond_113
    const/4 v4, 0x0

    :goto_114
    if-nez v4, :cond_118

    :cond_116
    move v4, v13

    goto :goto_122

    :cond_118
    invoke-static {v0, v4, v6, v3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v4

    if-ne v4, v6, :cond_116

    add-int/lit8 v4, v1, 0x1

    goto :goto_122

    :cond_121
    move v4, v6

    :goto_122
    if-ne v4, v13, :cond_125

    return v3

    :cond_125
    if-le v4, v1, :cond_128

    return v17

    :cond_128
    add-int/lit8 v5, v4, 0x1

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/lit8 v6, v6, 0x20

    if-eqz v2, :cond_135

    const/16 v9, 0x70

    goto :goto_137

    :cond_135
    const/16 v9, 0x65

    :goto_137
    const/16 v13, 0x64

    const/16 v14, 0x66

    if-eq v6, v9, :cond_147

    if-nez v2, :cond_146

    if-eq v6, v14, :cond_143

    if-ne v6, v13, :cond_146

    :cond_143
    if-le v5, v1, :cond_146

    return v17

    :cond_146
    return v3

    :cond_147
    if-le v5, v1, :cond_14a

    return v3

    .line 390
    :cond_14a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_156

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_15b

    :cond_156
    add-int/lit8 v5, v4, 0x2

    if-le v5, v1, :cond_15b

    return v3

    :cond_15b
    :goto_15b
    if-gt v5, v1, :cond_168

    .line 396
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v11

    and-int/2addr v2, v12

    if-ge v2, v10, :cond_168

    add-int/lit8 v5, v5, 0x1

    goto :goto_15b

    :cond_168
    if-le v5, v1, :cond_16b

    return v17

    :cond_16b
    if-ne v5, v1, :cond_17a

    .line 403
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    if-eq v0, v14, :cond_179

    if-ne v0, v13, :cond_178

    goto :goto_179

    :cond_178
    return v3

    :cond_179
    :goto_179
    return v17

    :cond_17a
    return v3
.end method

.method public static toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 173
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    return-object v0
.end method

.method public static toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 166
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    return-object v0
.end method
