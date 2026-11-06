###### Class info.flowersoft.theotown.draft.ScenarioDraft (info.flowersoft.theotown.draft.ScenarioDraft)
.class public final Linfo/flowersoft/theotown/draft/ScenarioDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "ScenarioDraft.kt"


# instance fields
.field public cityFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public completedVarName:Ljava/lang/String;

.field public discordUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCityFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->cityFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public final getCompletedVarName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->completedVarName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscordUrl()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->discordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNormalizedTargetFileName()Ljava/lang/String;
    .registers 15

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scenario_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 34
    const-string v3, "#"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 35
    const-string v9, "$"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 36
    const-string v2, "%"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 37
    const-string v8, "!"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "&"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 39
    const-string v8, "\'"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "{"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 41
    const-string v8, "\""

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "}"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 43
    const-string v8, ":"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "\\"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 45
    const-string v8, "@"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "<"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 47
    const-string v8, ">"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "`"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 49
    const-string v8, "\u00b4"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "|"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 51
    const-string v8, "?"

    const-string v9, ""

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "/"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isCompleted()Z
    .registers 5

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->completedVarName:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 56
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->completedVarName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final setCityFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->cityFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method

.method public final setCompletedVarName(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->completedVarName:Ljava/lang/String;

    return-void
.end method

.method public final setDiscordUrl(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/ScenarioDraft;->discordUrl:Ljava/lang/String;

    return-void
.end method
