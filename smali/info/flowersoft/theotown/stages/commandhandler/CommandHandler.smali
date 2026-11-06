###### Class info.flowersoft.theotown.stages.commandhandler.CommandHandler (info.flowersoft.theotown.stages.commandhandler.CommandHandler)
.class public interface abstract Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# virtual methods
.method public abstract canHandle(Ljava/lang/String;)Z
.end method

.method public abstract handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
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
.end method
