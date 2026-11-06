###### Class info.flowersoft.theotown.scripting.Script (info.flowersoft.theotown.scripting.Script)
.class public Linfo/flowersoft/theotown/scripting/Script;
.super Ljava/lang/Object;
.source "Script.java"


# instance fields
.field public active:Z

.field public final baseName:Ljava/lang/String;

.field public final draft:Linfo/flowersoft/theotown/draft/Draft;

.field public initializer:Lvm2/LuaFunction;

.field public final logMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final logTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public parent:Linfo/flowersoft/theotown/scripting/Script;

.field public final path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public script:Lvm2/LuaValue;

.field public final sourceDraft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Linfo/flowersoft/theotown/scripting/Script;->active:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->logMessages:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->logTimes:Ljava/util/List;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/Script;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 31
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/Script;->sourceDraft:Linfo/flowersoft/theotown/draft/Draft;

    .line 32
    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/Script;->baseName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/Script;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 34
    const-string p1, ""

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/Script;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getInitializer()Lvm2/LuaFunction;
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->initializer:Lvm2/LuaFunction;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 3

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->script:Lvm2/LuaValue;

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-static {p1, p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->create(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Linfo/flowersoft/theotown/scripting/Script;
    .registers 2

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->parent:Linfo/flowersoft/theotown/scripting/Script;

    return-object v0
.end method

.method public getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public getScript()Lvm2/LuaValue;
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->script:Lvm2/LuaValue;

    return-object v0
.end method

.method public getSourceDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->sourceDraft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Linfo/flowersoft/theotown/scripting/Script;->active:Z

    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->sourceDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    return v0
.end method

.method public isSuperPrivileged()Z
    .registers 2

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->sourceDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isSuperPrivileged()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 4

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->logMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/Script;->logTimes:Ljava/util/List;

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/Script;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/Script;->draft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] defined by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/Script;->sourceDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/Script;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/Script;->name:Ljava/lang/String;

    return-object v0
.end method
