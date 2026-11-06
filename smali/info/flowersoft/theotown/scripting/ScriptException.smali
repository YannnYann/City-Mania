###### Class info.flowersoft.theotown.scripting.ScriptException (info.flowersoft.theotown.scripting.ScriptException)
.class public Linfo/flowersoft/theotown/scripting/ScriptException;
.super Ljava/lang/RuntimeException;
.source "ScriptException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    .registers 6

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In script "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    :cond_11
    const-string p2, "<unknown>"

    :goto_13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
