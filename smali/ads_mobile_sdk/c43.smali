###### Class ads_mobile_sdk.c43 (ads_mobile_sdk.c43)
.class public final Lads_mobile_sdk/c43;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Lads_mobile_sdk/vt;
    .registers 9

    .line 12
    invoke-static {}, Lads_mobile_sdk/vt;->v()Lads_mobile_sdk/ut;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v1, "builder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_21

    .line 14
    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_25

    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 15
    :cond_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6e

    const/4 v1, 0x0

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_41

    :cond_40
    move-wide v4, v2

    .line 17
    :goto_41
    invoke-virtual {v0, v4, v5}, Lads_mobile_sdk/ut;->a(J)V

    const/4 v1, 0x1

    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_57

    :cond_56
    move-wide v4, v2

    .line 19
    :goto_57
    invoke-virtual {v0, v4, v5}, Lads_mobile_sdk/ut;->c(J)V

    const/4 v1, 0x2

    .line 20
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 21
    :cond_6b
    invoke-virtual {v0, v2, v3}, Lads_mobile_sdk/ut;->b(J)V

    .line 22
    :cond_6e
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lads_mobile_sdk/vt;

    return-object p0
.end method

.method public static final synthetic a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/yh1$f;)Lcom/google/gson/JsonElement;
    .registers 2

    .line 10
    invoke-static {p0, p1}, Lads_mobile_sdk/c43;->b(Lcom/google/gson/JsonObject;Lads_mobile_sdk/yh1$f;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/gson/JsonElement;Z)Ljava/lang/Boolean;
    .registers 9

    .line 24
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    if-ne p0, p1, :cond_19

    move v1, v2

    :cond_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1e
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 29
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_42

    move p0, v2

    goto :goto_43

    :cond_42
    move p0, v1

    :goto_43
    if-ne p1, p0, :cond_46

    move v1, v2

    :cond_46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 33
    :cond_4b
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 34
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_64

    .line 36
    :cond_60
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    :goto_64
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "t"

    const-string v3, "true"

    const-string v4, "1"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    move p0, v2

    goto :goto_9d

    .line 46
    :cond_88
    const-string v0, "f"

    const-string v3, "false"

    const-string v4, "0"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    move p0, v1

    :goto_9d
    if-ne p1, p0, :cond_a0

    move v1, v2

    .line 51
    :cond_a0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(DLads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 9

    .line 1079
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->O()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->F()D

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_d
    mul-double/2addr p0, v0

    .line 1085
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->P()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_33

    .line 1087
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->H()I

    move-result v0

    if-ltz v0, :cond_1f

    .line 1088
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->H()I

    move-result v1

    .line 1091
    :cond_1f
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->H()I

    move-result p2

    int-to-double v2, p2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr p0, v2

    double-to-long p0, p0

    long-to-double p0, p0

    div-double/2addr p0, v2

    .line 1092
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_60

    .line 1093
    :cond_33
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->K()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1094
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->w()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr p0, v2

    double-to-long p0, p0

    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->w()I

    move-result p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_60

    .line 1098
    :cond_4b
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpg-double p2, p0, v2

    if-nez p2, :cond_5c

    .line 1099
    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_60

    .line 1101
    :cond_5c
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 1106
    :goto_60
    instance-of p1, p0, Ljava/lang/Double;

    const-string p2, "f"

    const-string v0, "%."

    const-string v2, "format(...)"

    const/4 v3, 0x1

    if-eqz p1, :cond_91

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d0

    .line 1107
    :cond_91
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_bb

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d0

    .line 1108
    :cond_bb
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d0
    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 1110
    const-string v0, "."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 1111
    new-instance p1, Lkotlin/text/Regex;

    const-string p2, "0*$"

    invoke-direct {p1, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\\.$"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f3
    return-object p0
.end method

.method public static final a(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonElement;Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 6
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->A()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_25

    :cond_14
    if-nez p0, :cond_1d

    .line 7
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->z()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_25

    :cond_1d
    if-eqz p0, :cond_22

    .line 8
    const-string p0, "1"

    return-object p0

    :cond_22
    const-string p0, "0"

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 13

    .line 53
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->N()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->E()I

    move-result v0

    move v6, v0

    goto :goto_e

    :cond_d
    move v6, v1

    .line 56
    :goto_e
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "keySet(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 283
    check-cast v3, Ljava/lang/String;

    .line 284
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lads_mobile_sdk/c43;->d(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->y()I

    move-result v5

    if-lez v5, :cond_4b

    .line 287
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->y()I

    move-result v7

    if-le v5, v7, :cond_4b

    const/4 v3, 0x0

    goto :goto_61

    .line 291
    :cond_4b
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->C()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_61
    if-eqz v3, :cond_20

    .line 507
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 508
    :cond_67
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->B()Ljava/lang/String;

    move-result-object v3

    const-string p0, "getItemSeparator(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x26

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    if-ltz v0, :cond_a0

    :goto_83
    add-int/lit8 v1, v0, -0x1

    .line 728
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 729
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->v()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_99

    if-gez v1, :cond_97

    goto :goto_a0

    :cond_97
    move v0, v1

    goto :goto_83

    :cond_99
    add-int/lit8 v0, v0, 0x1

    .line 949
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_a2

    .line 951
    :cond_a0
    :goto_a0
    const-string p0, ""

    .line 952
    :goto_a2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_10

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, p2

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_10
    return-void
.end method

.method public static a(Lads_mobile_sdk/qu1;D)Z
    .registers 9

    .line 954
    invoke-virtual {p0}, Lads_mobile_sdk/qu1;->y()Z

    move-result v0

    .line 955
    invoke-virtual {p0}, Lads_mobile_sdk/qu1;->z()D

    move-result-wide v1

    .line 957
    invoke-virtual {p0}, Lads_mobile_sdk/qu1;->F()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1b

    cmpl-double p0, p1, v1

    if-eqz v0, :cond_17

    if-ltz p0, :cond_1a

    goto :goto_19

    :cond_17
    if-lez p0, :cond_1a

    :goto_19
    return v5

    :cond_1a
    return v4

    .line 961
    :cond_1b
    invoke-virtual {p0}, Lads_mobile_sdk/qu1;->G()Z

    move-result v3

    if-eqz v3, :cond_2c

    cmpg-double p0, p1, v1

    if-eqz v0, :cond_28

    if-gtz p0, :cond_2b

    goto :goto_2a

    :cond_28
    if-gez p0, :cond_2b

    :goto_2a
    return v5

    :cond_2b
    return v4

    .line 965
    :cond_2c
    invoke-virtual {p0}, Lads_mobile_sdk/qu1;->D()Z

    move-result p0

    if-eqz p0, :cond_3d

    double-to-long v0, v1

    double-to-long p0, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_3c

    return v5

    :cond_3c
    return v4

    :cond_3d
    cmpg-double p0, v1, p1

    if-nez p0, :cond_42

    return v5

    :cond_42
    return v4
.end method

.method public static a(Lcom/google/gson/JsonElement;Lads_mobile_sdk/qu1;)Z
    .registers 4

    .line 967
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->I()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 968
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 970
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    .line 971
    :cond_24
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 972
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "1"

    goto :goto_44

    :cond_3d
    const-string p0, "0"

    goto :goto_44

    .line 974
    :cond_40
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 976
    :goto_44
    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 977
    :cond_51
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->E()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 978
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->w()Z

    move-result p1

    invoke-static {p0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonElement;Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_145

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 979
    :cond_66
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->H()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 980
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 981
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/c43;->a(Lads_mobile_sdk/qu1;D)Z

    move-result p0

    return p0

    .line 984
    :cond_89
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 985
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_a2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a4

    :cond_a2
    const-wide/16 v0, 0x0

    .line 986
    :goto_a4
    invoke-static {p1, v0, v1}, Lads_mobile_sdk/c43;->a(Lads_mobile_sdk/qu1;D)Z

    move-result p0

    return p0

    .line 990
    :cond_a9
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 991
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c2

    .line 993
    :cond_be
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 994
    :goto_c2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 999
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_145

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1002
    invoke-static {p1, v0, v1}, Lads_mobile_sdk/c43;->a(Lads_mobile_sdk/qu1;D)Z

    move-result p0

    return p0

    .line 1003
    :cond_df
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->C()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 1004
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->v()Lads_mobile_sdk/qu1;

    move-result-object p1

    const-string v0, "getArrayContains(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 1006
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    const-string v0, "getAsJsonArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10b

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10b

    goto :goto_145

    .line 1068
    :cond_10b
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 1069
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->A()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 1070
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonElement;Lads_mobile_sdk/qu1;)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_147

    .line 1072
    :cond_12f
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "getAsJsonObject(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/qu1;)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_147

    :cond_145
    :goto_145
    const/4 p0, 0x0

    return p0

    :cond_147
    :goto_147
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/qu1;)Z
    .registers 5

    .line 1074
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->A()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 1075
    :cond_c
    invoke-virtual {p1}, Lads_mobile_sdk/qu1;->A()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    const-string v2, "getPathList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lads_mobile_sdk/c43;->b(Lcom/google/gson/JsonObject;Lads_mobile_sdk/yh1$f;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_1c

    return v1

    .line 1077
    :cond_1c
    invoke-static {p0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonElement;Lads_mobile_sdk/qu1;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/google/gson/JsonObject;Lads_mobile_sdk/yh1$f;)Lcom/google/gson/JsonElement;
    .registers 6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-nez v3, :cond_1b

    return-object v0

    :cond_1b
    if-eqz v1, :cond_29

    .line 13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_29
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_6

    :cond_2e
    return-object v1
.end method

.method public static final b(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/c43;->a(DLads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_21
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAsString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lads_mobile_sdk/c43;->a(DLads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4d
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p1

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "1"

    return-object p0

    :cond_6a
    const-string p0, "0"

    return-object p0

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic c(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lads_mobile_sdk/c43;->d(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;
    .registers 13

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "getAsJsonObject(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_14
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    const-string v0, "getAsJsonArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->N()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->E()I

    move-result v0

    move v6, v0

    goto :goto_31

    :cond_30
    move v6, v1

    .line 225
    :goto_31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 235
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 236
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lads_mobile_sdk/c43;->d(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->y()I

    move-result v3

    if-lez v3, :cond_5e

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->y()I

    move-result v4

    if-le v3, v4, :cond_5e

    const/4 v0, 0x0

    :cond_5e
    if-eqz v0, :cond_3a

    .line 459
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 460
    :cond_64
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->v()Ljava/lang/String;

    move-result-object v3

    const-string p0, "getArraySeparator(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x26

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 679
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    if-ltz v0, :cond_9d

    :goto_80
    add-int/lit8 v1, v0, -0x1

    .line 680
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 681
    invoke-virtual {p1}, Lads_mobile_sdk/ia1;->v()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_96

    if-gez v1, :cond_94

    goto :goto_9d

    :cond_94
    move v0, v1

    goto :goto_80

    :cond_96
    add-int/lit8 v0, v0, 0x1

    .line 901
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_9f

    .line 903
    :cond_9d
    :goto_9d
    const-string p0, ""

    .line 904
    :goto_9f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 905
    :cond_a4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p1

    if-eqz p1, :cond_bc

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 906
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 907
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 909
    :cond_bc
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 910
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_d9

    const-string p0, "1"

    return-object p0

    :cond_d9
    const-string p0, "0"

    return-object p0

    .line 912
    :cond_dc
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    .line 913
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
