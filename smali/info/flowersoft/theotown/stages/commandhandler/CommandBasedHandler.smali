###### Class info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler (info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler)
.class public abstract Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.super Ljava/lang/Object;
.source "CommandBasedHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;
    }
.end annotation


# instance fields
.field public final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RM3HEz34l2qylKd80ZRZCMQ6heE(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 19
    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->commands:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V
    .registers 5

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 25
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot register command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " a second time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->getSimpleCommand(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    return-void
.end method

.method public addCommand([Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 41
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->getSimpleCommand(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;

    move-result-object p2

    const/4 v0, 0x0

    .line 42
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 43
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getSimpleCommand(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;
    .registers 3

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0
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

    .line 54
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->commands:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;

    if-eqz p1, :cond_d

    .line 56
    invoke-interface {p1, p3}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;->handle(Lio/blueflower/stapel2d/util/Setter;)V

    :cond_d
    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command (info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler$Command)
.class public interface abstract Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;
.super Ljava/lang/Object;
.source "CommandBasedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Command"
.end annotation


# virtual methods
.method public abstract handle(Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->$r8$lambda$RM3HEz34l2qylKd80ZRZCMQ6heE(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
