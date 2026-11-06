###### Class com.unity3d.mediation.rewarded.LevelPlayRewardedAd (com.unity3d.mediation.rewarded.LevelPlayRewardedAd)
.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;,
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/rb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;->empty()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/cb$c;)V
    .registers 14

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/cb$c;->d()Lcom/ironsource/cb$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnitId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->a:Ljava/lang/String;

    .line 16
    new-instance v2, Lcom/ironsource/rb;

    .line 18
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->d()Lcom/ironsource/cb$b;

    move-result-object v4

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->b()Lcom/ironsource/p0;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->a()Lcom/ironsource/j6;

    move-result-object v6

    .line 21
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->g()Lcom/ironsource/M7;

    move-result-object v7

    .line 22
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->e()Lcom/ironsource/t4;

    move-result-object v8

    .line 23
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->f()Lcom/ironsource/z7;

    move-result-object v9

    .line 24
    invoke-virtual {p2}, Lcom/ironsource/cb$c;->c()Lcom/ironsource/X0;

    move-result-object v10

    move-object v3, p1

    .line 25
    invoke-direct/range {v2 .. v10}, Lcom/ironsource/rb;-><init>(Ljava/lang/String;Lcom/ironsource/cb$b;Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/X0;)V

    .line 26
    iput-object v2, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;)V
    .registers 12

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/ironsource/cb$c;

    .line 3
    new-instance v2, Lcom/ironsource/p0;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    sget-object v3, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {v2, v0, v3}, Lcom/ironsource/p0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;)V

    .line 4
    new-instance v3, Lcom/ironsource/j6;

    invoke-direct {v3}, Lcom/ironsource/j6;-><init>()V

    .line 5
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/ironsource/t4$a;

    invoke-direct {v5}, Lcom/ironsource/t4$a;-><init>()V

    .line 7
    sget-object v6, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    .line 9
    new-instance v8, Lcom/ironsource/X0;

    invoke-direct {v8}, Lcom/ironsource/X0;-><init>()V

    move-object v7, p2

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/ironsource/cb$c;-><init>(Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/cb$b;Lcom/ironsource/X0;)V

    .line 11
    invoke-direct {p0, p1, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;Lcom/ironsource/cb$c;)V

    return-void
.end method

.method public static synthetic getReward$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p0

    return-object p0
.end method

.method public static final isPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 0
    sget-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;

    invoke-virtual {v0, p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;->isPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic showAd$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getReward()Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getReward$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object v0

    return-object v0
.end method

.method public final getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p1

    return-object p1
.end method

.method public final isAdReady()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->b()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0}, Lcom/ironsource/rb;->c()V

    return-void
.end method

.method public final setImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public final setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1}, Lcom/ironsource/rb;->a(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    return-void
.end method

.method public final showAd(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->b:Lcom/ironsource/rb;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/rb;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.mediation.rewarded.LevelPlayRewardedAd.Companion (com.unity3d.mediation.rewarded.LevelPlayRewardedAd$Companion)
.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPlacementCapped(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/cb;->p:Lcom/ironsource/cb$a;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/cb$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z

    move-result p1

    return p1
.end method

###### Class com.unity3d.mediation.rewarded.LevelPlayRewardedAd.Config (com.unity3d.mediation.rewarded.LevelPlayRewardedAd$Config)
.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/cb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;,
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;


# instance fields
.field private final a:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;Ljava/lang/Double;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->copy(Ljava/lang/Double;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .registers 3

    .line 0
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    iget-object v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    iget-object p1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getBidFloor()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config(bidFloor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.mediation.rewarded.LevelPlayRewardedAd.Config.Builder (com.unity3d.mediation.rewarded.LevelPlayRewardedAd$Config$Builder)
.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayRewardedAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayRewardedAd.kt\ncom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .registers 3

    .line 1
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    iget-object v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->a:Ljava/lang/Double;

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public final setBidFloor(D)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->a:Ljava/lang/Double;

    return-object p0
.end method

###### Class com.unity3d.mediation.rewarded.LevelPlayRewardedAd.Config.Companion (com.unity3d.mediation.rewarded.LevelPlayRewardedAd$Config$Companion)
.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .registers 4

    .line 1
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
