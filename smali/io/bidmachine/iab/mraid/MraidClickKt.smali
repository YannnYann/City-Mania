###### Class io.bidmachine.iab.mraid.MraidClickKt (io.bidmachine.iab.mraid.MraidClickKt)
.class public final Lio/bidmachine/iab/mraid/MraidClickKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final hasClcScript(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 2
    invoke-virtual {v2}, Lio/bidmachine/rendering/model/ScriptConfig;->getScriptId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sclck"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 5
    :cond_21
    check-cast v0, Lio/bidmachine/rendering/model/ScriptConfig;

    :cond_23
    if-eqz v0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
