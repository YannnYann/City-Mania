###### Class info.flowersoft.theotown.stages.tiledialog.ScriptBasedInformation (info.flowersoft.theotown.stages.tiledialog.ScriptBasedInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "ScriptBasedInformation.java"


# instance fields
.field public answer:Ljava/lang/String;

.field public mutual:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 15
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    .line 16
    const-string v4, "showDialog"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 18
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 19
    iget v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileX:I

    .line 20
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    iget v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileY:I

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    new-array v6, v2, [Lvm2/LuaValue;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    .line 19
    invoke-static {v6}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invokeUntil(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lvm2/Varargs;->narg()I

    move-result v4

    if-lt v4, v0, :cond_48

    invoke-virtual {v3, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 22
    invoke-virtual {v3, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;->answer:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v2, v0}, Lvm2/Varargs;->optboolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;->mutual:Z

    return v0

    :cond_48
    return v1
.end method

.method public getIcon()I
    .registers 2

    .line 38
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getIcon()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ScriptBasedInformation;->mutual:Z

    return v0
.end method
