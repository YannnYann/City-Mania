###### Class com.unity3d.ads.core.utils.GetMemoryValueFromStringKt (com.unity3d.ads.core.utils.GetMemoryValueFromStringKt)
.class public final Lcom/unity3d/ads/core/utils/GetMemoryValueFromStringKt;
.super Ljava/lang/Object;
.source "GetMemoryValueFromString.kt"


# direct methods
.method public static final getMemoryValueFromString(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 8
    :cond_5
    const-string v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x0

    .line 11
    :goto_10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_1c
    if-eqz v2, :cond_28

    .line 15
    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_28
    return-wide v0
.end method
