###### Class ads_mobile_sdk.gr3 (ads_mobile_sdk.gr3)
.class public abstract Lads_mobile_sdk/gr3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/hr3;
    .registers 16

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2
    :cond_4
    const-string v1, "fill_definition"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    .line 3
    :goto_13
    sget-object v3, Lads_mobile_sdk/zr0;->b:Lads_mobile_sdk/yr0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lads_mobile_sdk/zr0;->values()[Lads_mobile_sdk/zr0;

    move-result-object v3

    .line 9
    array-length v4, v3

    move v5, v2

    :goto_1e
    if-ge v5, v4, :cond_2a

    aget-object v6, v3, v5

    .line 10
    iget v7, v6, Lads_mobile_sdk/zr0;->a:I

    if-ne v7, v1, :cond_27

    goto :goto_2b

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2a
    move-object v6, v0

    :goto_2b
    if-nez v6, :cond_2f

    .line 11
    sget-object v6, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    :cond_2f
    move-object v14, v6

    .line 12
    sget-object v1, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    if-ne v14, v1, :cond_35

    return-object v0

    .line 14
    :cond_35
    const-string v1, "nofill_retention_time_ms"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v3

    goto :goto_44

    :cond_42
    const-wide/16 v3, 0x0

    .line 15
    :goto_44
    const-string v1, "callback_delay_ms"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5

    goto :goto_53

    :cond_51
    const-wide/16 v5, 0x32

    .line 17
    :goto_53
    new-instance v7, Lads_mobile_sdk/hr3;

    .line 18
    const-string v1, "nofills_before_throttle"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :cond_61
    move v8, v2

    .line 20
    const-string v1, "post_throttle_nofills_before_throttle"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_72
    move-object v9, v0

    .line 21
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    .line 22
    invoke-static {v5, v6, p0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    .line 23
    invoke-direct/range {v7 .. v14}, Lads_mobile_sdk/hr3;-><init>(ILjava/lang/Integer;JJLads_mobile_sdk/zr0;)V

    return-object v7
.end method
