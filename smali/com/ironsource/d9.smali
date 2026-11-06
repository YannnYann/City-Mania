###### Class com.ironsource.C3563d9 (com.ironsource.d9)
.class public final Lcom/ironsource/d9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/d9$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/ironsource/d9$a;

.field public static final d:Ljava/lang/String; = "pub"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "sdk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public static synthetic $r8$lambda$h3qsXbLD3rsokiB6gCMsAyIbfLg(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/d9;->a(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/d9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/d9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/d9;->c:Lcom/ironsource/d9$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/p0;)V
    .registers 3

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d9;->a:Lcom/ironsource/p0;

    return-void
.end method

.method private static final a(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;->onImpressionSuccess(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    :cond_7
    return-void
.end method

.method private final a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/ironsource/xb;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 4
    :goto_7
    iput-object p1, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    .line 5
    iget-object v1, p0, Lcom/ironsource/d9;->a:Lcom/ironsource/p0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v1

    if-nez p1, :cond_19

    .line 7
    invoke-virtual {v1, p2, v0}, Lcom/ironsource/pg;->a(Ljava/lang/String;Z)V

    return-void

    .line 9
    :cond_19
    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-object v0
.end method

.method public final a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 8
    .annotation build Lcom/ironsource/xb;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    if-nez v0, :cond_a

    goto :goto_14

    .line 11
    :cond_a
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    :goto_14
    return-void

    .line 13
    :cond_15
    new-instance v0, Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdInfo;->impressionData$mediationsdk_release()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/impression/LevelPlayImpressionData;-><init>(Lorg/json/JSONObject;)V

    .line 14
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 15
    iget-object v1, p0, Lcom/ironsource/d9;->a:Lcom/ironsource/p0;

    iget-object v2, p0, Lcom/ironsource/d9;->b:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v3

    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImpressionSuccess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/ironsource/d9;->a:Lcom/ironsource/p0;

    new-instance v1, Lcom/ironsource/d9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/d9$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    .line 19
    iget-object p1, p0, Lcom/ironsource/d9;->a:Lcom/ironsource/p0;

    invoke-virtual {p1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/pg;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method

.method public final a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 3
    .annotation build Lcom/ironsource/xb;
    .end annotation

    .line 2
    const-string v0, "pub"

    invoke-direct {p0, p1, v0}, Lcom/ironsource/d9;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 3
    .annotation build Lcom/ironsource/xb;
    .end annotation

    const/4 v0, 0x0

    .line 1
    const-string v1, "sdk"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/d9;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3563d9.a (com.ironsource.d9$a)
.class final Lcom/ironsource/d9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/d9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/d9$a;-><init>()V

    return-void
.end method

###### Class com.ironsource.RunnableC3564d9$$ExternalSyntheticLambda0 (com.ironsource.d9$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/d9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/d9;

.field public final synthetic f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/d9;

    iput-object p2, p0, Lcom/ironsource/d9$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/d9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/d9;

    iget-object v1, p0, Lcom/ironsource/d9$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-static {v0, v1}, Lcom/ironsource/d9;->$r8$lambda$h3qsXbLD3rsokiB6gCMsAyIbfLg(Lcom/ironsource/d9;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    return-void
.end method
