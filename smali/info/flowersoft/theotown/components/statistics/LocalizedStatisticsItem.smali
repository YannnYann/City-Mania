###### Class info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem (info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem)
.class public abstract Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.super Ljava/lang/Object;
.source "LocalizedStatisticsItem.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/statistics/StatisticsItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)Ljava/lang/String;
    .registers 3

    .line 10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;->getNameId()I

    move-result p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getNameId()I
.end method
