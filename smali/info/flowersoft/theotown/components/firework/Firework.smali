###### Class info.flowersoft.theotown.components.firework.Firework (info.flowersoft.theotown.components.firework.Firework)
.class public Linfo/flowersoft/theotown/components/firework/Firework;
.super Ljava/lang/Object;
.source "Firework.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/firework/FireworkParticle;",
            ">;"
        }
    .end annotation
.end field

.field public selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/AnimationDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    .line 34
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public clear()V
    .registers 2

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 10

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 109
    :goto_8
    iget-object v3, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 110
    iget-object v3, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    .line 111
    iget-object v4, p0, Linfo/flowersoft/theotown/components/firework/Firework;->city:Linfo/flowersoft/theotown/city/City;

    iget v5, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    iget v6, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    .line 112
    iget-object v5, p0, Linfo/flowersoft/theotown/components/firework/Firework;->city:Linfo/flowersoft/theotown/city/City;

    iget v6, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    iget v7, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v5

    .line 113
    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v6

    float-to-int v6, v6

    .line 114
    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    iget v7, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    mul-float/2addr v5, v7

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 115
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v6

    int-to-float v4, v4

    iget-object v3, v3, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v1

    invoke-virtual {p1, v5, v6, v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_51
    return-void
.end method

.method public drawScreen(Lio/blueflower/stapel2d/drawing/Engine;F)V
    .registers 9

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    .line 122
    iget v2, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 123
    iget v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    iget v4, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 124
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v1, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {p1, v4, v2, v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_6

    :cond_32
    return-void
.end method

.method public emit(Linfo/flowersoft/theotown/draft/AnimationDraft;IIF)Z
    .registers 14

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float v3, p2, v0

    int-to-float p2, p3

    add-float v4, p2, v0

    add-float v5, p4, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 134
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/components/firework/Firework;->spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "particles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 44
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 45
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/firework/FireworkParticle;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 48
    iget-object v1, v0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v1, :cond_33

    .line 49
    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_33
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_1c

    .line 53
    :cond_37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    :cond_3b
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string v0, "particles"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 65
    :goto_a
    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 70
    :cond_26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final spawn(Linfo/flowersoft/theotown/components/firework/FireworkParticle;)V
    .registers 10

    .line 139
    iget-object v0, p1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const-string v1, "firework"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 140
    const-string v1, "next"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/4 v1, 0x0

    move v2, v1

    .line 143
    :goto_12
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 144
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 145
    const-string v4, "id"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v4, :cond_50

    .line 148
    const-string v5, "p"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v5, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 149
    const-string v6, "always"

    invoke-virtual {v3, v6, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 150
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_50

    .line 151
    invoke-virtual {p0, v4, p1}, Linfo/flowersoft/theotown/components/firework/Firework;->spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/firework/FireworkParticle;)V

    goto :goto_50

    .line 154
    :cond_4b
    iget-object v3, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v3, v4, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 159
    :cond_53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 161
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/components/firework/Firework;->spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/firework/FireworkParticle;)V

    .line 163
    :cond_66
    iget-object p1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    :cond_6b
    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFF)V
    .registers 32

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    .line 172
    const-string v3, "firework"

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 173
    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-float v13, v6

    .line 174
    const-string v4, "speed"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v14, v6

    .line 175
    const-string v4, "speed variation"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v15, v8

    .line 176
    const-string v4, "n"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    const-string v8, "time"

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 178
    const-string v9, "time variation"

    invoke-virtual {v3, v9, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 180
    new-instance v6, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v6, v0, v1, v2}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    .line 181
    invoke-virtual {v6}, Lio/blueflower/stapel2d/math/Vector3D;->normalize()V

    .line 182
    sget-object v7, Lio/blueflower/stapel2d/math/Vector3D;->X_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/math/Vector3D;->crossProduct(Lio/blueflower/stapel2d/math/Vector3D;)Lio/blueflower/stapel2d/math/Vector3D;

    move-result-object v7

    .line 183
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/math/Vector3D;->crossProduct(Lio/blueflower/stapel2d/math/Vector3D;)Lio/blueflower/stapel2d/math/Vector3D;

    move-result-object v9

    .line 184
    invoke-virtual {v7}, Lio/blueflower/stapel2d/math/Vector3D;->normalize()V

    .line 185
    invoke-virtual {v9}, Lio/blueflower/stapel2d/math/Vector3D;->normalize()V

    const/4 v10, 0x0

    :goto_5d
    if-ge v10, v4, :cond_102

    .line 188
    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v12

    move/from16 v16, v3

    int-to-float v3, v10

    add-float/2addr v12, v3

    int-to-float v3, v4

    div-float/2addr v12, v3

    const v3, 0x40c90fdb

    mul-float/2addr v12, v3

    .line 189
    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    mul-float/2addr v3, v15

    mul-float/2addr v3, v14

    add-float/2addr v3, v14

    move/from16 v19, v4

    .line 191
    new-instance v4, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v4}, Lio/blueflower/stapel2d/math/Vector3D;-><init>()V

    move/from16 v20, v10

    move-object/from16 v21, v11

    float-to-double v10, v12

    move-wide/from16 v22, v10

    .line 192
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v4, v10, v7}, Lio/blueflower/stapel2d/math/Vector3D;->add(FLio/blueflower/stapel2d/math/Vector3D;)V

    .line 193
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v4, v10, v9}, Lio/blueflower/stapel2d/math/Vector3D;->add(FLio/blueflower/stapel2d/math/Vector3D;)V

    .line 195
    new-instance v10, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v10}, Lio/blueflower/stapel2d/math/Vector3D;-><init>()V

    float-to-double v11, v13

    move-wide/from16 v22, v11

    .line 196
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11, v6}, Lio/blueflower/stapel2d/math/Vector3D;->add(FLio/blueflower/stapel2d/math/Vector3D;)V

    .line 197
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11, v4}, Lio/blueflower/stapel2d/math/Vector3D;->add(FLio/blueflower/stapel2d/math/Vector3D;)V

    .line 198
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/math/Vector3D;->multiply(F)V

    .line 199
    invoke-virtual {v10, v0, v1, v2}, Lio/blueflower/stapel2d/math/Vector3D;->add(FFF)V

    .line 201
    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v3, v18

    mul-float v3, v3, v16

    int-to-float v4, v8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v12, v8, v3

    .line 202
    new-instance v4, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    move-object v3, v9

    iget v9, v10, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    iget v11, v10, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    iget v10, v10, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    move/from16 v17, v11

    move v11, v10

    move/from16 v10, v17

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v21, v20

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v20, v3

    move v3, v8

    move/from16 v8, p4

    invoke-direct/range {v4 .. v12}, Linfo/flowersoft/theotown/components/firework/FireworkParticle;-><init>(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFFI)V

    move-object v5, v4

    move-object/from16 v4, p0

    .line 203
    iget-object v6, v4, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v21, 0x1

    move-object/from16 v5, p1

    move v8, v3

    move/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v4, v19

    move-object/from16 v9, v20

    goto/16 :goto_5d

    :cond_102
    move-object/from16 v4, p0

    return-void
.end method

.method public final spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/firework/FireworkParticle;)V
    .registers 11

    .line 168
    iget v2, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    iget v3, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    iget v4, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    iget v5, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->xSpeed:F

    iget v6, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->ySpeed:F

    iget v7, p2, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/components/firework/Firework;->spawn(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFF)V

    return-void
.end method

.method public update()V
    .registers 3

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/components/firework/Firework;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 83
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/firework/Firework;->update(I)V

    return-void
.end method

.method public update(I)V
    .registers 8

    if-gtz p1, :cond_3

    goto :goto_50

    :cond_3
    const/4 v0, 0x0

    .line 89
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 90
    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;

    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 92
    iget v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    iget v4, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->xSpeed:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    .line 93
    iget v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    iget v4, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->ySpeed:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    .line 94
    iget v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    iget v4, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    iput v3, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 95
    iput v4, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    .line 96
    iget v2, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->restLifeTime:I

    sub-int/2addr v2, p1

    iput v2, v1, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->restLifeTime:I

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_43

    if-gtz v2, :cond_4d

    .line 99
    :cond_43
    iget-object v2, p0, Linfo/flowersoft/theotown/components/firework/Firework;->particles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    .line 101
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/firework/Firework;->spawn(Linfo/flowersoft/theotown/components/firework/FireworkParticle;)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_50
    :goto_50
    return-void
.end method
