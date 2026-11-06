###### Class com.ironsource.C3584eb (com.ironsource.eb)
.class public final Lcom/ironsource/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# instance fields
.field private final a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/ironsource/eb;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    check-cast p1, Lcom/ironsource/eb;

    iget-object p1, p1, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onImpressionSuccess(Lcom/ironsource/c9;)V
    .registers 3

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-virtual {p1}, Lcom/ironsource/c9;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/impression/LevelPlayImpressionData;-><init>(Lorg/json/JSONObject;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/eb;->a:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    invoke-interface {p1, v0}, Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;->onImpressionSuccess(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method
