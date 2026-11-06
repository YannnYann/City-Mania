###### Class io.bidmachine.rendering.utils.PrivacySheetParamsParser (io.bidmachine.rendering.utils.PrivacySheetParamsParser)
.class public final Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->INSTANCE:Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseJson(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;
    .registers 16

    const-string v0, "title"

    const-string v1, "json"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->INSTANCE:Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;

    const/4 v2, 0x0

    :try_start_a
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "rootObject.optString(\"title\")"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string p0, "subtitle"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "rootObject.optString(\"subtitle\")"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-string p0, "footer_title"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p0, "rootObject.optString(\"footer_title\")"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p0, "footer_text"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p0, "rootObject.optString(\"footer_text\")"

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string p0, "actions"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_4d

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_52

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto/16 :goto_bd

    .line 9
    :cond_4d
    const-string v3, "rootObject.optJSONArray(\"actions\") ?: JSONArray()"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_52
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_b3

    .line 13
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "actionsArray.getJSONObject(i)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "actionObject.optString(\"type\")"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object v11

    if-nez v11, :cond_79

    goto :goto_b0

    .line 16
    :cond_79
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "actionObject.optString(\"title\")"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v13, "data"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "actionObject.optString(\"data\")"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v14, "icon"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "it"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9f

    goto :goto_a0

    :cond_9f
    move-object v10, v2

    :goto_a0
    if-eqz v10, :cond_a7

    invoke-virtual {v1, v10}, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_a8

    :cond_a7
    move-object v10, v2

    .line 21
    :goto_a8
    new-instance v14, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    invoke-direct {v14, v11, v12, v13, v10}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;-><init>(Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 22
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 31
    :cond_b3
    new-instance v4, Lio/bidmachine/rendering/model/PrivacySheetParams;

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/rendering/model/PrivacySheetParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_bc
    .catchall {:try_start_a .. :try_end_bc} :catchall_49

    goto :goto_c7

    :goto_bd
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 66
    :goto_c7
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    goto :goto_cf

    :cond_ce
    move-object v2, p0

    :goto_cf
    check-cast v2, Lio/bidmachine/rendering/model/PrivacySheetParams;

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .registers 8

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->values()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    return-object v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lio/bidmachine/util/UtilsKt;->decodeBase64$default([BIILjava/lang/Object;)[B

    move-result-object p1

    if-nez p1, :cond_18

    move-object p1, v0

    goto :goto_1d

    .line 3
    :cond_18
    array-length v1, p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    :goto_1d
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_2d

    :catchall_22
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_2d
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    move-object v0, p1

    :goto_35
    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
