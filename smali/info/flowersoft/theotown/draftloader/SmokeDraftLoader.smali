###### Class info.flowersoft.theotown.draftloader.SmokeDraftLoader (info.flowersoft.theotown.draftloader.SmokeDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "SmokeDraftLoader.java"


# static fields
.field public static final SMOKE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;->SMOKE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

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
    const-string v0, "smoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;->load()Linfo/flowersoft/theotown/draft/SmokeDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/SmokeDraft;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v4, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-direct {v4}, Linfo/flowersoft/theotown/draft/SmokeDraft;-><init>()V

    .line 33
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 35
    sget-object v3, Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;->SMOKE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v5, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v1, "frames"

    const-string v2, "frame"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 37
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "speed"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v4, Linfo/flowersoft/theotown/draft/SmokeDraft;->speed:F

    .line 39
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "scale"

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v4, Linfo/flowersoft/theotown/draft/SmokeDraft;->scale:F

    .line 41
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SMOKES:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

###### Class info.flowersoft.theotown.draftloader.SmokeDraftLoader.AnonymousClass1 (info.flowersoft.theotown.draftloader.SmokeDraftLoader$1)
.class public Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader$1;
.super Ljava/lang/Object;
.source "SmokeDraftLoader.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/SmokeDraftLoader;
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

    .line 15
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    .line 0
    return p2
.end method
