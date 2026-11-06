###### Class info.flowersoft.theotown.stages.cityinfo.CityInfoAction (info.flowersoft.theotown.stages.cityinfo.CityInfoAction)
.class public Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;
.super Linfo/flowersoft/theotown/city/components/NotificationAction;
.source "CityInfoAction.java"


# instance fields
.field public final type:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V
    .registers 7

    .line 14
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getIcon()I

    move-result v0

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTitleId(Linfo/flowersoft/theotown/city/City;)I

    move-result p2

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction$1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction$1;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-direct {p0, v0, p2, v1, v2}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(IILjava/lang/Runnable;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;->type:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    return-void
.end method


# virtual methods
.method public getType()Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 2

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;->type:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    return-object v0
.end method

.method public setAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->action:Ljava/lang/Runnable;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.CityInfoAction.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.CityInfoAction$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction$1;
.super Ljava/lang/Object;
.source "CityInfoAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method
