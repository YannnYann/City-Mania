###### Class info.flowersoft.theotown.store.PluginUnloader (info.flowersoft.theotown.store.PluginUnloader)
.class public Linfo/flowersoft/theotown/store/PluginUnloader;
.super Ljava/lang/Object;
.source "PluginUnloader.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/store/PluginUnloader;


# instance fields
.field public final deactivatedDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final hiddenDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final pluginStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final ssp:Linfo/flowersoft/theotown/util/SSP;

.field public final unloadedDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "localplugins"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->pluginStates:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginUnloader;->loadState()V

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;
    .registers 1

    .line 248
    sget-object v0, Linfo/flowersoft/theotown/store/PluginUnloader;->instance:Linfo/flowersoft/theotown/store/PluginUnloader;

    if-nez v0, :cond_b

    new-instance v0, Linfo/flowersoft/theotown/store/PluginUnloader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/store/PluginUnloader;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/store/PluginUnloader;->instance:Linfo/flowersoft/theotown/store/PluginUnloader;

    .line 249
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/store/PluginUnloader;->instance:Linfo/flowersoft/theotown/store/PluginUnloader;

    return-object v0
.end method


# virtual methods
.method public apply(ILjava/util/Set;Ljava/util/Set;Lcom/badlogic/gdx/utils/IntSet;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/badlogic/gdx/utils/IntSet;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginUnloader;->reset()V

    .line 99
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 100
    invoke-virtual {v1, p5}, Linfo/flowersoft/theotown/draft/Draft;->matchesScenario(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_d

    :cond_20
    if-eqz p3, :cond_2b

    .line 105
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_d

    :cond_2b
    if-eqz p4, :cond_38

    .line 110
    iget v2, v1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v2, :cond_38

    .line 111
    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_d

    :cond_38
    if-eqz p2, :cond_42

    .line 116
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 118
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 121
    :cond_42
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/PluginUnloader;->classifyDraftType(Linfo/flowersoft/theotown/draft/Draft;)I

    move-result v2

    if-lt v2, p1, :cond_4c

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->scenarioIds:[Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 127
    :cond_4c
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    const-string v3, "unload"

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 129
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    :cond_5b
    const/4 v2, 0x0

    .line 132
    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    .line 133
    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v3, :cond_6f

    const/4 v3, 0x1

    .line 136
    iput-boolean v3, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    .line 137
    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_6f
    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v3, :cond_d

    .line 140
    iput-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    .line 141
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 146
    :cond_7b
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->updateDraftCallbacks()V

    return-void
.end method

.method public final classifyDraftType(Linfo/flowersoft/theotown/draft/Draft;)I
    .registers 3

    .line 64
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->inheritedFromNonPlugin:Z

    if-nez v0, :cond_2b

    .line 65
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v0, :cond_1c

    .line 66
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isInternalPlugin(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x3

    return p1

    :cond_1a
    const/4 p1, 0x2

    return p1

    .line 73
    :cond_1c
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isMultiplayer()Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1

    :cond_2b
    const/4 p1, 0x4

    return p1
.end method

.method public declared-synchronized getMissingPlugins(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 225
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz v2, :cond_2a

    .line 226
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_38

    :cond_2a
    :goto_2a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_28

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 229
    :cond_36
    monitor-exit p0

    return-object v0

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_28

    throw p1
.end method

.method public final loadState()V
    .registers 6

    .line 176
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v1

    const-string v2, "plugins"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    :goto_14
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 178
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 179
    const-string v3, "id"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    const-string v4, "active"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 181
    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->pluginStates:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_33} :catch_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :catch_36
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3a
    return-void
.end method

.method public declared-synchronized requiresRestart()Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 215
    :goto_3
    :try_start_3
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_21

    .line 216
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->requiresRestart()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1f

    if-eqz v2, :cond_1c

    monitor-exit p0

    return v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_1f
    move-exception v0

    goto :goto_32

    .line 218
    :cond_21
    :try_start_21
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1f

    if-eq v1, v2, :cond_30

    move v0, v3

    :cond_30
    monitor-exit p0

    return v0

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1f

    throw v0
.end method

.method public reset()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 154
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    iput-boolean v0, v2, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    move v1, v0

    .line 156
    :goto_18
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2e

    .line 157
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    iput-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 159
    :cond_2e
    :goto_2e
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 160
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 161
    iput-boolean v3, v1, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    .line 162
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    const-string v4, "load"

    invoke-virtual {v2, v4, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 164
    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 167
    :cond_52
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->updateDraftCallbacks()V

    return-void
.end method

.method public reuse()V
    .registers 2

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->pluginStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->unloadedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->hiddenDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->deactivatedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginUnloader;->loadState()V

    return-void
.end method

.method public declared-synchronized saveState()V
    .registers 7

    monitor-enter p0

    .line 197
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 198
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_33

    .line 200
    :try_start_18
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 201
    const-string v4, "id"

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 202
    const-string v4, "active"

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isActive()Z

    move-result v2

    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 203
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_32
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_18 .. :try_end_32} :catch_35
    .catchall {:try_start_18 .. :try_end_32} :catchall_33

    goto :goto_c

    :catchall_33
    move-exception v0

    goto :goto_4e

    :catch_35
    move-exception v2

    .line 205
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 209
    :cond_3a
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v1

    .line 210
    const-string v2, "plugins"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_33

    .line 212
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_33

    throw v0
.end method

.method public shouldPluginBeActive(Ljava/lang/String;)Z
    .registers 3

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->pluginStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginUnloader;->pluginStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method
