###### Class info.flowersoft.theotown.draftloader.CraneDraftLoader (info.flowersoft.theotown.draftloader.CraneDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "CraneDraftLoader.java"


# static fields
.field public static final CRANE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;->CRANE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "crane"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/CraneDraft;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/CraneDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Linfo/flowersoft/theotown/draft/CraneDraft;

    .line 33
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 35
    sget-object v6, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;->CRANE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v8, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v4, "frames"

    const-string v5, "frame"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v0

    iput-object v0, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 37
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CraneDraft;

    if-eqz v0, :cond_31

    .line 39
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->CRANES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_31
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->CRANES:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;->load()Linfo/flowersoft/theotown/draft/CraneDraft;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.CraneDraftLoader.AnonymousClass1 (info.flowersoft.theotown.draftloader.CraneDraftLoader$1)
.class public Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$1;
.super Ljava/lang/Object;
.source "CraneDraftLoader.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/CraneDraftLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleX(III)I
    .registers 4

    .line 0
    const/16 p1, 0xe

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    .line 0
    const/16 p1, 0xb

    return p1
.end method

###### Class info.flowersoft.theotown.draftloader.CraneDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.CraneDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/CraneDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/CraneDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/CraneDraft;-><init>()V

    return-object v0
.end method
