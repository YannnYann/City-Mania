###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.AdMeasurerFactory (io.bidmachine.ads.networks.adaptiverendering.measurer.AdMeasurerFactory)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/MeasurerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;


# instance fields
.field public final name:Ljava/lang/String;

.field public final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->Companion:Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createHtmlMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->name:Ljava/lang/String;

    const-string v0, "om"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2
    invoke-static {}, Lio/bidmachine/internal/s;->c()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_1d

    .line 6
    :cond_17
    new-instance p1, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;

    invoke-direct {p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;-><init>()V

    return-object p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->name:Ljava/lang/String;

    const-string v0, "om"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    .line 2
    invoke-static {}, Lio/bidmachine/internal/s;->c()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 3
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->parameters:Ljava/util/Map;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_3e

    .line 7
    :cond_22
    sget-object p1, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->Companion:Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;

    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->parameters:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;->getVerificationScriptResourceList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3e

    .line 11
    :cond_33
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;

    .line 13
    iget-object v2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;->parameters:Ljava/util/Map;

    invoke-virtual {p1, v2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;->getSkipOffsetSec(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object p1

    .line 14
    invoke-direct {v0, v1, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;-><init>(Ljava/util/List;Ljava/lang/Float;)V

    :cond_3e
    :goto_3e
    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.AdMeasurerFactory.Companion (io.bidmachine.ads.networks.adaptiverendering.measurer.AdMeasurerFactory$Companion)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addVerificationScriptResource(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "verificationScriptResourceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaScriptResourceUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2d

    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_18

    goto :goto_2d

    :cond_18
    if-eqz p4, :cond_2d

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_21

    goto :goto_2d

    .line 4
    :cond_21
    invoke-static {p3, v0, p4}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    move-result-object p2

    .line 5
    const-string p3, "{\n                      \u2026  )\n                    }"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_36

    :catchall_2b
    move-exception p1

    goto :goto_3a

    .line 12
    :cond_2d
    :goto_2d
    invoke-static {v0}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    move-result-object p2

    .line 13
    const-string p3, "{\n                      \u2026rl)\n                    }"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :goto_36
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_2b

    return-void

    .line 18
    :goto_3a
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getSkipOffsetSec(Ljava/util/Map;)Ljava/lang/Float;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "skip_offset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_24

    .line 6
    :cond_17
    :try_start_17
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-float p1, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_24

    return-object p1

    :catchall_24
    :cond_24
    :goto_24
    return-object v0
.end method

.method public final getVerificationScriptResourceList(Ljava/util/Map;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "verifications"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_54

    .line 7
    :cond_17
    :try_start_17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_54

    if-nez p1, :cond_23

    return-object v0

    .line 15
    :cond_23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_53

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_50

    .line 20
    :cond_36
    const-string v4, "java_script_resource_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jsonObject.optString(JAVA_SCRIPT_RESOURCE_URL)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v5, "vendor"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    const-string v6, "verification_parameters"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {p0, p1, v4, v5, v3}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/AdMeasurerFactory$Companion;->addVerificationScriptResource(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_53
    return-object p1

    :catchall_54
    :cond_54
    :goto_54
    return-object v0
.end method
