###### Class info.flowersoft.theotown.stages.commandhandler.PluginListHandler (info.flowersoft.theotown.stages.commandhandler.PluginListHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler;
.super Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.source "PluginListHandler.java"


# direct methods
.method public static synthetic $r8$lambda$GzQ1cZ-Hl1ovl-fxBX1mQY9VB_8(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8

    .line 16
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    const-string v4, ": "

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 17
    iget-boolean v5, v1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v1, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    if-eqz v5, :cond_a

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_a

    .line 22
    :cond_49
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TPCModule;->getCurrentUserTrustLevel()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9c

    .line 23
    const-string v0, "Not indexed drafts:"

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 24
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 25
    iget-boolean v5, v1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v5, :cond_63

    iget-boolean v5, v1, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    if-nez v5, :cond_63

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_63

    :cond_9c
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;-><init>()V

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "plugins"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.PluginListHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.commandhandler.PluginListHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler;->$r8$lambda$GzQ1cZ-Hl1ovl-fxBX1mQY9VB_8(Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
