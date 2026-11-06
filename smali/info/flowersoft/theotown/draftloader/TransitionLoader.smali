###### Class info.flowersoft.theotown.draftloader.TransitionLoader (info.flowersoft.theotown.draftloader.TransitionLoader)
.class public Linfo/flowersoft/theotown/draftloader/TransitionLoader;
.super Ljava/lang/Object;
.source "TransitionLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadAction(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition$Action;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 210
    new-instance v0, Linfo/flowersoft/theotown/draft/Transition$Action;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Transition$Action;-><init>()V

    .line 211
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    .line 212
    const-string v1, "code"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    .line 213
    const-string v1, "x"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->x:J

    .line 214
    const-string v1, "y"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->y:J

    .line 215
    const-string v1, "z"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J

    .line 216
    const-string v1, "x2"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->x2:J

    .line 217
    const-string v1, "y2"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->y2:J

    .line 218
    const-string v1, "w"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->w:J

    .line 219
    const-string v1, "h"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->h:J

    .line 220
    const-string v1, "frame"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    .line 221
    const-string v1, "level"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->level:I

    .line 222
    const-string v1, "invert"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->invert:Z

    .line 223
    const-string v1, "ignore"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->ignoreSuccess:Z

    .line 225
    const-string v1, "type"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    sget-object v3, Linfo/flowersoft/theotown/draft/Transition;->actionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->canResolve(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 227
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->resolve(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->type:I

    .line 232
    const-string v1, "condition"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 233
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 237
    :cond_9c
    const-string v1, "inner"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c1

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->innerActions:Ljava/util/List;

    .line 240
    :goto_ab
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_c1

    .line 241
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Action;->innerActions:Ljava/util/List;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_c1
    return-object v0

    .line 229
    :cond_c2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not find action type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 182
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_b

    .line 183
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object p1

    return-object p1

    .line 184
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 185
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object p1

    return-object p1

    .line 187
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not load action from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadAction(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Transition$Action;
    .registers 5

    const/16 v0, 0x3d

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_63

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 199
    new-instance p1, Linfo/flowersoft/theotown/draft/Transition$Action;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Transition$Action;-><init>()V

    .line 200
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_SET:I

    iput v2, p1, Linfo/flowersoft/theotown/draft/Transition$Action;->type:I

    .line 201
    iput-object v1, p1, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    .line 202
    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    return-object p1

    .line 197
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not evaluate empty in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not assign to empty variable in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not load action from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadCondition(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition$Condition;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 147
    new-instance v0, Linfo/flowersoft/theotown/draft/Transition$Condition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Transition$Condition;-><init>()V

    .line 148
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    .line 149
    const-string v1, "code"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    .line 150
    const-string v1, "x"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->x:J

    .line 151
    const-string v1, "y"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->y:J

    .line 152
    const-string v1, "w"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->w:J

    .line 153
    const-string v1, "h"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->h:J

    .line 154
    const-string v1, "z"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->z:J

    .line 155
    const-string v1, "x2"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->x2:J

    .line 156
    const-string v1, "y2"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->y2:J

    .line 157
    const-string v1, "min"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->min:J

    .line 158
    const-string v1, "max"

    invoke-virtual {p0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->max:J

    .line 159
    const-string v1, "frame"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    .line 160
    const-string v1, "level"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I

    .line 161
    const-string v1, "invert"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->invert:Z

    .line 163
    const-string v1, "type"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    sget-object v3, Linfo/flowersoft/theotown/draft/Transition;->conditionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->canResolve(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 165
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->resolve(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    .line 170
    const-string v1, "inner"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    .line 173
    :goto_9f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_b5

    .line 174
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_b5
    return-object v0

    .line 167
    :cond_b6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not find condition type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 116
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_b

    .line 117
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object p1

    return-object p1

    .line 118
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 119
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object p1

    return-object p1

    .line 121
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not load condition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadCondition(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Transition$Condition;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_2
    sget-object v2, Linfo/flowersoft/theotown/draft/Transition;->COMPARISON_OPS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_69

    .line 127
    aget-object v2, v2, v1

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_66

    .line 130
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 135
    new-instance p1, Linfo/flowersoft/theotown/draft/Transition$Condition;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Transition$Condition;-><init>()V

    .line 136
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_COMPARE:I

    iput v3, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    .line 137
    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    .line 138
    iput-object v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    .line 139
    iput v1, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    return-object p1

    .line 133
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Right part may not be empty in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left part may not be empty in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No comparison operator in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadTransition(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_4
    new-instance v0, Linfo/flowersoft/theotown/draft/Transition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Transition;-><init>()V

    .line 56
    const-string v1, "p"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Transition;->probability:F

    .line 57
    const-string v1, "fixed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition;->fixedProbability:Z

    .line 58
    const-string v1, "double check"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition;->doubleCheck:Z

    .line 59
    const-string v1, "always"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/Transition;->always:Z

    .line 61
    const-string v1, "conditions"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 63
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 64
    new-instance v3, Linfo/flowersoft/theotown/draft/Transition$Condition;

    invoke-direct {v3}, Linfo/flowersoft/theotown/draft/Transition$Condition;-><init>()V

    .line 65
    sget v4, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_OR:I

    iput v4, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    move v4, v2

    .line 68
    :goto_4a
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_83

    .line 69
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v5

    .line 70
    new-instance v6, Linfo/flowersoft/theotown/draft/Transition$Condition;

    invoke-direct {v6}, Linfo/flowersoft/theotown/draft/Transition$Condition;-><init>()V

    .line 71
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_AND:I

    iput v7, v6, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    move v7, v2

    .line 74
    :goto_65
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7b

    .line 75
    iget-object v8, v6, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 77
    :cond_7b
    iget-object v5, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 80
    :cond_83
    iget-object v1, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a6

    .line 81
    iget-object v1, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 82
    iget-object v1, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_a6

    .line 83
    iget-object v1, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 87
    :cond_a6
    iput-object v3, v0, Linfo/flowersoft/theotown/draft/Transition;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 90
    :cond_a8
    const-string v1, "condition"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 91
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Transition;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 94
    :cond_ba
    const-string v1, "actions"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_d9

    move v3, v2

    .line 96
    :goto_c3
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e8

    .line 97
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Transition;->actions:Ljava/util/List;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 100
    :cond_d9
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Transition;->actions:Ljava/util/List;

    const-string v3, "action"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_e8
    const-string v1, "else actions"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 105
    :goto_f0
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    if-ge v2, p1, :cond_11b

    .line 106
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/Transition;->elseActions:Ljava/util/List;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    .line 108
    :cond_106
    const-string v1, "else action"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 109
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Transition;->elseActions:Ljava/util/List;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11b
    return-object v0
.end method

.method public loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Linfo/flowersoft/theotown/draftloader/TransitionLoader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;-><init>()V

    .line 21
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    instance-of p2, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const/4 v2, 0x0

    if-eqz p2, :cond_30

    .line 24
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    move p2, v2

    .line 26
    :goto_1c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge p2, v3, :cond_3d

    .line 27
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadTransition(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 29
    :cond_30
    instance-of p2, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz p2, :cond_84

    .line 30
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadTransition(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/Transition;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_3d
    sget-object p1, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz p1, :cond_83

    move p1, v2

    .line 36
    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_83

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/Transition;

    .line 38
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Transition;->actions:Ljava/util/List;

    move v1, v2

    .line 39
    :goto_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_80

    .line 40
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Transition$Action;

    .line 41
    iget v4, v3, Linfo/flowersoft/theotown/draft/Transition$Action;->type:I

    sget v5, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LOAD_CITY:I

    if-ne v4, v5, :cond_7d

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_80
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_83
    return-object v0

    .line 32
    :cond_84
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string p2, "No transition array or object could be found"

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optLong(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J
    .registers 6

    .line 253
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 255
    :try_start_6
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 256
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_17

    .line 257
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :catch_15
    move-exception p1

    goto :goto_3b

    .line 258
    :cond_17
    const-string p2, "max"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 260
    :cond_25
    const-string p2, "min"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    .line 262
    :cond_30
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3e

    .line 263
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_3a
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_6 .. :try_end_3a} :catch_15

    return-wide p1

    .line 268
    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3e
    return-wide p3
.end method
