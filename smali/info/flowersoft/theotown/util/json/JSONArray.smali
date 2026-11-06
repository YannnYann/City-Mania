###### Class info.flowersoft.theotown.util.json.JSONArray (info.flowersoft.theotown.util.json.JSONArray)
.class public Linfo/flowersoft/theotown/util/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field public final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONTokener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 82
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_12

    .line 83
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    return-void

    .line 85
    :cond_12
    const-string v0, "JSONArray"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONTokener;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Linfo/flowersoft/theotown/util/json/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 532
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_12

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 239
    :cond_9
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_25} :catch_25

    .line 243
    :catch_25
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range [0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 269
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 267
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "boolean"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(I)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 300
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 298
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "double"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getInt(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 327
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 331
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 329
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "int"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    instance-of v1, v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v1, :cond_b

    .line 420
    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object v0

    .line 422
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "JSONArray"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    instance-of v1, v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v1, :cond_b

    .line 443
    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0

    .line 445
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "JSONObject"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getLong(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 362
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 360
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "long"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 388
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    .line 390
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "String"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public hashCode()I
    .registers 2

    .line 536
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    .line 225
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 226
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 483
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>()V

    .line 484
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer;->open(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 485
    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_28

    if-lez v3, :cond_1c

    .line 487
    iget-object v4, v0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1c
    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONStringer;->value(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 491
    :cond_28
    sget-object p1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {v0, p1, p1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer;->close(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 492
    iget-object p1, v0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_12

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_12

    .line 254
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public optBoolean(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public optBoolean(IZ)Z
    .registers 3

    .line 283
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 284
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 285
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public optDouble(I)D
    .registers 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 307
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .registers 4

    .line 314
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 315
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 316
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public optInt(I)I
    .registers 3

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(II)I

    move-result p1

    return p1
.end method

.method public optInt(II)I
    .registers 3

    .line 345
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 346
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public optJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 430
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 431
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_b

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 453
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 454
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_b

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public optLong(I)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .registers 4

    .line 376
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 377
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 378
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .registers 3

    .line 399
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 406
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 407
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    return-object p2
.end method

.method public put(D)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(I)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(ID)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 176
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public put(II)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public put(IJ)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 196
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 210
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 212
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    .line 214
    :cond_e
    :goto_e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1d

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 217
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(IZ)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public put(J)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Z)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toJSONObject(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 464
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 465
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_17

    const/4 p1, 0x0

    return-object p1

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2c

    .line 470
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 500
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>()V

    .line 501
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    .line 502
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 520
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>(I)V

    .line 521
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    .line 522
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 525
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->array()Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 526
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 527
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->value(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    goto :goto_9

    .line 529
    :cond_17
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->endArray()Linfo/flowersoft/theotown/util/json/JSONStringer;

    return-void
.end method
