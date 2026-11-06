###### Class info.flowersoft.theotown.components.notification.condition.TrueCondition (info.flowersoft.theotown.components.notification.condition.TrueCondition)
.class public Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "TrueCondition.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
