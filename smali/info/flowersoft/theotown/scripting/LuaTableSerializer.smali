###### Class info.flowersoft.theotown.scripting.LuaTableSerializer (info.flowersoft.theotown.scripting.LuaTableSerializer)
.class public Linfo/flowersoft/theotown/scripting/LuaTableSerializer;
.super Ljava/lang/Object;
.source "LuaTableSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;
    }
.end annotation


# direct methods
.method public static deserialize(Linfo/flowersoft/theotown/util/json/JSONArray;)Lvm2/LuaTable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 68
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_b4

    .line 69
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    .line 71
    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto/16 :goto_b0

    .line 72
    :cond_19
    instance-of v4, v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v4, :cond_28

    .line 73
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto/16 :goto_b0

    .line 74
    :cond_28
    instance-of v4, v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v4, :cond_37

    .line 75
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONArray;)Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto/16 :goto_b0

    .line 76
    :cond_37
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_49

    .line 77
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 78
    :cond_49
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_5b

    .line 79
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 80
    :cond_5b
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6d

    .line 81
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 82
    :cond_6d
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_80

    .line 83
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 84
    :cond_80
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_93

    .line 85
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 86
    :cond_93
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_a5

    .line 87
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    goto :goto_b0

    .line 89
    :cond_a5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b4
    return-object v0
.end method

.method public static deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    .line 104
    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 105
    :cond_20
    instance-of v4, v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v4, :cond_2e

    .line 106
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 107
    :cond_2e
    instance-of v4, v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v4, :cond_3c

    .line 108
    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONArray;)Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 109
    :cond_3c
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_4e

    .line 110
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 111
    :cond_4e
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_60

    .line 112
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 113
    :cond_60
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_72

    .line 114
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 115
    :cond_72
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_85

    .line 116
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_8

    .line 117
    :cond_85
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_99

    .line 118
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto/16 :goto_8

    .line 119
    :cond_99
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_ac

    .line 120
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto/16 :goto_8

    .line 122
    :cond_ac
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b5
    return-object v0
.end method

.method public static deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;-><init>()V

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)Lvm2/LuaTable;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 188
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 192
    :goto_a
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 193
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    if-eqz p1, :cond_38

    .line 197
    const-string v5, "$table:ref:::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 198
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->access$200(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;I)Lvm2/LuaTable;

    move-result-object v0

    .line 199
    :goto_28
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_28

    :cond_32
    if-eqz v1, :cond_38

    .line 203
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->access$300(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)V

    move v1, v2

    .line 208
    :cond_38
    :try_start_38
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v5

    .line 210
    const-string v6, "this:is:a:number:::"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    const/16 v5, 0x13

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v5

    goto :goto_55

    :catch_53
    move-exception v4

    goto :goto_ba

    .line 215
    :cond_55
    :goto_55
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v4

    packed-switch v4, :pswitch_data_cc

    .line 242
    :pswitch_5c
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto :goto_a

    .line 220
    :pswitch_68
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    .line 221
    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto :goto_a

    .line 224
    :pswitch_71
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto :goto_a

    .line 232
    :pswitch_7d
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto :goto_a

    .line 229
    :pswitch_8a
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_a

    .line 236
    :pswitch_97
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_a

    .line 239
    :pswitch_a4
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_a

    .line 217
    :pswitch_b1
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)Lvm2/LuaTable;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_b8} :catch_53

    goto/16 :goto_a

    .line 246
    :goto_ba
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_a

    :cond_c2
    if-nez v3, :cond_c7

    .line 252
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->access$300(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)V

    .line 255
    :cond_c7
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-object v0

    nop

    :pswitch_data_cc
    .packed-switch 0x3
        :pswitch_b1
        :pswitch_5c
        :pswitch_5c
        :pswitch_a4
        :pswitch_97
        :pswitch_8a
        :pswitch_7d
        :pswitch_5c
        :pswitch_71
        :pswitch_68
        :pswitch_5c
        :pswitch_8a
        :pswitch_8a
        :pswitch_97
    .end packed-switch
.end method

.method public static sanitizeDouble(D)D
    .registers 4

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    return-wide p0

    .line 29
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_16
    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_22

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0

    :cond_22
    const-wide p0, -0x10000000000001L

    return-wide p0
.end method

.method public static serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 38
    invoke-virtual {p0}, Lvm2/LuaTable;->keys()[Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x0

    .line 39
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_86

    .line 40
    aget-object v3, v1, v2

    .line 41
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 42
    invoke-virtual {v3}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {p0, v3}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 46
    :cond_28
    invoke-virtual {v3}, Lvm2/LuaValue;->isboolean()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 47
    invoke-virtual {v3}, Lvm2/LuaValue;->checkboolean()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 48
    :cond_36
    invoke-virtual {v3}, Lvm2/LuaValue;->isint()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 49
    invoke-virtual {v3}, Lvm2/LuaValue;->toint()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 50
    :cond_44
    invoke-virtual {v3}, Lvm2/LuaValue;->islong()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 51
    invoke-virtual {v3}, Lvm2/LuaValue;->checklong()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 52
    :cond_52
    invoke-virtual {v3}, Lvm2/LuaValue;->isnumber()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 53
    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->sanitizeDouble(D)D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 54
    :cond_64
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 55
    invoke-virtual {v3}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_83

    .line 56
    :cond_72
    invoke-virtual {v3}, Lvm2/LuaValue;->istable()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 57
    invoke-virtual {v3}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_86
    return-object v0
.end method

.method public static serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;-><init>()V

    invoke-static {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)V

    return-void
.end method

.method public static serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    if-eqz p2, :cond_1b

    .line 140
    invoke-static {p2, p0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->access$000(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)I

    move-result v0

    if-ltz v0, :cond_18

    .line 142
    const-string p0, "$table:ref:::"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 143
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void

    .line 146
    :cond_18
    invoke-static {p2, p0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->access$100(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)V

    .line 150
    :cond_1b
    invoke-virtual {p0}, Lvm2/LuaTable;->keys()[Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    :goto_20
    array-length v2, v0

    if-ge v1, v2, :cond_ba

    .line 152
    aget-object v2, v0, v1

    .line 153
    invoke-virtual {v2}, Lvm2/LuaValue;->isstring()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 154
    invoke-virtual {p0, v2}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v3

    .line 155
    invoke-virtual {v2}, Lvm2/LuaValue;->isnumber()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this:is:a:number:::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lvm2/LuaValue;->checknumber()Lvm2/LuaNumber;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_55

    .line 158
    :cond_4e
    invoke-virtual {v2}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    :goto_55
    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 161
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 162
    :cond_5f
    invoke-virtual {v3}, Lvm2/LuaValue;->isboolean()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 163
    invoke-virtual {v3}, Lvm2/LuaValue;->checkboolean()Z

    move-result v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 164
    :cond_6d
    invoke-virtual {v3}, Lvm2/LuaValue;->isint()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 165
    invoke-virtual {v3}, Lvm2/LuaValue;->toint()I

    move-result v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 166
    :cond_7b
    invoke-virtual {v3}, Lvm2/LuaValue;->islong()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 167
    invoke-virtual {v3}, Lvm2/LuaValue;->checklong()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 168
    :cond_89
    invoke-virtual {v3}, Lvm2/LuaValue;->isnumber()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 169
    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->sanitizeDouble(D)D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 170
    :cond_9b
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 171
    invoke-virtual {v3}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b6

    .line 172
    :cond_a9
    invoke-virtual {v3}, Lvm2/LuaValue;->istable()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 173
    invoke-virtual {v3}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v2

    invoke-static {v2, p1, p2}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;)V

    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 178
    :cond_ba
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.LuaTableSerializer.Context (info.flowersoft.theotown.scripting.LuaTableSerializer$Context)
.class public Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;
.super Ljava/lang/Object;
.source "LuaTableSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/LuaTableSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field public ctr:I

.field public final loadedTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/LuaTable;",
            ">;"
        }
    .end annotation
.end field

.field public final savedTables:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lvm2/LuaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->savedTables:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)I
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->getTableIndex(Lvm2/LuaTable;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)V
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->onSavedTable(Lvm2/LuaTable;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;I)Lvm2/LuaTable;
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->getLoadedTable(I)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;Lvm2/LuaTable;)V
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->onLoadedTable(Lvm2/LuaTable;)V

    return-void
.end method


# virtual methods
.method public final getLoadedTable(I)Lvm2/LuaTable;
    .registers 3

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvm2/LuaTable;

    return-object p1
.end method

.method public final getTableIndex(Lvm2/LuaTable;)I
    .registers 3

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->savedTables:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 278
    iget v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    if-eqz p1, :cond_15

    .line 279
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public final onLoadedTable(Lvm2/LuaTable;)V
    .registers 4

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->savedTables:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget p1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    return-void
.end method

.method public final onSavedTable(Lvm2/LuaTable;)V
    .registers 4

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->savedTables:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->loadedTables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget p1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/scripting/LuaTableSerializer$Context;->ctr:I

    return-void
.end method
