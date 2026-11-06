###### Class info.flowersoft.theotown.draftloader.CategoryDraftLoader (info.flowersoft.theotown.draftloader.CategoryDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "CategoryDraftLoader.java"


# static fields
.field public static final HOTKEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/input/KeyAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;->HOTKEYS:Ljava/util/Map;

    .line 62
    const-string v1, "$cat_road00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ROAD:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "$cat_terrain00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_TERRAIN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "$cat_energy00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ENERGY:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "$cat_water00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_WATER:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "$cat_education00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_EDUCATION:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "$cat_park00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_PARK:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "$cat_police00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_POLICE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "$cat_firebrigade00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_FIREBRIGADE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "$cat_roaddeco00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ROADDECO:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "$cat_medic00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_MEDIC:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "$cat_sport00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_SPORT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "$cat_management00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_MANAGEMENT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "$cat_award00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_AWARD:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "$cat_zone00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ZONE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "$cat_disaster00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_DISASTER:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "$cat_recent00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_RECENT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "$cat_hills00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_HILLS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "$cat_asphalt00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ASPHALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "$cat_tree00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_TREE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "$cat_military00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_MILITARY:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "$cat_transport00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_TRANSPORT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "$cat_intersections00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_INTERSECTIONS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "$cat_bus00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_BUS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "$cat_train00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_TRAIN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "$cat_train00_parts00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_TRAIN_PARTS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "$cat_elevatedtrain00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ELEVATED_TRAIN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "$cat_metro00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_METRO:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "$cat_airport00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_AIRPORT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "$cat_supply00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_SUPPLY:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "$cat_wastedisposal00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_WASTE_DISPOSAL:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "$cat_bodydisposal00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_FUNERAL:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "$cat_public00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_PUBLIC:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "$cat_religion00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_RELIGION:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "$cat_decoration00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_DECORATION:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "$cat_fence00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_FENCE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "$category_christmas00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_CHRISTMAS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "$category_firework00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_FIREWORK:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "$cat_service00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_SERVICE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "$cat_landmark00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_LANDMARK:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "$cat_plugins00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_PLUGINS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "$cat_rci_parts00"

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_RCI_BUILDINGS:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryHotkey(Ljava/lang/String;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/input/KeyAction;
    .registers 4

    .line 106
    sget-object v0, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;->HOTKEYS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/input/KeyAction;

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "category"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/CategoryDraft;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 119
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "category"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "category from"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 120
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "$cat_root00"

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 123
    :cond_2a
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 125
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    const-string v4, "frame"

    invoke-virtual {p0, v3, v4, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 127
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v1, :cond_70

    .line 128
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v2, :cond_70

    .line 129
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-nez v2, :cond_4f

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 130
    :cond_4f
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    iput-object v0, v3, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    goto :goto_55

    .line 131
    :cond_64
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_70
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->hotkey:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;->getCategoryHotkey(Ljava/lang/String;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/input/KeyAction;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/CategoryDraft;->hotkey:Linfo/flowersoft/theotown/input/KeyAction;

    .line 137
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_81

    array-length v1, v1

    if-nez v1, :cond_88

    :cond_81
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v1, :cond_89

    array-length v1, v1

    if-eqz v1, :cond_89

    :cond_88
    return-object v0

    .line 139
    :cond_89
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v2, "Category needs some frames!"

    invoke-direct {v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader;->load()Linfo/flowersoft/theotown/draft/CategoryDraft;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.CategoryDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.CategoryDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/CategoryDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/CategoryDraft;-><init>()V

    return-object v0
.end method
