###### Class com.unity3d.ads.core.domain.privacy.DeveloperConsentFlattenerRulesUseCase (com.unity3d.ads.core.domain.privacy.DeveloperConsentFlattenerRulesUseCase)
.class public final Lcom/unity3d/ads/core/domain/privacy/DeveloperConsentFlattenerRulesUseCase;
.super Ljava/lang/Object;
.source "DeveloperConsentFlattenerRulesUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Lcom/unity3d/services/core/misc/JsonFlattenerRules;
    .registers 6

    .line 12
    new-instance v0, Lcom/unity3d/services/core/misc/JsonFlattenerRules;

    .line 16
    const-string v1, "pipl"

    .line 17
    const-string v2, "user"

    const-string v3, "privacy"

    const-string v4, "gdpr"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 19
    const-string v2, "value"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 21
    const-string v3, "ts"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/core/misc/JsonFlattenerRules;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
