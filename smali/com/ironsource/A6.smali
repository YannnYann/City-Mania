###### Class com.ironsource.A6 (com.ironsource.A6)
.class public final Lcom/ironsource/A6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z6;
.implements Lcom/ironsource/u6$b;
.implements Lcom/ironsource/u6$a;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/A6$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/ironsource/A6$a;

.field public static final g:Ljava/lang/String; = "Fullscreen ProgressiveOnLoaded Strategy"


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private final b:Lcom/ironsource/v6;

.field private final c:Lcom/ironsource/x6;

.field private final d:Lcom/ironsource/y6;

.field private e:Lcom/ironsource/F6;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/A6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/A6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/A6;->f:Lcom/ironsource/A6$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V
    .registers 6

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/A6;->a:Lcom/ironsource/p0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/A6;->b:Lcom/ironsource/v6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/A6;->c:Lcom/ironsource/x6;

    .line 5
    iput-object p4, p0, Lcom/ironsource/A6;->d:Lcom/ironsource/y6;

    .line 7
    new-instance p1, Lcom/ironsource/B6;

    invoke-direct {p1, p0}, Lcom/ironsource/B6;-><init>(Lcom/ironsource/A6;)V

    iput-object p1, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/p0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A6;->a:Lcom/ironsource/p0;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1}, Lcom/ironsource/F6;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lcom/ironsource/F6;)V
    .registers 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1}, Lcom/ironsource/F6;->a(Lcom/ironsource/u6;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/F6;->a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/F6;->a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/A6;->a:Lcom/ironsource/p0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscreen ProgressiveOnLoaded Strategy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/ironsource/v6;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A6;->b:Lcom/ironsource/v6;

    return-object v0
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/F6;->b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/F6;->b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final c()Lcom/ironsource/x6;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A6;->c:Lcom/ironsource/x6;

    return-object v0
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/F6;->c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final d()Lcom/ironsource/y6;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A6;->d:Lcom/ironsource/y6;

    return-object v0
.end method

.method public loadAd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A6;->e:Lcom/ironsource/F6;

    invoke-interface {v0}, Lcom/ironsource/F6;->loadAd()V

    return-void
.end method

###### Class com.ironsource.A6.a (com.ironsource.A6$a)
.class public final Lcom/ironsource/A6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/A6;
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
    invoke-direct {p0}, Lcom/ironsource/A6$a;-><init>()V

    return-void
.end method
