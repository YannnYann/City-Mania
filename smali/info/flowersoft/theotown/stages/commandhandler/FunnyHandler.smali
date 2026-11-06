###### Class info.flowersoft.theotown.stages.commandhandler.FunnyHandler (info.flowersoft.theotown.stages.commandhandler.FunnyHandler)
.class public final Linfo/flowersoft/theotown/stages/commandhandler/FunnyHandler;
.super Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.source "FunnyHandler.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;-><init>()V

    .line 8
    const-string v0, "sudo"

    const-string v1, "Zoo do?"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "whoami"

    const-string v1, "TheoTown"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, "true"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "plugin"

    const-string v1, "Yes, create one"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "cheat"

    const-string v1, "No cheats here!"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v0, "hack"

    const-string v1, "Good luck :)"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "decrypt"

    const-string v1, "import"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Forget it!"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
