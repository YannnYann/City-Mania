###### Class info.flowersoft.theotown.draftloader.ShaderDraftLoader (info.flowersoft.theotown.draftloader.ShaderDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ShaderDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 11
    const-string v0, "shader"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/ShaderDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ShaderDraft;

    .line 18
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 20
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "vertex"

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->readFileOrString(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ShaderDraft;->vertexCode:Ljava/lang/String;

    .line 21
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "fragment"

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->readFileOrString(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ShaderDraft;->fragmentCode:Ljava/lang/String;

    .line 23
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SHADERS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.ShaderDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.ShaderDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/ShaderDraftLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/draft/ShaderDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/ShaderDraft;-><init>()V

    return-object v0
.end method
