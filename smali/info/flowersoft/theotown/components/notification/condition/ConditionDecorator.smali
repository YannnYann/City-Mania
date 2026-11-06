###### Class info.flowersoft.theotown.components.notification.condition.ConditionDecorator (info.flowersoft.theotown.components.notification.condition.ConditionDecorator)
.class public abstract Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "ConditionDecorator.java"


# instance fields
.field public condition:Linfo/flowersoft/theotown/components/notification/condition/Condition;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;)V
    .registers 3

    .line 11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 13
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;->condition:Linfo/flowersoft/theotown/components/notification/condition/Condition;

    return-void
.end method
