###### Class info.flowersoft.theotown.util.JSONUtil (info.flowersoft.theotown.util.JSONUtil)
.class public Linfo/flowersoft/theotown/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# static fields
.field public static final PARAMETER_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string v0, "(\\{[^\\}]*\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/JSONUtil;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyParameters(Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Linfo/flowersoft/theotown/util/JSONUtil;->buildParametersMap(Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/util/Map;)V

    return-void
.end method

.method public static applyParameters(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    :goto_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 154
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 155
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 156
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 158
    invoke-static {v1}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(ILjava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_30

    .line 160
    :cond_1d
    instance-of v2, v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v2, :cond_27

    .line 161
    check-cast v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/Map;)V

    goto :goto_30

    .line 162
    :cond_27
    instance-of v2, v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v2, :cond_30

    .line 163
    check-cast v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/util/Map;)V

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void
.end method

.method public static applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Linfo/flowersoft/theotown/util/JSONUtil;->buildParametersMap(Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method public static applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8d

    const/4 v1, 0x0

    .line 122
    :goto_7
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 123
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_76

    .line 126
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 128
    invoke-static {v4}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_89

    .line 130
    :cond_27
    sget-object v4, Linfo/flowersoft/theotown/util/JSONUtil;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    :cond_34
    :goto_34
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 133
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 136
    instance-of v6, v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-nez v6, :cond_34

    instance-of v6, v5, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-nez v6, :cond_34

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_34

    .line 140
    :cond_6b
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_89

    .line 143
    :cond_76
    instance-of v2, v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v2, :cond_80

    .line 144
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v3, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/Map;)V

    goto :goto_89

    .line 145
    :cond_80
    instance-of v2, v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v2, :cond_89

    .line 146
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-static {v3, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/util/Map;)V

    :cond_89
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_8d
    return-void
.end method

.method public static buildParametersMap(Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v2, 0x0

    .line 172
    :goto_c
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 173
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method public static contains(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 20
    :goto_5
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 22
    :try_start_b
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    if-eqz p1, :cond_1b

    :cond_13
    if-eqz v2, :cond_1d

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_b .. :try_end_19} :catch_20

    if-eqz v2, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_20
    :cond_20
    return v0
.end method

.method public static deepCopy(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 197
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 198
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static deepCopy(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 181
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 183
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v2, 0x0

    .line 185
    :goto_c
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 186
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    return-object v0
.end method

.method public static deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 205
    instance-of v0, p0, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_b

    .line 206
    check-cast p0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-static {p0}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopy(Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 207
    :cond_b
    instance-of v0, p0, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_15

    .line 208
    check-cast p0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {p0}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopy(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method public static mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_70

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_8
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 79
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "$$remove"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz p2, :cond_6d

    .line 84
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6d

    .line 89
    :cond_20
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    if-eqz p2, :cond_29

    goto :goto_62

    .line 92
    :cond_29
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    if-eqz p3, :cond_6d

    .line 93
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    .line 94
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 95
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v6

    .line 96
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v4, :cond_5a

    if-eqz v6, :cond_5a

    move v3, v1

    .line 99
    :goto_46
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_6d

    .line 100
    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_5a
    if-eqz v5, :cond_6d

    if-eqz v3, :cond_6d

    .line 104
    invoke-static {v5, v3, p2, p3}, Linfo/flowersoft/theotown/util/JSONUtil;->mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V

    goto :goto_6d

    .line 90
    :cond_62
    :goto_62
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopyJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_70
    return-void
.end method

.method public static optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 3

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_13

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 49
    :try_start_b
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_13
    return-object v0
.end method

.method public static optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    instance-of p1, p0, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz p1, :cond_b

    .line 35
    check-cast p0, Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p0

    :cond_b
    if-eqz p0, :cond_16

    .line 37
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 38
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object p1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optObject(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_13

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 62
    :try_start_b
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_13
    return-object v0
.end method
