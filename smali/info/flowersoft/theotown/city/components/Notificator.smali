###### Class info.flowersoft.theotown.city.components.Notificator (info.flowersoft.theotown.city.components.Notificator)
.class public abstract Linfo/flowersoft/theotown/city/components/Notificator;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Notificator.java"


# instance fields
.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/Notificator;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Linfo/flowersoft/theotown/city/components/NotificationListener;)V
    .registers 3

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notificator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract getCurrentNotification()Linfo/flowersoft/theotown/city/components/Notification;
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x4

    return v0
.end method

.method public informListeners(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 4

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notificator;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/NotificationListener;

    .line 19
    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/components/NotificationListener;->onNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public abstract lock(Linfo/flowersoft/theotown/city/components/Notification;)V
.end method

.method public abstract poll()V
.end method

.method public removeListener(Linfo/flowersoft/theotown/city/components/NotificationListener;)V
    .registers 3

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notificator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract unlock()V
.end method
