###### Class info.flowersoft.theotown.draftloader.CarDraftLoader (info.flowersoft.theotown.draftloader.CarDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/CarDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "CarDraftLoader.java"


# static fields
.field public static final LEGACY_TO_V2:[I

.field public static final V2_TO_LEGACY:[I

.field public static final autoColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 24
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->V2_TO_LEGACY:[I

    .line 25
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->LEGACY_TO_V2:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->autoColors:Ljava/util/List;

    .line 34
    const-string v1, "5F77BF"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "B2372C"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "B28E6B"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "547F46"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "CC9F47"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "946BB2"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "6FB259"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "CC603D"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "3F5072"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "8288A3"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "B26291"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "E5C689"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "FFFFFF"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "333333"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "666666"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "B5BABF"

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V
    .registers 10

    .line 99
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    neg-int p4, p4

    mul-int/2addr p4, p3

    int-to-float p4, p4

    .line 101
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v1

    add-float/2addr p4, v1

    invoke-virtual {p6}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-virtual {p6, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p4, p6

    .line 102
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p6

    int-to-float p5, p5

    sub-float/2addr p6, p5

    int-to-float p3, p3

    mul-float/2addr p6, p3

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result p3

    add-float/2addr p6, p3

    invoke-virtual {p7}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p3

    rem-int/2addr p2, p3

    invoke-virtual {p7, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p6, p2

    .line 100
    invoke-virtual {v0, p1, p4, p6}, Lio/blueflower/stapel2d/drawing/Image;->setHandle(IFF)V

    return-void
.end method

.method public getLoadingTags()[Ljava/lang/String;
    .registers 4

    .line 57
    const-string v0, "bus"

    const-string v1, "train car"

    const-string v2, "car"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/CarDraft;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v6, 0x8

    .line 107
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Linfo/flowersoft/theotown/draftloader/CarDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-virtual {v0, v1, v3, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Linfo/flowersoft/theotown/draft/CarDraft;

    .line 109
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 111
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_684

    goto :goto_4e

    :sswitch_2e
    const-string v5, "train car"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_4e

    :cond_37
    move v3, v7

    goto :goto_4e

    :sswitch_39
    const-string v5, "car"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_4e

    :cond_42
    move v3, v8

    goto :goto_4e

    :sswitch_44
    const-string v5, "bus"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v9

    :goto_4e
    packed-switch v3, :pswitch_data_692

    .line 129
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not recognize vehicle type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :pswitch_6e
    iput v7, v4, Linfo/flowersoft/theotown/draft/CarDraft;->vehicleType:I

    const-wide/16 v1, 0x100

    .line 124
    iput-wide v1, v4, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    .line 125
    iput-boolean v9, v4, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    .line 126
    iput-boolean v9, v4, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    goto :goto_8a

    .line 113
    :pswitch_79
    iput v9, v4, Linfo/flowersoft/theotown/draft/CarDraft;->vehicleType:I

    const-wide/16 v1, 0x60

    .line 114
    iput-wide v1, v4, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    goto :goto_8a

    .line 117
    :pswitch_80
    iput v8, v4, Linfo/flowersoft/theotown/draft/CarDraft;->vehicleType:I

    const-wide/16 v1, 0x80

    .line 118
    iput-wide v1, v4, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    .line 119
    iput-boolean v9, v4, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    .line 120
    iput-boolean v9, v4, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    .line 132
    :goto_8a
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "v2"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v10

    if-nez v10, :cond_9f

    .line 133
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_9f

    :cond_9d
    move v11, v9

    goto :goto_a0

    :cond_9f
    :goto_9f
    move v11, v8

    .line 134
    :goto_a0
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    const-string v3, "frames per variant"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    const/4 v12, 0x4

    if-eq v1, v12, :cond_cb

    if-ne v1, v6, :cond_b2

    goto :goto_cb

    .line 136
    :cond_b2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frames per variant must be 4 or 8 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cb
    :goto_cb
    if-eqz v11, :cond_d1

    .line 140
    sget-object v1, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    :goto_cf
    move-object v3, v1

    goto :goto_d4

    :cond_d1
    sget-object v1, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    goto :goto_cf

    :goto_d4
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 139
    const-string v1, "frames"

    const-string v2, "frame"

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_67a

    if-eqz v11, :cond_e8

    .line 144
    sget-object v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    :goto_e6
    move-object v3, v0

    goto :goto_eb

    :cond_e8
    sget-object v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    goto :goto_e6

    :goto_eb
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    .line 143
    const-string v1, "overlay frames"

    const-string v2, "overlay frame"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    move-object v13, v4

    iput-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    if-eqz v11, :cond_18d

    .line 148
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 149
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    if-eqz v10, :cond_130

    move v1, v9

    .line 151
    :goto_109
    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_13e

    .line 152
    invoke-virtual {v10, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_124

    .line 154
    invoke-virtual {v4, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 155
    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_12e

    .line 157
    :cond_124
    invoke-virtual {v2, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 158
    invoke-virtual {v10, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_12e
    add-int/2addr v1, v8

    goto :goto_109

    :cond_130
    move v1, v9

    .line 162
    :goto_131
    iget-object v4, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v4

    if-ge v1, v4, :cond_13e

    .line 163
    invoke-virtual {v2, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 164
    invoke-virtual {v3, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/2addr v1, v8

    goto :goto_131

    .line 167
    :cond_13e
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_15f

    .line 171
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "auto align"

    invoke-virtual {v1, v4, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 173
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v5, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->setV2Handle([ILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;ZI)V

    .line 174
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    iget v5, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->setV2Handle([ILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;ZI)V

    goto :goto_18d

    .line 168
    :cond_15f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames which is not a multiple of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_18d
    :goto_18d
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "auto colorize"

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 178
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 179
    array-length v2, v1

    iput v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerColor:I

    .line 180
    sget-object v2, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->autoColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, v1

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 181
    array-length v2, v2

    iget v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v2, v3

    new-array v2, v2, [Lio/blueflower/stapel2d/drawing/Color;

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    move v2, v9

    .line 182
    :goto_1b1
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1bf

    .line 183
    array-length v4, v1

    rem-int v4, v2, v4

    aget v4, v1, v4

    aput v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_1b1

    :cond_1bf
    move v2, v9

    .line 185
    :goto_1c0
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v4, v3

    if-ge v2, v4, :cond_200

    .line 186
    sget-object v4, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->autoColors:Ljava/util/List;

    iget v5, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    mul-int/2addr v5, v2

    array-length v10, v1

    div-int/2addr v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/drawing/Color;

    aput-object v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_1c0

    .line 189
    :cond_1d6
    const-string v1, "colors"

    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColors(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)[Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_200

    .line 191
    iget-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v2

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v3, v4

    .line 192
    array-length v5, v1

    if-le v5, v3, :cond_200

    .line 194
    array-length v1, v1

    mul-int/2addr v4, v1

    new-array v1, v4, [I

    iput-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    move v1, v9

    .line 195
    :goto_1f2
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v3

    if-ge v1, v4, :cond_200

    .line 196
    array-length v4, v2

    rem-int v4, v1, v4

    aget v4, v2, v4

    aput v4, v3, v1

    add-int/2addr v1, v8

    goto :goto_1f2

    .line 202
    :cond_200
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "overlay colors"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27e

    .line 203
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lio/blueflower/stapel2d/drawing/Color;

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    move v2, v9

    .line 205
    :goto_219
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_22d

    .line 206
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_219

    .line 209
    :cond_22d
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 210
    array-length v2, v1

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v3, v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    move v2, v9

    .line 211
    :goto_239
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v3

    if-ge v2, v4, :cond_247

    .line 212
    array-length v4, v1

    rem-int v4, v2, v4

    aget v4, v1, v4

    aput v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_239

    .line 215
    :cond_247
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_263

    .line 217
    array-length v2, v1

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v3, v3

    mul-int/2addr v2, v3

    new-array v2, v2, [Lio/blueflower/stapel2d/drawing/Color;

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    move v2, v9

    .line 218
    :goto_255
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v4, v3

    if-ge v2, v4, :cond_263

    .line 219
    array-length v4, v1

    rem-int v4, v2, v4

    aget-object v4, v1, v4

    aput-object v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_255

    .line 223
    :cond_263
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    .line 224
    iget-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    iget v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v2, v3

    new-array v2, v2, [Lio/blueflower/stapel2d/drawing/Color;

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    move v2, v9

    .line 225
    :goto_270
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v4, v3

    if-ge v2, v4, :cond_27e

    .line 226
    array-length v4, v1

    rem-int v4, v2, v4

    aget-object v4, v1, v4

    aput-object v4, v3, v2

    add-int/2addr v2, v8

    goto :goto_270

    .line 230
    :cond_27e
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    const-string v2, " but expected "

    if-eqz v1, :cond_2b4

    array-length v1, v1

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v3, v4

    if-ne v1, v3, :cond_28e

    goto :goto_2b4

    .line 231
    :cond_28e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Color count missmatch: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_2b4
    :goto_2b4
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_2e8

    array-length v1, v1

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v3, v4

    if-ne v1, v3, :cond_2c2

    goto :goto_2e8

    .line 235
    :cond_2c2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay color count missmatch: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    iget v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_2e8
    :goto_2e8
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "capacity"

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    .line 241
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52c

    if-eqz v11, :cond_30a

    .line 242
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "normalize animation pos"

    invoke-virtual {v1, v4, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30a

    move v1, v8

    goto :goto_30b

    :cond_30a
    move v1, v9

    .line 243
    :goto_30b
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 244
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v13, Linfo/flowersoft/theotown/draft/CarDraft;->animationSpots:Ljava/util/List;

    .line 245
    iget-object v5, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v5, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    move v5, v9

    .line 247
    :goto_31b
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_52c

    .line 248
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v10

    .line 249
    const-string v14, "id"

    invoke-virtual {v10, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 250
    const-string v15, "pos"

    invoke-virtual {v10, v15}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v15

    if-nez v15, :cond_346

    .line 252
    new-instance v15, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move/from16 v16, v7

    move v7, v9

    .line 253
    :goto_33b
    iget v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v7, v3, :cond_348

    .line 254
    invoke-virtual {v15, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/2addr v7, v8

    goto :goto_33b

    :cond_346
    move/from16 v16, v7

    .line 258
    :cond_348
    const-string v3, "color"

    invoke-virtual {v0, v3, v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v22

    .line 260
    const-string v3, "frames"

    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_37e

    .line 261
    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const-string v12, "frame"

    if-nez v17, :cond_364

    invoke-virtual {v10, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37e

    .line 262
    :cond_364
    new-instance v7, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 263
    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_377

    .line 264
    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_37e

    .line 266
    :cond_377
    invoke-virtual {v10, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_37e
    :goto_37e
    if-nez v7, :cond_3bb

    move v3, v9

    .line 271
    :goto_381
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3bb

    .line 272
    invoke-virtual {v15, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_39e

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v15, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_396

    goto :goto_39e

    :cond_396
    if-eqz v7, :cond_3b7

    .line 283
    div-int/lit8 v12, v3, 0x2

    invoke-virtual {v7, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_3b7

    .line 273
    :cond_39e
    :goto_39e
    invoke-virtual {v15, v3, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(II)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v12, v3, 0x1

    .line 274
    invoke-virtual {v15, v12, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(II)Linfo/flowersoft/theotown/util/json/JSONArray;

    if-nez v7, :cond_3b7

    .line 277
    new-instance v7, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move v12, v9

    .line 278
    :goto_3ae
    div-int/lit8 v9, v3, 0x2

    if-ge v12, v9, :cond_3b7

    .line 279
    invoke-virtual {v7, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/2addr v12, v8

    goto :goto_3ae

    :cond_3b7
    :goto_3b7
    add-int/lit8 v3, v3, 0x2

    const/4 v9, 0x0

    goto :goto_381

    :cond_3bb
    if-eqz v1, :cond_3c7

    .line 289
    const-string v3, "normalize pos"

    invoke-virtual {v10, v3, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3c7

    move v3, v8

    goto :goto_3c8

    :cond_3c7
    const/4 v3, 0x0

    .line 290
    :goto_3c8
    new-instance v9, Lio/blueflower/stapel2d/util/IntList;

    iget-object v12, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v9, v12}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    move/from16 v24, v8

    const/4 v12, 0x0

    .line 291
    :goto_3d5
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_463

    if-eqz v3, :cond_43c

    .line 294
    iget v8, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    if-ne v8, v6, :cond_3f5

    .line 295
    div-int/lit8 v8, v12, 0x2

    rem-int/2addr v8, v6

    move/from16 v25, v6

    const/4 v6, 0x4

    if-ge v8, v6, :cond_3ed

    sget-object v6, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->LEGACY_TO_V2:[I

    aget v8, v6, v8

    :cond_3ed
    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v6, v12, 0x10

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v8, v6

    goto :goto_408

    :cond_3f5
    move/from16 v25, v6

    .line 297
    sget-object v6, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->LEGACY_TO_V2:[I

    div-int/lit8 v8, v12, 0x2

    const/16 v23, 0x4

    rem-int/lit8 v8, v8, 0x4

    aget v6, v6, v8

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v8, v12, 0x8

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    .line 299
    :goto_408
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    rem-int v6, v8, v6

    invoke-virtual {v15, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v6

    move/from16 v26, v1

    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    div-int/lit8 v17, v12, 0x2

    aget v1, v1, v17

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v6, v1

    invoke-virtual {v9, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v8, v8, 0x1

    .line 300
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    rem-int/2addr v8, v1

    invoke-virtual {v15, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v1

    iget-object v6, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v6, v17

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v1, v6

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_45b

    :cond_43c
    move/from16 v26, v1

    move/from16 v25, v6

    .line 302
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    rem-int v1, v12, v1

    invoke-virtual {v15, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v8, v12, 0x1

    .line 303
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    rem-int/2addr v8, v1

    invoke-virtual {v15, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_45b
    add-int/lit8 v12, v12, 0x2

    move/from16 v6, v25

    move/from16 v1, v26

    goto/16 :goto_3d5

    :cond_463
    move/from16 v26, v1

    move/from16 v25, v6

    .line 307
    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_494

    .line 308
    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    .line 309
    :goto_471
    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    iget-object v6, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_494

    .line 310
    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    .line 311
    rem-int v6, v3, v1

    invoke-virtual {v9, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {v9, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    .line 312
    rem-int/2addr v3, v1

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_471

    .line 316
    :cond_494
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v18, :cond_506

    .line 318
    const-string v1, "important"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v7, :cond_4e7

    .line 322
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 323
    :goto_4b0
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_4e3

    if-eqz v11, :cond_4d9

    .line 324
    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v6

    iget v8, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    rem-int/2addr v6, v8

    const/4 v8, 0x4

    if-ge v6, v8, :cond_4da

    .line 325
    sget-object v6, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->V2_TO_LEGACY:[I

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v10

    iget v12, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    rem-int/2addr v10, v12

    aget v6, v6, v10

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v10

    iget v12, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v10, v12

    mul-int/2addr v10, v12

    add-int/2addr v6, v10

    aput v6, v1, v3

    goto :goto_4e0

    :cond_4d9
    const/4 v8, 0x4

    .line 327
    :cond_4da
    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v1, v3

    :goto_4e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b0

    :cond_4e3
    move-object/from16 v21, v1

    :goto_4e5
    const/4 v8, 0x4

    goto :goto_4ea

    :cond_4e7
    const/16 v21, 0x0

    goto :goto_4e5

    .line 332
    :goto_4ea
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->animationSpots:Ljava/util/List;

    new-instance v17, Linfo/flowersoft/theotown/draft/CarAnimationSpot;

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v22}, Linfo/flowersoft/theotown/draft/CarAnimationSpot;-><init>(Linfo/flowersoft/theotown/draft/AnimationDraft;Lio/blueflower/stapel2d/util/IntList;Z[ILio/blueflower/stapel2d/drawing/Color;)V

    move-object/from16 v3, v17

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v12, v8

    move/from16 v7, v16

    move/from16 v8, v24

    move/from16 v6, v25

    move/from16 v1, v26

    const/4 v9, 0x0

    goto/16 :goto_31b

    .line 317
    :cond_506
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been found (for use in car "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52c
    move/from16 v24, v8

    .line 336
    iget-wide v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    .line 339
    const-string v3, "fire brigade"

    invoke-virtual {v13, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_553

    const-string v3, "medic"

    .line 340
    invoke-virtual {v13, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_553

    const-string v3, "police"

    .line 341
    invoke-virtual {v13, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_553

    const-string v3, "swat"

    .line 342
    invoke-virtual {v13, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_551

    goto :goto_553

    :cond_551
    const/4 v3, 0x0

    goto :goto_55c

    :cond_553
    :goto_553
    const-wide/32 v3, 0x1000000

    or-long/2addr v1, v3

    const/4 v3, 0x0

    .line 344
    iput-boolean v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    .line 345
    iput-boolean v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    .line 347
    :goto_55c
    iget-object v4, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v5, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "flag"

    invoke-virtual {v4, v5, v6, v1, v2}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    .line 353
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "speed"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->speed:F

    .line 354
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "length"

    const-wide/high16 v4, 0x3ffc000000000000L    # 1.75

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->length:F

    .line 355
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    if-eqz v2, :cond_596

    iget-wide v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    const-wide/16 v6, 0x1f0c

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_596

    move/from16 v2, v24

    goto :goto_597

    :cond_596
    move v2, v3

    :goto_597
    const-string v4, "driveable"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    .line 364
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "chargeable"

    iget-boolean v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    .line 368
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "tail"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_60d

    .line 369
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_60d

    .line 370
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Linfo/flowersoft/theotown/draft/CarDraft;

    iput-object v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    move v9, v3

    .line 371
    :goto_5c4
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_60d

    const/4 v2, 0x0

    .line 372
    invoke-virtual {v1, v9, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_606

    .line 373
    iget-object v4, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_606

    invoke-virtual {v1, v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5e0

    goto :goto_606

    .line 376
    :cond_5e0
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v4, :cond_5ef

    .line 378
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    aput-object v4, v3, v9

    goto :goto_60a

    .line 380
    :cond_5ef
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "May not find a car with id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_606
    :goto_606
    iget-object v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    aput-object v13, v3, v9

    :goto_60a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c4

    .line 387
    :cond_60d
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-wide v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->price:J

    long-to-int v2, v2

    const-string v3, "price"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->signedPrice(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->price:J

    .line 388
    iget v1, v13, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->speed:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x3e8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 389
    iget-wide v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->price:J

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_637

    iput-wide v4, v13, Linfo/flowersoft/theotown/draft/CarDraft;->price:J

    .line 392
    :cond_637
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v2, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_656

    .line 396
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v1, :cond_650

    .line 398
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->CARS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_650
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->CARS:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v13

    .line 393
    :cond_656
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frames must be a multiple of frames per variant ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67a
    move-object/from16 v0, p0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Got no frames"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_684
    .sparse-switch
        0x17e80 -> :sswitch_44
        0x17fd4 -> :sswitch_39
        0x35cfb9bc -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_692
    .packed-switch 0x0
        :pswitch_80
        :pswitch_79
        :pswitch_6e
    .end packed-switch
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->load()Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v0

    return-object v0
.end method

.method public final setV2Handle([ILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;ZI)V
    .registers 35

    move-object/from16 v0, p1

    move/from16 v1, p5

    if-nez v0, :cond_8

    goto/16 :goto_a4

    .line 63
    :cond_8
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    const/4 v2, 0x0

    move v5, v2

    .line 64
    :goto_c
    array-length v2, v0

    if-ge v5, v2, :cond_a4

    .line 66
    aget v2, v0, v5

    add-int/lit8 v11, v5, 0x1

    .line 67
    aget v3, v0, v11

    aput v3, v0, v5

    .line 68
    aput v2, v0, v11

    add-int/lit8 v14, v5, 0x2

    .line 69
    aget v2, v0, v14

    add-int/lit8 v20, v5, 0x3

    .line 70
    aget v3, v0, v20

    aput v3, v0, v14

    .line 71
    aput v2, v0, v20

    .line 75
    aget v4, v0, v11

    const/4 v7, 0x4

    const/4 v8, 0x7

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v10}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    .line 77
    aget v7, v0, v5

    const/16 v10, 0xc

    move v8, v11

    const/4 v11, 0x7

    move-object/from16 v6, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v9, p4

    invoke-virtual/range {v6 .. v13}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    .line 79
    aget v13, v0, v20

    const/16 v16, 0xc

    const/16 v17, 0x3

    move-object/from16 v12, p0

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move/from16 v15, p4

    invoke-virtual/range {v12 .. v19}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    .line 81
    aget v16, v0, v14

    const/16 v19, 0x4

    move/from16 v17, v20

    const/16 v20, 0x3

    move-object/from16 v15, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v18, p4

    invoke-virtual/range {v15 .. v22}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    const/16 v2, 0x8

    if-lt v1, v2, :cond_a1

    add-int/lit8 v23, v5, 0x4

    .line 85
    aget v22, v0, v23

    const/16 v25, 0xa

    const/16 v26, 0x5

    move-object/from16 v21, p0

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move/from16 v24, p4

    invoke-virtual/range {v21 .. v28}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    add-int/lit8 v23, v5, 0x5

    .line 87
    aget v22, v0, v23

    const/16 v25, 0xe

    const/16 v26, 0x3

    invoke-virtual/range {v21 .. v28}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    add-int/lit8 v23, v5, 0x6

    .line 89
    aget v22, v0, v23

    const/16 v25, 0x4

    const/16 v26, 0x2

    invoke-virtual/range {v21 .. v28}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    add-int/lit8 v23, v5, 0x7

    .line 91
    aget v22, v0, v23

    const/16 v25, 0x7

    const/16 v26, 0x3

    invoke-virtual/range {v21 .. v28}, Linfo/flowersoft/theotown/draftloader/CarDraftLoader;->applyCorrection(IIZIILio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/util/IntList;)V

    :cond_a1
    add-int/2addr v5, v1

    goto/16 :goto_c

    :cond_a4
    :goto_a4
    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.CarDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.CarDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/CarDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/CarDraft;-><init>()V

    return-object v0
.end method
