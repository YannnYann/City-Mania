###### Class info.flowersoft.theotown.stages.commandhandler.VarsHandler (info.flowersoft.theotown.stages.commandhandler.VarsHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;
.super Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.source "VarsHandler.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public static synthetic $r8$lambda$4R-Dn8uqN0JxyUTby9Bx1jv3NDU(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showVars(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJTaql4LfsOHhiJP6uB_gfHrf9I(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showGlobalVars(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eQxc6l7qVzk-5HzZ9MCmEmMd6rs(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showGlobalVars(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRFnMsteg1-9sUS_S7xg2EnCtxc(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showVars(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;-><init>()V

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->city:Linfo/flowersoft/theotown/city/City;

    .line 22
    new-instance p1, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V

    const-string v0, "vlol"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 23
    new-instance p1, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V

    const-string v0, "gvlol"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 25
    new-instance p1, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V

    const-string v0, "vars"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 26
    new-instance p1, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V

    const-string v0, "gvars"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->canHandle(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final showGlobalVars(Lio/blueflower/stapel2d/util/Setter;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getNames()Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showVar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    if-eqz p2, :cond_d

    :cond_21
    const-wide/16 v4, 0x0

    .line 57
    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide v4

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 62
    :cond_41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " global variable(s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final showVar(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x5f

    const/4 v3, 0x1

    if-lt v1, v3, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_28

    .line 67
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_27

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x21

    if-ne v1, v4, :cond_27

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_28

    :cond_27
    return v3

    :cond_28
    return v0
.end method

.method public final showVars(Lio/blueflower/stapel2d/util/Setter;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->city:Linfo/flowersoft/theotown/city/City;

    if-nez v0, :cond_a

    .line 36
    const-string p2, "No city context available"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->showVar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    if-eqz p2, :cond_17

    .line 42
    :cond_2b
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 47
    :cond_4f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " variable(s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->$r8$lambda$4R-Dn8uqN0JxyUTby9Bx1jv3NDU(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->$r8$lambda$eQxc6l7qVzk-5HzZ9MCmEmMd6rs(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->$r8$lambda$mRFnMsteg1-9sUS_S7xg2EnCtxc(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;->$r8$lambda$HJTaql4LfsOHhiJP6uB_gfHrf9I(Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
