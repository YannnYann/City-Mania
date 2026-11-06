###### Class info.flowersoft.theotown.draftloader.FlyingObjectDraftLoader (info.flowersoft.theotown.draftloader.FlyingObjectDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "FlyingObjectDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 4

    .line 22
    const-string v0, "rocket"

    const-string v1, "airplane"

    const-string v2, "helicopter"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v3, Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v4, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    invoke-virtual {p0, v2, v4, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    .line 33
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 37
    iget-object v3, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_166

    goto :goto_49

    :sswitch_29
    const-string v6, "helicopter"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_49

    :cond_32
    move v5, v0

    goto :goto_49

    :sswitch_34
    const-string v6, "airplane"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_49

    :cond_3d
    move v5, v4

    goto :goto_49

    :sswitch_3f
    const-string v6, "rocket"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_49

    :cond_48
    move v5, v1

    :goto_49
    packed-switch v5, :pswitch_data_174

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not recognize flying object of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_65
    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyingType:I

    goto :goto_71

    .line 45
    :pswitch_68
    iput v0, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyingType:I

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->AIRPLANES:Ljava/util/List;

    .line 47
    iput v4, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->drawRadius:I

    goto :goto_72

    .line 42
    :pswitch_6f
    iput v4, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyingType:I

    :goto_71
    const/4 v0, 0x0

    .line 53
    :goto_72
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    const-string v4, "frame"

    invoke-virtual {p0, v3, v4, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_15c

    .line 54
    array-length v1, v1

    if-eqz v1, :cond_15c

    .line 58
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "animation"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 59
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    .line 60
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "frame animation indices"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animationSpotIndices:[[I

    goto :goto_ad

    :cond_ac
    move-object v3, p0

    .line 63
    :goto_ad
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "price"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->price:I

    .line 65
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "diamond price"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 66
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    if-ltz v1, :cond_13f

    .line 70
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "draw radius"

    iget v5, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->drawRadius:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->drawRadius:I

    .line 72
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "fly height"

    iget v5, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyHeight:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyHeight:I

    .line 73
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v4, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    float-to-double v4, v4

    const-string v6, "speed"

    invoke-virtual {v1, v6, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    .line 74
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "capacity"

    iget v5, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    mul-int/lit16 v1, v1, 0x7d0

    const v4, 0x186a0

    add-int/2addr v1, v4

    .line 77
    iget v4, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->price:I

    if-ge v4, v1, :cond_116

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    if-nez v4, :cond_116

    .line 78
    iput v1, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->price:I

    .line 81
    :cond_116
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Drafts;->getOld(Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    if-eqz v1, :cond_128

    .line 83
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->FLYINGS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_128

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_128
    if-eqz v0, :cond_139

    .line 88
    iget v1, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_136

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 89
    :cond_136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_139
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FLYINGS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 67
    :cond_13f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Diamond price may not be negative but was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15c
    move-object v3, p0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flying objects require frames but did not define any"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_166
    .sparse-switch
        -0x372cb92c -> :sswitch_3f
        -0x285a60ae -> :sswitch_34
        -0xe7c6429 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_68
        :pswitch_65
    .end packed-switch
.end method

###### Class info.flowersoft.theotown.draftloader.FlyingObjectDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.FlyingObjectDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/FlyingObjectDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;-><init>()V

    return-object v0
.end method
