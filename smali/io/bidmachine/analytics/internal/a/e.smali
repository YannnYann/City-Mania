###### Class io.bidmachine.analytics.internal.a.e (io.bidmachine.analytics.internal.a.e)
.class public final Lio/bidmachine/analytics/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/a/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;)Lio/bidmachine/analytics/Filter$Value;
    .registers 4

    .line 1307
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->box-impl(Ljava/lang/String;)Lio/bidmachine/analytics/Filter$Value$StringValue;

    move-result-object p1

    return-object p1

    .line 1308
    :cond_13
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->constructor-impl(Z)Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->box-impl(Z)Lio/bidmachine/analytics/Filter$Value$BoolValue;

    move-result-object p1

    return-object p1

    .line 1309
    :cond_26
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->box-impl(J)Lio/bidmachine/analytics/Filter$Value$LongValue;

    move-result-object p1

    return-object p1

    .line 1310
    :cond_3a
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4d

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->box-impl(J)Lio/bidmachine/analytics/Filter$Value$LongValue;

    move-result-object p1

    return-object p1

    .line 1311
    :cond_4d
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_61

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->constructor-impl(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->box-impl(D)Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    move-result-object p1

    return-object p1

    .line 1312
    :cond_61
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_74

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->constructor-impl(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->box-impl(D)Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    move-result-object p1

    return-object p1

    :cond_74
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .registers 7

    .line 1298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1302
    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2b

    .line 1303
    instance-of v3, p2, Ljava/util/Map;

    if-eqz v3, :cond_16

    check-cast p2, Ljava/util/Map;

    goto :goto_17

    :cond_16
    move-object p2, v1

    :goto_17
    if-nez p2, :cond_1a

    return-object v1

    .line 1304
    :cond_1a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1306
    :cond_2b
    instance-of p1, p2, Ljava/util/Map;

    if-eqz p1, :cond_32

    check-cast p2, Ljava/util/Map;

    return-object p2

    :cond_32
    return-object v1
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Expression$Rule;)Z
    .registers 6

    .line 1483
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 1486
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    sget-object v2, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    if-eq v0, v2, :cond_a6

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    sget-object v2, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    if-ne v0, v2, :cond_1e

    goto/16 :goto_a6

    .line 1489
    :cond_1e
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    .line 1493
    :cond_29
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 1494
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object v2

    .line 1553
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_67

    .line 1554
    :cond_48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/analytics/Filter$Value;

    .line 1555
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v1

    .line 1559
    :cond_67
    :goto_67
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    sget-object v2, Lio/bidmachine/analytics/internal/a/e$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b0

    goto :goto_a5

    .line 1561
    :pswitch_78
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    goto :goto_a4

    .line 1563
    :pswitch_83
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_a5

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz p1, :cond_a5

    goto :goto_a4

    .line 1564
    :pswitch_9a
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_a5

    :goto_a4
    return v2

    :cond_a5
    :goto_a5
    return v1

    .line 1565
    :cond_a6
    :goto_a6
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_9a
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Expression$Rule;Ljava/util/Map;)Z
    .registers 8

    .line 569
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getPath()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 570
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getPath()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_16b

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    goto/16 :goto_16b

    .line 572
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v2

    sget-object v3, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_30

    if-eqz p2, :cond_2f

    .line 573
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v4, :cond_2f

    return v4

    :cond_2f
    return v1

    .line 575
    :cond_30
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v2

    sget-object v3, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    if-ne v2, v3, :cond_44

    if-eqz p2, :cond_41

    .line 576
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v4, :cond_41

    move v1, v4

    :cond_41
    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_44
    if-eqz p2, :cond_4b

    .line 579
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4c

    :cond_4b
    const/4 p2, 0x0

    .line 580
    :goto_4c
    invoke-direct {p0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Ljava/lang/Object;)Lio/bidmachine/analytics/Filter$Value;

    move-result-object p2

    if-nez p2, :cond_5b

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getMissingBehavior()Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$MissingBehavior;->getValue()Z

    move-result p1

    return p1

    .line 582
    :cond_5b
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Value;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 583
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getMissingBehavior()Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$MissingBehavior;->getValue()Z

    move-result p1

    return p1

    .line 586
    :cond_6e
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getOp()Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    sget-object v2, Lio/bidmachine/analytics/internal/a/e$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_16c

    .line 607
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getMissingBehavior()Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$MissingBehavior;->getValue()Z

    move-result p1

    return p1

    .line 608
    :pswitch_86
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    .line 719
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    goto/16 :goto_15a

    .line 720
    :cond_96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Value;

    .line 721
    invoke-direct {p0, v0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Value;Lio/bidmachine/analytics/Filter$Value;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto/16 :goto_15b

    .line 722
    :pswitch_ae
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    .line 831
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_be

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_be

    goto/16 :goto_15b

    .line 832
    :cond_be
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Value;

    .line 833
    invoke-direct {p0, v0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Value;Lio/bidmachine/analytics/Filter$Value;)Z

    move-result v0

    if-eqz v0, :cond_c2

    goto/16 :goto_15a

    .line 834
    :pswitch_d6
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    .line 944
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 945
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 946
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    check-cast p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    .line 947
    invoke-interface {p2, p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    if-gtz p1, :cond_15b

    goto :goto_15a

    .line 948
    :pswitch_f3
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    .line 1059
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1060
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1061
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    check-cast p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    .line 1062
    invoke-interface {p2, p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    if-gez p1, :cond_15b

    goto :goto_15a

    .line 1063
    :pswitch_110
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    .line 1175
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1176
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1177
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    check-cast p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    .line 1178
    invoke-interface {p2, p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    if-ltz p1, :cond_15b

    goto :goto_15a

    .line 1179
    :pswitch_12d
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    .line 1292
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1293
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_15b

    .line 1294
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    check-cast p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    .line 1295
    invoke-interface {p2, p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    if-lez p1, :cond_15b

    goto :goto_15a

    .line 1296
    :pswitch_14a
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    invoke-direct {p0, p2, p1}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Value;Lio/bidmachine/analytics/Filter$Value;)Z

    move-result p1

    if-nez p1, :cond_15b

    :cond_15a
    :goto_15a
    return v4

    :cond_15b
    :goto_15b
    return v1

    .line 1297
    :pswitch_15c
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$Rule;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/Filter$Value;

    invoke-direct {p0, p2, p1}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Value;Lio/bidmachine/analytics/Filter$Value;)Z

    move-result p1

    return p1

    :cond_16b
    :goto_16b
    return v1

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_15c
        :pswitch_14a
        :pswitch_12d
        :pswitch_110
        :pswitch_f3
        :pswitch_d6
        :pswitch_ae
        :pswitch_86
    .end packed-switch
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Expression;)Z
    .registers 3

    .line 292
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    if-eqz v0, :cond_2c

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$AllOf;->getExpressions()Ljava/util/List;

    move-result-object p1

    .line 426
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_59

    .line 427
    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Expression;

    .line 428
    invoke-direct {p0, v0}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_57

    .line 429
    :cond_2c
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    if-eqz v0, :cond_5b

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->getExpressions()Ljava/util/List;

    move-result-object p1

    .line 565
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_59

    .line 566
    :cond_41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Expression;

    .line 567
    invoke-direct {p0, v0}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;)Z

    move-result v0

    if-nez v0, :cond_45

    :goto_57
    const/4 p1, 0x0

    return p1

    :cond_59
    :goto_59
    const/4 p1, 0x1

    return p1

    .line 568
    :cond_5b
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    if-eqz v0, :cond_66

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression$Rule;)Z

    move-result p1

    return p1

    :cond_66
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Expression;Ljava/util/Map;)Z
    .registers 4

    .line 2
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    if-eqz v0, :cond_2c

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$AllOf;->getExpressions()Ljava/util/List;

    move-result-object p1

    .line 142
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_57

    .line 143
    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Expression;

    .line 144
    invoke-direct {p0, v0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_59

    .line 145
    :cond_2c
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    if-eqz v0, :cond_5b

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->getExpressions()Ljava/util/List;

    move-result-object p1

    .line 287
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_59

    .line 288
    :cond_41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/Filter$Expression;

    .line 289
    invoke-direct {p0, v0, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1

    :cond_59
    :goto_59
    const/4 p1, 0x0

    return p1

    .line 290
    :cond_5b
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    if-eqz v0, :cond_66

    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression$Rule;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_66
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Value;Lio/bidmachine/analytics/Filter$Value;)Z
    .registers 4

    .line 1566
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_16

    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz v0, :cond_16

    .line 1567
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    check-cast p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    invoke-interface {p1, p2}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1

    .line 1569
    :cond_16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final a(Lio/bidmachine/analytics/Filter$Value;Ljava/util/List;)Z
    .registers 7

    .line 1313
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1316
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 1396
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_56

    .line 1397
    :cond_17
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/analytics/Filter$Value;

    .line 1398
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1399
    instance-of p1, p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-eqz p1, :cond_54

    .line 1480
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_56

    .line 1481
    :cond_40
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/analytics/Filter$Value;

    .line 1482
    instance-of p2, p2, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    if-nez p2, :cond_44

    :cond_54
    const/4 p1, 0x0

    return p1

    :cond_56
    :goto_56
    return v1
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/Filter;)Z
    .registers 2

    .line 291
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter;->getExpression()Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;)Z

    move-result p1

    return p1
.end method

.method public final a(Lio/bidmachine/analytics/Filter;Ljava/util/Map;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter;->getExpression()Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter$Expression;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.analytics.internal.a.e.a (io.bidmachine.analytics.internal.a.e$a)
.class public abstract synthetic Lio/bidmachine/analytics/internal/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/Filter$Operator;->values()[Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->EQ:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->NEQ:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->GT:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->GTE:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->LT:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->LTE:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->IN:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->NOT_IN:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    sput-object v0, Lio/bidmachine/analytics/internal/a/e$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
