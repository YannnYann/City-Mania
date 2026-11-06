###### Class io.bidmachine.internal.C4222f (io.bidmachine.internal.f)
.class public final Lio/bidmachine/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/f$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/internal/f;

    invoke-direct {v0}, Lio/bidmachine/internal/f;-><init>()V

    sput-object v0, Lio/bidmachine/internal/f;->a:Lio/bidmachine/internal/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentSessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initResponseSessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_b6

    .line 4
    :cond_1c
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getMonitorsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "sdkAnalyticConfig.monitorsList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_b6

    const-string v4, "it"

    if-eqz v3, :cond_53

    :try_start_40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 268
    check-cast v3, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;

    .line 269
    sget-object v6, Lio/bidmachine/internal/f;->a:Lio/bidmachine/internal/f;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration;)Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v3

    .line 532
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 533
    :cond_53
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getReadersList()Ljava/util/List;

    move-result-object v1

    const-string v3, "sdkAnalyticConfig.readersList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 798
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 799
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    .line 800
    sget-object v3, Lio/bidmachine/internal/f;->a:Lio/bidmachine/internal/f;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/analytics/ReaderConfig;

    move-result-object v2

    .line 1066
    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 1067
    :cond_82
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v8

    .line 1068
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getBpk()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1070
    new-instance v3, Lio/bidmachine/analytics/AnalyticsConfig;

    .line 1074
    const-string p2, "bpk"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    const-string p2, "privateExtras"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p3

    .line 1076
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 1083
    sget-object p2, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-virtual {p2, p0, v3}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    .line 1086
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b6

    .line 1087
    new-instance v3, Lio/bidmachine/analytics/AnalyticsConfig;

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 1094
    invoke-virtual {p2, p0, v3}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    :try_end_b6
    .catchall {:try_start_40 .. :try_end_b6} :catchall_b6

    :catchall_b6
    :cond_b6
    :goto_b6
    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$All;)Lio/bidmachine/analytics/Filter$Expression;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$All;->getItemsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_28

    .line 1605
    invoke-virtual {p1, v2}, Lio/bidmachine/protobuf/sdk/Monitor$All;->getItems(I)Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;

    move-result-object v3

    const-string v4, "getItems(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object v3

    if-nez v3, :cond_22

    const/4 p1, 0x0

    return-object p1

    .line 1606
    :cond_22
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1608
    :cond_28
    new-instance p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/Filter$Expression$AllOf;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Any;)Lio/bidmachine/analytics/Filter$Expression;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Any;->getItemsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_28

    .line 1611
    invoke-virtual {p1, v2}, Lio/bidmachine/protobuf/sdk/Monitor$Any;->getItems(I)Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;

    move-result-object v3

    const-string v4, "getItems(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object v3

    if-nez v3, :cond_22

    const/4 p1, 0x0

    return-object p1

    .line 1612
    :cond_22
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1614
    :cond_28
    new-instance p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/Filter$Expression$AnyOf;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;)Lio/bidmachine/analytics/Filter$Expression;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->getNodeCase()Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, -0x1

    goto :goto_15

    :cond_d
    sget-object v1, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_15
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    return-object v2

    .line 1591
    :cond_20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->hasRule()Z

    move-result v0

    if-nez v0, :cond_27

    return-object v2

    .line 1594
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->getRule()Lio/bidmachine/protobuf/sdk/Monitor$Rule;

    move-result-object p1

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Rule;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    return-object p1

    .line 1595
    :cond_35
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->hasAny()Z

    move-result v0

    if-nez v0, :cond_3c

    return-object v2

    .line 1598
    :cond_3c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->getAny()Lio/bidmachine/protobuf/sdk/Monitor$Any;

    move-result-object p1

    const-string v0, "any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Any;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    return-object p1

    .line 1599
    :cond_4a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->hasAll()Z

    move-result v0

    if-nez v0, :cond_51

    return-object v2

    .line 1602
    :cond_51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;->getAll()Lio/bidmachine/protobuf/sdk/Monitor$All;

    move-result-object p1

    const-string v0, "all"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$All;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Rule;)Lio/bidmachine/analytics/Filter$Expression;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Rule;->getPathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 1618
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Rule;->getPathList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    const-string v2, "pathList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1619
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    .line 1622
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Rule;->getOp()Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    move-result-object v2

    const-string v3, "op"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Operator;)Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v2

    if-nez v2, :cond_31

    return-object v1

    .line 1623
    :cond_31
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Rule;->getMissing()Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;

    move-result-object v3

    const-string v4, "missing"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;)Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object v3

    .line 1624
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Rule;->getValuesList()Ljava/util/List;

    move-result-object p1

    .line 1626
    sget-object v4, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    if-eq v2, v4, :cond_7d

    sget-object v4, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    if-ne v2, v4, :cond_4b

    goto :goto_7d

    .line 1638
    :cond_4b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    return-object v1

    .line 1641
    :cond_52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/protobuf/sdk/Monitor$Value;

    .line 1643
    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Value;)Lio/bidmachine/analytics/Filter$Value;

    move-result-object v5

    if-nez v5, :cond_73

    return-object v1

    :cond_73
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1646
    :cond_77
    new-instance p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    invoke-direct {p1, v0, v2, v4, v3}, Lio/bidmachine/analytics/Filter$Expression$Rule;-><init>(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)V

    return-object p1

    .line 1647
    :cond_7d
    :goto_7d
    const-string v4, "protoValues"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_89

    return-object v1

    .line 1650
    :cond_89
    new-instance p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    .line 1653
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1654
    invoke-direct {p1, v0, v2, v1, v3}, Lio/bidmachine/analytics/Filter$Expression$Rule;-><init>(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)V

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;)Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1675
    sget-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    .line 1678
    sget-object p1, Lio/bidmachine/analytics/Filter$MissingBehavior;->FAIL:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object p1

    .line 1679
    :cond_16
    sget-object p1, Lio/bidmachine/analytics/Filter$MissingBehavior;->FAIL:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object p1

    .line 1680
    :cond_19
    sget-object p1, Lio/bidmachine/analytics/Filter$MissingBehavior;->PASS:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Operator;)Lio/bidmachine/analytics/Filter$Operator;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    sget-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_30

    const/4 p1, 0x0

    return-object p1

    .line 1665
    :pswitch_12
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->LTE:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1666
    :pswitch_15
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->LT:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1667
    :pswitch_18
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->GTE:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1668
    :pswitch_1b
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->GT:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1669
    :pswitch_1e
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1670
    :pswitch_21
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1671
    :pswitch_24
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->NEQ:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1672
    :pswitch_27
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->EQ:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1673
    :pswitch_2a
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->NOT_IN:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    .line 1674
    :pswitch_2d
    sget-object p1, Lio/bidmachine/analytics/Filter$Operator;->IN:Lio/bidmachine/analytics/Filter$Operator;

    return-object p1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Value;)Lio/bidmachine/analytics/Filter$Value;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Value;->getKindCase()Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, -0x1

    goto :goto_15

    :cond_d
    sget-object v1, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_15
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    const/4 p1, 0x0

    return-object p1

    .line 1685
    :cond_23
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->constructor-impl(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->box-impl(D)Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    move-result-object p1

    return-object p1

    .line 1686
    :cond_30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Value;->getIntValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->box-impl(J)Lio/bidmachine/analytics/Filter$Value$LongValue;

    move-result-object p1

    return-object p1

    .line 1687
    :cond_3d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Value;->getBoolValue()Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->constructor-impl(Z)Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->box-impl(Z)Lio/bidmachine/analytics/Filter$Value$BoolValue;

    move-result-object p1

    return-object p1

    .line 1688
    :cond_4a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Value;->getStringValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stringValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->box-impl(Ljava/lang/String;)Lio/bidmachine/analytics/Filter$Value$StringValue;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$EventFilter;)Lio/bidmachine/analytics/Filter;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$EventFilter;->hasExpr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 1573
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$EventFilter;->getExpr()Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;

    move-result-object p1

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression;)Lio/bidmachine/analytics/Filter$Expression;

    move-result-object p1

    if-nez p1, :cond_1d

    return-object v1

    .line 1574
    :cond_1d
    new-instance v0, Lio/bidmachine/analytics/Filter;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/Filter;-><init>(Lio/bidmachine/analytics/Filter$Expression;)V

    return-object v0
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration$GenericExtension;)Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$GenericExtension;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1701
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$GenericExtension;->getConfig()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 1705
    :goto_15
    new-instance v0, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;)Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;->hasIaaQuery()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1690
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;->getIaaQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    .line 1694
    :goto_16
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;->hasTtlSeconds()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1695
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;->getTtlSeconds()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    goto :goto_42

    .line 1697
    :cond_2e
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 v2, 0x5a

    invoke-static {v2, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v2

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 1699
    :goto_42
    new-instance p1, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;

    invoke-direct {p1, v0, v2, v3, v1}, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration;)Lio/bidmachine/analytics/MonitorConfig;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->hasShouldReport()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1096
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->getValue()Z

    move-result v0

    :goto_13
    move v7, v0

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 1098
    :goto_17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->hasFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1099
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getFilter()Lio/bidmachine/protobuf/sdk/Monitor$EventFilter;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$EventFilter;)Lio/bidmachine/analytics/Filter;

    move-result-object v0

    move-object v8, v0

    goto :goto_2e

    :cond_2d
    move-object v8, v1

    .line 1104
    :goto_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->hasImpExtension()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getImpExtension()Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;

    move-result-object v0

    const-string v1, "impExtension"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration$ImpExtension;)Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;

    move-result-object v1

    :cond_41
    :goto_41
    move-object v9, v1

    goto :goto_57

    .line 1105
    :cond_43
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->hasGenExtension()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getGenExtension()Lio/bidmachine/protobuf/sdk/Monitor$Configuration$GenericExtension;

    move-result-object v0

    const-string v1, "genExtension"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Monitor$Configuration$GenericExtension;)Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;

    move-result-object v1

    goto :goto_41

    .line 1108
    :goto_57
    new-instance v1, Lio/bidmachine/analytics/MonitorConfig;

    .line 1109
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v0, "name.value"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v0, "url.value"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getBatchSize()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result v4

    .line 1112
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result p1

    int-to-long v5, p1

    .line 1113
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/analytics/MonitorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IJZLio/bidmachine/analytics/Filter;Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;)V

    return-object v1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/analytics/ReaderConfig$Rule;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->hasGeneralRule()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1548
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    .line 1549
    new-instance v0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    .line 1550
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "generalRule.tag.value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v2, "generalRule.path.value"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1552
    invoke-direct {v0, v1, p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1556
    :cond_2f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->hasPurRule()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 1557
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    .line 1559
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1560
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1563
    :cond_48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1564
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->getValue()Z

    move-result v0

    goto :goto_58

    :cond_57
    const/4 v0, 0x1

    .line 1566
    :goto_58
    new-instance v2, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;

    .line 1567
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "purRule.tag.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v4, "purRule.path.value"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1569
    invoke-direct {v2, v3, p1, v1, v0}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_78
    return-object v1
.end method

.method public final a(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/analytics/ReaderConfig;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1115
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->getValue()Z

    move-result v0

    :goto_13
    move v6, v0

    goto :goto_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_13

    .line 1118
    :goto_17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v0, "name.value"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v0, "url.value"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result v0

    int-to-long v4, v0

    .line 1122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "rulesList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4c
    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1334
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 1335
    sget-object v1, Lio/bidmachine/internal/f;->a:Lio/bidmachine/internal/f;

    const-string v8, "it"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/bidmachine/internal/f;->a(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/analytics/ReaderConfig$Rule;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1545
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1546
    :cond_69
    new-instance v1, Lio/bidmachine/analytics/ReaderConfig;

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/analytics/ReaderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/util/List;)V

    return-object v1
.end method

###### Class io.bidmachine.internal.C4222f.a (io.bidmachine.internal.f$a)
.class public abstract synthetic Lio/bidmachine/internal/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;->values()[Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;->ALL:Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;->ANY:Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;->RULE:Lio/bidmachine/protobuf/sdk/Monitor$FilterExpression$NodeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->values()[Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v4, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->IN:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v4, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->NOT_IN:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v4, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->EQ:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_43

    :catch_43
    const/4 v4, 0x4

    :try_start_44
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->NEQ:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->EXISTS:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v0, v5
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_55} :catch_55

    :catch_55
    :try_start_55
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->NOT_EXISTS:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v0, v5
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->GREATER_THAN:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v0, v5
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->GREATER_THAN_OR_EQUAL:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v0, v5
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->LESS_THAN:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v0, v5
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Operator;->LESS_THAN_OR_EQUAL:Lio/bidmachine/protobuf/sdk/Monitor$Operator;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v0, v5
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_85

    :catch_85
    sput-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;->values()[Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_8e
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;->PASS:Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_96} :catch_96

    :catch_96
    :try_start_96
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;->FAIL:Lio/bidmachine/protobuf/sdk/Monitor$MissingBehavior;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_9e} :catch_9e

    :catch_9e
    sput-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;->values()[Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_a7
    sget-object v5, Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;->STRING_VALUE:Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_af} :catch_af

    :catch_af
    :try_start_af
    sget-object v1, Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;->BOOL_VALUE:Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b7
    sget-object v1, Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;->INT_VALUE:Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    sget-object v1, Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;->DOUBLE_VALUE:Lio/bidmachine/protobuf/sdk/Monitor$Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c7} :catch_c7

    :catch_c7
    sput-object v0, Lio/bidmachine/internal/f$a;->$EnumSwitchMapping$3:[I

    return-void
.end method
