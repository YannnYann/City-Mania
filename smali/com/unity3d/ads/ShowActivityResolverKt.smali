###### Class com.unity3d.ads.ShowActivityResolverKt (com.unity3d.ads.ShowActivityResolverKt)
.class public final Lcom/unity3d/ads/ShowActivityResolverKt;
.super Ljava/lang/Object;
.source "ShowActivityResolver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowActivityResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowActivityResolver.kt\ncom/unity3d/ads/ShowActivityResolverKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,50:1\n216#2,2:51\n*S KotlinDebug\n*F\n+ 1 ShowActivityResolver.kt\ncom/unity3d/ads/ShowActivityResolverKt\n*L\n44#1:51,2\n*E\n"
.end annotation


# direct methods
.method public static final commitExtras(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/ShowConfiguration;)V
    .registers 4

    if-nez p0, :cond_a

    if-eqz p1, :cond_6

    move-object p0, p1

    goto :goto_a

    .line 41
    :cond_6
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_a
    :goto_a
    if-eqz p0, :cond_40

    .line 43
    new-instance p1, Lcom/unity3d/ads/metadata/MetaData;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_3d

    .line 44
    invoke-virtual {p2}, Lcom/unity3d/ads/ShowConfiguration;->getExtras()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 51
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_21

    .line 47
    :cond_3d
    invoke-virtual {p1}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    :cond_40
    return-void
.end method

.method public static final resolveEffectiveActivity(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Landroid/app/Activity;
    .registers 17

    const-string v1, "adObject"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sendDiagnosticEvent"

    move-object v2, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sessionRepository"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v1, p0, Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1c

    :cond_1b
    move-object v0, v4

    :goto_1c
    if-eqz v0, :cond_35

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_35

    if-eq p1, v0, :cond_34

    const/16 v10, 0x6e

    const/4 v11, 0x0

    .line 21
    const-string v3, "native_show_activity_mismatch"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    :cond_34
    return-object v0

    .line 25
    :cond_35
    invoke-interface {v3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getUseCurrentActivityForShow()Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p1, :cond_54

    const/16 v10, 0x6e

    const/4 v11, 0x0

    .line 27
    const-string v3, "native_show_current_activity_null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p2

    move-object v2, p3

    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    :cond_54
    return-object p1

    :cond_55
    return-object v4
.end method
