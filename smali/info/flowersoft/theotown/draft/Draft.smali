###### Class info.flowersoft.theotown.draft.Draft (info.flowersoft.theotown.draft.Draft)
.class public Linfo/flowersoft/theotown/draft/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# instance fields
.field public active:Z

.field public aliases:[Ljava/lang/String;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public author:Ljava/lang/String;

.field public category:Linfo/flowersoft/theotown/draft/CategoryDraft;

.field public dev:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

.field public hidden:Z

.field public hideId:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public iconFrames:[I

.field public id:Ljava/lang/String;

.field public index:Z

.field public inherited:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public inheritedFromNonPlugin:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public isFinal:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public is_unlocked:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public loaded:Z

.field public luaMeta:Lvm2/LuaValue;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public luaRepr:Lvm2/LuaValue;

.field public luaScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ">;"
        }
    .end annotation

    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public meta:Linfo/flowersoft/theotown/util/json/JSONObject;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public mustBeInherited:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public muteLua:Z

.field public ordinal:I

.field public parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public plugin:Z

.field public pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public pluginId:I

.field public premium:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public previewFrames:[I

.field public privilegedMode:Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public protectedPlugin:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public scenarioIds:[Ljava/lang/String;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public searchable:Z

.field public separator:Z

.field public showNewMarker:Z

.field public soundClick:I

.field public strictLua:Z

.field public text:Ljava/lang/String;

.field public textId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    .line 120
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    .line 206
    sget-object v1, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Unprivileged:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    iput-object v1, p0, Linfo/flowersoft/theotown/draft/Draft;->privilegedMode:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 246
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    const/4 v1, -0x1

    .line 252
    iput v1, p0, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    .line 296
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->showNewMarker:Z

    .line 297
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->searchable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 326
    :cond_4
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_13

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getLuaMeta()Lvm2/LuaValue;
    .registers 3

    .line 384
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_13

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Draft;->luaMeta:Lvm2/LuaValue;

    if-nez v1, :cond_13

    .line 386
    :try_start_8
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->luaMeta:Lvm2/LuaValue;
    :try_end_e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    :cond_13
    :goto_13
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->luaMeta:Lvm2/LuaValue;

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_1a
    return-object v0
.end method

.method public getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_23

    .line 368
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 370
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 372
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_19

    .line 373
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1

    .line 374
    :cond_19
    instance-of p1, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz p1, :cond_23

    .line 375
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;
    .registers 2

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    return-object v0
.end method

.method public getUnifiedId()Ljava/lang/String;
    .registers 4

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "\\$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRequirement()Z
    .registers 2

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExternalPlugin()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v0, :cond_a

    iget v0, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->isFinal:Z

    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->privilegedMode:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->isPrivileged()Z

    move-result v0

    return v0
.end method

.method public isSuperPrivileged()Z
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->privilegedMode:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->isSuperPrivileged()Z

    move-result v0

    return v0
.end method

.method public isUnlocked()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->is_unlocked:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public matchesScenario(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 313
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Draft;->scenarioIds:[Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_1b

    :cond_8
    move v1, v0

    .line 315
    :goto_9
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Draft;->scenarioIds:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    .line 316
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    return v0
.end method

.method public setFinal()V
    .registers 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Draft;->isFinal:Z

    return-void
.end method

.method public setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;",
            "Linfo/flowersoft/theotown/draft/PrivilegedMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 231
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    if-ne p1, v0, :cond_6

    .line 232
    iput-object p2, p0, Linfo/flowersoft/theotown/draft/Draft;->privilegedMode:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    :cond_6
    return-void
.end method

.method public setRequirement(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V
    .registers 2
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 348
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/Draft;->requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    return-void
.end method

.method public setUnlocked(Z)V
    .registers 2
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 357
    iput-boolean p1, p0, Linfo/flowersoft/theotown/draft/Draft;->is_unlocked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
