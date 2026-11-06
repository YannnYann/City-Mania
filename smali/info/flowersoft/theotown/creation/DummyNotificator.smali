###### Class info.flowersoft.theotown.creation.DummyNotificator (info.flowersoft.theotown.creation.DummyNotificator)
.class public final Linfo/flowersoft/theotown/creation/DummyNotificator;
.super Linfo/flowersoft/theotown/city/components/Notificator;
.source "DummyNotificator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Notificator;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentNotification()Linfo/flowersoft/theotown/city/components/Notification;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public lock(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 2

    .line 0
    return-void
.end method

.method public poll()V
    .registers 1

    .line 0
    return-void
.end method

.method public unlock()V
    .registers 1

    .line 0
    return-void
.end method
