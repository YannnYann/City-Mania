###### Class com.unity3d.ads.core.data.datasource.MaxAdRevenueListener (com.unity3d.ads.core.data.datasource.MaxAdRevenueListener)
.class public final Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;
.super Ljava/lang/Object;
.source "MaxAdRevenueListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaxAdRevenueListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaxAdRevenueListener.kt\ncom/unity3d/ads/core/data/datasource/MaxAdRevenueListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

.field private static final KEY_AD_FORMAT:Ljava/lang/String; = "ad_format"

.field private static final KEY_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field private static final KEY_MAX_AD_UNIT_ID:Ljava/lang/String; = "max_ad_unit_id"

.field private static final KEY_NETWORK_NAME:Ljava/lang/String; = "network_name"

.field private static final KEY_REVENUE:Ljava/lang/String; = "revenue"

.field private static final KEY_THIRD_PARTY_AD_PLACEMENT_ID:Ljava/lang/String; = "third_party_ad_placement_id"

.field private static final MAX_STRING_LENGTH:I = 0x1f4


# instance fields
.field private final handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$3sXbRgGWhxdlFuRHJOy10-msa_w(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->bundleToTraceString$lambda$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qKoJWYEa1Ts8W9eUiHzXD3-6pno(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->onMessageReceived$lambda$0(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->Companion:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 5

    const-string v0, "handleAdRevenueEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    .line 20
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getHandleAdRevenueEvent$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$parseRevenueBundle(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->parseRevenueBundle(Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-result-object p0

    return-object p0
.end method

.method private final bundleToTraceString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 13

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "{}"

    return-object p1

    .line 105
    :cond_9
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "keySet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v4, "{"

    const-string v5, "}"

    new-instance v8, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-object p1

    .line 103
    :catchall_29
    const-string p1, "<error serializing bundle>"

    return-object p1
.end method

.method private static final bundleToTraceString$lambda$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    .line 110
    const-string p0, "null"

    goto :goto_4a

    .line 111
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    const/16 v2, 0x22

    if-gt v0, v1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4a

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "...\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 112
    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    :goto_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_5f

    return-object p0

    .line 116
    :catchall_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=<error>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onMessageReceived$lambda$0(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad revenue subscribed event (raw): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->bundleToTraceString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseMaxAdFormatString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 4

    if-eqz p1, :cond_7a

    .line 133
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_7a

    .line 134
    :cond_a
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    goto :goto_70

    :sswitch_1d
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_70

    .line 135
    :cond_26
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_29
    const-string v1, "REWARDED_INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_70

    :sswitch_32
    const-string v1, "REWARDED_INTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_70

    :sswitch_3b
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_70

    .line 138
    :cond_44
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_47
    const-string v1, "INTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_70

    :sswitch_50
    const-string v1, "MREC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_70

    .line 136
    :cond_59
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_5c
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_70

    .line 137
    :cond_65
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_68
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 140
    :goto_70
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;->fromString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object p1

    return-object p1

    .line 139
    :cond_77
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    :cond_7a
    :goto_7a
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_7c
    .sparse-switch
        -0x772abbe9 -> :sswitch_68
        -0x51d5b0d4 -> :sswitch_5c
        0x243d03 -> :sswitch_50
        0x4296cbc -> :sswitch_47
        0x205e3c0e -> :sswitch_3b
        0x629e494b -> :sswitch_32
        0x6e8e03bd -> :sswitch_29
        0x7458732c -> :sswitch_1d
    .end sparse-switch
.end method

.method private final parseRevenueBundle(Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .registers 16

    .line 66
    const-string v0, "revenue"

    const/4 v1, 0x0

    .line 68
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_17

    .line 69
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Missing revenue key in revenue event"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_11
    move-object v6, v1

    goto :goto_4b

    :catch_13
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9a

    .line 73
    :cond_17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_34

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_34

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    goto :goto_4b

    .line 75
    :cond_34
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing revenue in revenue event: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_11

    .line 81
    :goto_4b
    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_5a

    :cond_59
    move-object v7, v1

    .line 82
    :goto_5a
    const-string v0, "network_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_69

    :cond_68
    move-object v8, v1

    .line 83
    :goto_69
    const-string v0, "max_ad_unit_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_78

    :cond_77
    move-object v9, v1

    .line 84
    :goto_78
    const-string v0, "third_party_ad_placement_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_87

    :cond_86
    move-object v10, v1

    .line 85
    :goto_87
    const-string v0, "ad_format"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->parseMaxAdFormatString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v11

    .line 88
    new-instance v4, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/unity3d/ads/core/data/model/AdRevenueData;-><init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_99} :catch_13

    return-object v4

    .line 97
    :goto_9a
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Failed to parse revenue Bundle"

    invoke-interface {v0, v2, p1}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 125
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_f

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final onMessageReceived(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "messageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/log/Logger;->trace(Lkotlin/jvm/functions/Function0;)V

    .line 41
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class com.unity3d.ads.core.data.datasource.MaxAdRevenueListener.Companion (com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$Companion)
.class public final Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;
.super Ljava/lang/Object;
.source "MaxAdRevenueListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.datasource.MaxAdRevenueListener.AnonymousClass2 (com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2)
.class final Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MaxAdRevenueListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->onMessageReceived(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2"
    f = "MaxAdRevenueListener.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $messageData:Landroid/os/Bundle;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1f

    if-ne v1, v3, :cond_17

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_42

    :catch_15
    move-exception p1

    goto :goto_79

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    :try_start_22
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->$messageData:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$parseRevenueBundle(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 45
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getHandleAdRevenueEvent$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    move-result-object v1

    .line 47
    sget-object v5, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 48
    sget-object v6, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;->AUTOMATIC_COLLECTION:Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    .line 45
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->label:I

    invoke-virtual {v1, p1, v5, v6, p0}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_41

    return-object v0

    :cond_41
    move-object v0, p1

    .line 50
    :goto_42
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad revenue event sent: revenue="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getRevenue()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", network="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v2, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_84

    .line 52
    :cond_6d
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object p1

    const-string v0, "Failed to parse revenue event"

    invoke-static {p1, v0, v4, v2, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_78} :catch_15

    goto :goto_84

    .line 55
    :goto_79
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;->this$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v0

    const-string v1, "Failed to process ad revenue event"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->$r8$lambda$qKoJWYEa1Ts8W9eUiHzXD3-6pno(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda1 (com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->$r8$lambda$3sXbRgGWhxdlFuRHJOy10-msa_w(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
