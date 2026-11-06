###### Class info.flowersoft.theotown.components.notification.condition.ConditionGroup (info.flowersoft.theotown.components.notification.condition.ConditionGroup)
.class public Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "ConditionGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;
    }
.end annotation


# instance fields
.field public conditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/notification/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public operator:Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;

.field public startValue:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$1;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;-><init>(Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;ZLinfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;ZLinfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 33
    invoke-direct {p0, p3}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 35
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->operator:Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;

    .line 37
    iput-boolean p2, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->startValue:Z

    return-void
.end method


# virtual methods
.method public addCondition(Linfo/flowersoft/theotown/components/notification/condition/Condition;)V
    .registers 3

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate()Z
    .registers 5

    .line 42
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->startValue:Z

    .line 44
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/notification/condition/Condition;

    .line 45
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->operator:Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->evaluate()Z

    move-result v2

    invoke-interface {v3, v0, v2}, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;->op(ZZ)Z

    move-result v0

    goto :goto_8

    :cond_1f
    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    :goto_6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "condition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/notification/condition/Condition;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_6

    .line 62
    :cond_2e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6

    :cond_32
    return-void
.end method

.method public removeCondition(Linfo/flowersoft/theotown/components/notification/condition/Condition;)Z
    .registers 3

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;->conditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/notification/condition/Condition;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "condition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v3

    invoke-interface {v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 73
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_34
    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.condition.ConditionGroup.AnonymousClass1 (info.flowersoft.theotown.components.notification.condition.ConditionGroup$1)
.class Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$1;
.super Ljava/lang/Object;
.source "ConditionGroup.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;-><init>(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public op(ZZ)Z
    .registers 3

    .line 0
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.components.notification.condition.ConditionGroup.Operator (info.flowersoft.theotown.components.notification.condition.ConditionGroup$Operator)
.class public interface abstract Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup$Operator;
.super Ljava/lang/Object;
.source "ConditionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/condition/ConditionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operator"
.end annotation


# virtual methods
.method public abstract op(ZZ)Z
.end method
