###### Class io.bidmachine.rendering.internal.l (io.bidmachine.rendering.internal.l)
.class public final Lio/bidmachine/rendering/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/l;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/l;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/l;->a:Lio/bidmachine/rendering/internal/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/ElementLayoutParams;
    .registers 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_d
    new-instance v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    invoke-direct {v0}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;-><init>()V

    const/4 v1, 0x1

    .line 5
    new-array v3, v1, [C

    const/16 v1, 0x3b

    const/4 v2, 0x0

    aput-char v1, v3, v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    sget-object v2, Lio/bidmachine/rendering/internal/l;->a:Lio/bidmachine/rendering/internal/l;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/rendering/internal/l;->a(Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;Ljava/lang/String;)V

    goto :goto_27

    .line 163
    :cond_39
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->build()Lio/bidmachine/rendering/model/ElementLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 399
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_17

    .line 402
    :cond_a
    new-instance v1, Lio/bidmachine/rendering/model/SideBindParams;

    .line 403
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/l;->b(Ljava/lang/String;)Lio/bidmachine/rendering/model/SideType;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v0

    .line 404
    :cond_13
    invoke-direct {v1, p1, p2}, Lio/bidmachine/rendering/model/SideBindParams;-><init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V

    return-object v1

    :cond_17
    :goto_17
    return-object v0
.end method

.method public final a(Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x3d

    move-object/from16 v3, p2

    .line 164
    invoke-static {v3, v2}, Lio/bidmachine/util/UtilsKt;->divide(Ljava/lang/String;C)Lkotlin/Pair;

    move-result-object v2

    const-string v4, "ElementLayoutParamsParser"

    if-nez v2, :cond_1a

    .line 166
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid constraint - %s"

    invoke-static {v4, v2, v1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 169
    :cond_1a
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    goto/16 :goto_1d2

    :cond_47
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 178
    invoke-static {v2, v3, v6, v3}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;

    move-result-object v7

    if-nez v7, :cond_e2

    const/16 v9, 0x2b

    .line 180
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v13, 0x2a

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    filled-new-array {v10, v12, v14}, [Ljava/lang/Character;

    move-result-object v10

    invoke-static {v2, v10}, Lio/bidmachine/rendering/internal/m;->a(Ljava/lang/String;[Ljava/lang/Character;)Ljava/util/List;

    move-result-object v2

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v10, v3

    move-object v12, v10

    const/4 v14, 0x0

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 p2, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x2

    .line 183
    invoke-static {v15, v13, v8, v11, v3}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v17

    const-string v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eqz v17, :cond_a5

    .line 184
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v3, v6, v3}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_a2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v14

    :goto_9d
    const/16 v11, 0x2d

    :goto_9f
    const/16 v13, 0x2a

    goto :goto_70

    :cond_a2
    move/from16 v14, p2

    goto :goto_9d

    .line 187
    :cond_a5
    invoke-static {v15, v9, v8, v11, v3}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v17

    const/16 v9, 0x2d

    if-nez v17, :cond_ce

    invoke-static {v15, v9, v8, v11, v3}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b4

    goto :goto_ce

    :cond_b4
    const/16 v13, 0x2e

    .line 191
    invoke-static {v15, v13, v8, v11, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 192
    invoke-static {v15, v13}, Lio/bidmachine/util/UtilsKt;->divide(Ljava/lang/String;C)Lkotlin/Pair;

    move-result-object v8

    if-eqz v8, :cond_ca

    .line 193
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    .line 194
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    :cond_ca
    :goto_ca
    move v11, v9

    const/16 v9, 0x2b

    goto :goto_9f

    .line 195
    :cond_ce
    :goto_ce
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v15, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3, v6, v3}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;

    move-result-object v7

    goto :goto_ca

    :cond_de
    const/16 p2, 0x0

    move-object v3, v10

    goto :goto_e7

    :cond_e2
    const/16 p2, 0x0

    move/from16 v14, p2

    move-object v12, v3

    :goto_e7
    if-nez v7, :cond_ed

    .line 208
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 210
    :cond_ed
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1dc

    goto/16 :goto_1b5

    :sswitch_f6
    const-string v2, "centery"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    goto/16 :goto_1b5

    .line 247
    :cond_100
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setCenterYSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)V

    .line 248
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setTranslationY(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 249
    :sswitch_113
    const-string v2, "centerx"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11d

    goto/16 :goto_1b5

    .line 281
    :cond_11d
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setCenterXSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)V

    .line 282
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setTranslationX(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 283
    :sswitch_130
    const-string v2, "width"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    goto/16 :goto_1b5

    .line 285
    :cond_13a
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setWidth(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 286
    invoke-virtual {v1, v14}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setWidthPercent(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 287
    :sswitch_145
    const-string v2, "right"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    goto :goto_1b5

    .line 309
    :cond_14e
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setRightSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 310
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setMarginRight(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 311
    :sswitch_161
    const-string v2, "left"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16a

    goto :goto_1b5

    .line 323
    :cond_16a
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setLeftSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 324
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setMarginLeft(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 325
    :sswitch_17d
    const-string v2, "top"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_186

    goto :goto_1b5

    .line 342
    :cond_186
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setTopSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 343
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setMarginTop(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 344
    :sswitch_199
    const-string v2, "height"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a2

    goto :goto_1b5

    .line 351
    :cond_1a2
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setHeight(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 352
    invoke-virtual {v1, v14}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setHeightPercent(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 353
    :sswitch_1ad
    const-string v2, "bottom"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 395
    :goto_1b5
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported SourceAnchor - %s"

    invoke-static {v4, v2, v1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 396
    :cond_1bf
    check-cast v12, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Lio/bidmachine/rendering/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setBottomSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    .line 397
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->setMarginBottom(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;

    return-void

    .line 398
    :cond_1d2
    :goto_1d2
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid constraint params - %s"

    invoke-static {v4, v2, v1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_1dc
    .sparse-switch
        -0x527265d5 -> :sswitch_1ad
        -0x48c76ed9 -> :sswitch_199
        0x1c155 -> :sswitch_17d
        0x32a007 -> :sswitch_161
        0x677c21c -> :sswitch_145
        0x6be2dc6 -> :sswitch_130
        0x27a6bec3 -> :sswitch_113
        0x27a6bec4 -> :sswitch_f6
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;)Lio/bidmachine/rendering/model/SideType;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6d

    .line 4
    :cond_a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_69

    :sswitch_25
    const-string v1, "centery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_69

    .line 26
    :cond_2e
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->CenterY:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    .line 27
    :sswitch_31
    const-string v1, "centerx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_69

    .line 45
    :cond_3a
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->CenterX:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    .line 46
    :sswitch_3d
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_69

    .line 56
    :cond_46
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    .line 57
    :sswitch_49
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_69

    .line 59
    :cond_52
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    .line 60
    :sswitch_55
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_69

    .line 66
    :cond_5e
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    .line 67
    :sswitch_61
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    :goto_69
    return-object v0

    .line 81
    :cond_6a
    sget-object p1, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    return-object p1

    :cond_6d
    :goto_6d
    return-object v0

    :sswitch_data_6e
    .sparse-switch
        -0x527265d5 -> :sswitch_61
        0x1c155 -> :sswitch_55
        0x32a007 -> :sswitch_49
        0x677c21c -> :sswitch_3d
        0x27a6bec3 -> :sswitch_31
        0x27a6bec4 -> :sswitch_25
    .end sparse-switch
.end method
