###### Class com.unity3d.mediation.LevelPlayPrivacySettings (com.unity3d.mediation.LevelPlayPrivacySettings)
.class public final Lcom/unity3d/mediation/LevelPlayPrivacySettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/unity3d/mediation/LevelPlayPrivacySettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/mediation/LevelPlayPrivacySettings;

    invoke-direct {v0}, Lcom/unity3d/mediation/LevelPlayPrivacySettings;-><init>()V

    sput-object v0, Lcom/unity3d/mediation/LevelPlayPrivacySettings;->INSTANCE:Lcom/unity3d/mediation/LevelPlayPrivacySettings;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setCCPA(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LevelPlayPrivacySettings.setCCPA() value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/pb;->d:Lcom/ironsource/pb$a;

    invoke-virtual {v0}, Lcom/ironsource/pb$a;->a()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/pb;->a(Z)V

    return-void
.end method

.method public static final setCOPPA(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LevelPlayPrivacySettings.setCOPPA() value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/pb;->d:Lcom/ironsource/pb$a;

    invoke-virtual {v0}, Lcom/ironsource/pb$a;->a()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/pb;->b(Z)V

    return-void
.end method

.method public static final setGDPRConsent(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LevelPlayPrivacySettings.setGDPRConsent() consent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/pb;->d:Lcom/ironsource/pb$a;

    invoke-virtual {v0}, Lcom/ironsource/pb$a;->a()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/pb;->c(Z)V

    return-void
.end method

.method public static final setGDPRConsents(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkConsents"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LevelPlayPrivacySettings.setGDPRConsents() networkConsents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/pb;->d:Lcom/ironsource/pb$a;

    invoke-virtual {v0}, Lcom/ironsource/pb$a;->a()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/pb;->a(Ljava/util/Map;)V

    return-void
.end method
