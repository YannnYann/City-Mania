###### Class com.ironsource.I8 (com.ironsource.I8)
.class public final Lcom/ironsource/I8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nISNNativeAdData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ISNNativeAdData.kt\ncom/ironsource/sdk/nativeAd/ISNNativeAdDataKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/ironsource/I8;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method
