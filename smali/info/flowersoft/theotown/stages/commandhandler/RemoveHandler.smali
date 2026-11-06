###### Class info.flowersoft.theotown.stages.commandhandler.RemoveHandler (info.flowersoft.theotown.stages.commandhandler.RemoveHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;
.super Ljava/lang/Object;
.source "RemoveHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 19
    const-string v0, "rm -rf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "rm rf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "sudo rm -rf"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "sudo rm rf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method public final deleteFolder(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting files in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 25
    const-string p1, "sudo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 26
    const-string p1, "Insufficient permissions, you have to use sudo rm -rf instead\nThis will delete all of your game files and data. This includes your cities, and regions."

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_e
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p2, "rm_rf_console"

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;->deleteFolder(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getLocalMapSaveDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;->deleteFolder(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOldMapSaveDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;->deleteFolder(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    .line 34
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getRegionsDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;->deleteFolder(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    .line 35
    const-string p1, "Resetting variables ..."

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clear()V

    .line 37
    const-string p1, "Resetting account ..."

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->logout()V

    .line 39
    const-string p1, "Resetting settings ..."

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->resetAll()V

    .line 41
    const-string p1, "Restarting game ..."

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 42
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->restartAppSlowly()V

    return-void
.end method
