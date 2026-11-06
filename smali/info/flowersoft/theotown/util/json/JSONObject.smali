###### Class info.flowersoft.theotown.util.json.JSONObject (info.flowersoft.theotown.util.json.JSONObject)
.class public Linfo/flowersoft/theotown/util/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# static fields
.field public static final NEGATIVE_ZERO:Ljava/lang/Double;

.field public static final NULL:Ljava/lang/Object;


# instance fields
.field public final nameValuePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 172
    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p2, v1

    .line 173
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 175
    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONTokener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 148
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_12

    .line 149
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    return-void

    .line 151
    :cond_12
    const-string v0, "JSONObject"

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

    .line 163
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONTokener;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Linfo/flowersoft/theotown/util/json/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 639
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 640
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    .line 642
    sget-object v2, Linfo/flowersoft/theotown/util/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 643
    const-string p0, "-0"

    return-object p0

    .line 645
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_22

    .line 647
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 649
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 637
    :cond_27
    new-instance p0, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Number must be non-null"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 659
    const-string v0, ""

    if-nez p0, :cond_7

    .line 660
    const-string p0, "\"\""

    return-object p0

    .line 663
    :cond_7
    :try_start_7
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>()V

    .line 664
    sget-object v2, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->open(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 665
    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->value(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 666
    invoke-virtual {v1, v2, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->close(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 667
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_7 .. :try_end_1b} :catch_1c

    return-object p0

    .line 669
    :catch_1c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 275
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 278
    :cond_11
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_1f

    .line 279
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    .line 281
    :cond_1f
    instance-of v1, v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v1, :cond_29

    .line 282
    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 283
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p0

    .line 285
    :cond_29
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 286
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 287
    invoke-virtual {v1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 288
    iget-object p2, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public checkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3

    return-object p1

    .line 294
    :cond_3
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 586
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 330
    :cond_9
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 354
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 352
    :cond_f
    const-string v1, "boolean"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 385
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 383
    :cond_f
    const-string v1, "double"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 416
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 414
    :cond_f
    const-string v1, "int"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    instance-of v1, v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v1, :cond_b

    .line 505
    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object v0

    .line 507
    :cond_b
    const-string v1, "JSONArray"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    instance-of v1, v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v1, :cond_b

    .line 528
    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0

    .line 530
    :cond_b
    const-string v1, "JSONObject"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 447
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 445
    :cond_f
    const-string v1, "long"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    invoke-static {v0}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    .line 475
    :cond_b
    const-string v1, "String"

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 3

    .line 312
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 313
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4

    .line 577
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_a
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 368
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 369
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 370
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public optDouble(Ljava/lang/String;)D
    .registers 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 392
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .registers 4

    .line 399
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 400
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 401
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public optInt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public optInt(Ljava/lang/String;I)I
    .registers 3

    .line 430
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 431
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 432
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 515
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 516
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_b

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 538
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 539
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_b

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public optLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 454
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .registers 4

    .line 461
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 462
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 463
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 484
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 491
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 492
    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    return-object p2
.end method

.method public put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 240
    iget-object p2, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 243
    :cond_8
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 245
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/json/JSON;->checkDouble(D)D

    .line 247
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 258
    :cond_5
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_a
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 305
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJSONArray(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 547
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_9

    return-object v1

    .line 551
    :cond_9
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_10

    return-object v1

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_25

    .line 556
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 595
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>()V

    .line 596
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    .line 597
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

    .line 618
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;-><init>(I)V

    .line 619
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    .line 620
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->object()Linfo/flowersoft/theotown/util/json/JSONStringer;

    .line 624
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;->nameValuePairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 625
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer;->key(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->value(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    goto :goto_d

    .line 627
    :cond_2b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->endObject()Linfo/flowersoft/theotown/util/json/JSONStringer;

    return-void
.end method

###### Class info.flowersoft.theotown.util.json.JSONObject.AnonymousClass1 (info.flowersoft.theotown.util.json.JSONObject$1)
.class Linfo/flowersoft/theotown/util/json/JSONObject$1;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-eq p1, p0, :cond_7

    if-nez p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_7
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "null"

    return-object v0
.end method
