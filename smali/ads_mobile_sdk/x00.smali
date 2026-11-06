###### Class ads_mobile_sdk.x00 (ads_mobile_sdk.x00)
.class public final Lads_mobile_sdk/x00;
.super Lads_mobile_sdk/yr;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xw0;)V
    .registers 3

    .line 1
    const-string v0, "flagValueProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lads_mobile_sdk/yr;-><init>(Lads_mobile_sdk/xw0;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;
    .registers 4

    .line 235
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 236
    const-string v1, "bk"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "sk"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget p0, p1, Lads_mobile_sdk/o30;->a:I

    .line 240
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .line 166
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 172
    sget-object v1, Lads_mobile_sdk/o30;->b:Lads_mobile_sdk/o30;

    .line 173
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 174
    const-string v2, "consent_key"

    const-string v3, "gad_has_consent_for_cookies"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "consent_value_match"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "consent_value_type"

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 185
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 186
    const-string v6, "IABTCF_gdprApplies"

    invoke-virtual {v1, v2, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "1"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 190
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const-string v1, "key"

    const-string v2, "gads:full_consent_check_map"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultValue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p0, v2, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 30
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 32
    sget-object v1, Lads_mobile_sdk/o30;->b:Lads_mobile_sdk/o30;

    const-string v2, "IABTCF_AddtlConsent"

    invoke-static {v2, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 33
    sget-object v2, Lads_mobile_sdk/o30;->d:Lads_mobile_sdk/o30;

    const-string v3, "IABConsent_CMPPresent"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 34
    sget-object v2, Lads_mobile_sdk/o30;->c:Lads_mobile_sdk/o30;

    const-string v3, "IABTCF_CmpSdkID"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 35
    const-string v3, "IABConsent_ConsentString"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 36
    const-string v3, "IABTCF_gdprApplies"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 37
    const-string v3, "IABGPP_HDR_GppString"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 38
    const-string v3, "IABGPP_GppSID"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 39
    const-string v3, "gad_has_consent_for_cookies"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 41
    const-string v3, "IABConsent_ParsedPurposeConsents"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 45
    const-string v3, "personalized_ad_status"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 46
    const-string v3, "IABTCF_PolicyVersion"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 47
    const-string v3, "IABUSPrivacy_String"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 48
    const-string v3, "IABTCF_PurposeConsents"

    invoke-static {v3, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 50
    const-string v3, "gad_rdp"

    invoke-static {v3, v2}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 57
    const-string v2, "IABConsent_SubjectToGDPR"

    invoke-static {v2, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 58
    const-string v2, "IABTCF_TCString"

    invoke-static {v2, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 59
    const-string v2, "IABConsent_ParsedVendorConsents"

    invoke-static {v2, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 60
    const-string v2, "UMP_eids"

    invoke-static {v2, v1}, Lads_mobile_sdk/x00;->a(Ljava/lang/String;Lads_mobile_sdk/o30;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 61
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v1, "key"

    const-string v2, "gads:sp:json_string"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultValue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p0, v2, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
