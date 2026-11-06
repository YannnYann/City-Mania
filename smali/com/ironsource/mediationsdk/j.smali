###### Class com.ironsource.mediationsdk.j (com.ironsource.mediationsdk.j)
.class public Lcom/ironsource/mediationsdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/j$b;,
        Lcom/ironsource/mediationsdk/j$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "BANNER"

.field public static final b:Ljava/lang/String; = "LARGE"

.field public static final c:Ljava/lang/String; = "RECTANGLE"

.field public static final d:Ljava/lang/String; = "LEADERBOARD"

.field public static final e:Ljava/lang/String; = "SMART"

.field public static final f:Ljava/lang/String; = "CUSTOM"

.field public static final g:Ljava/lang/String; = "MEDIUM_RECTANGLE"

.field public static final h:Ljava/lang/String; = "bannerAdSize"

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:I = -0x1

.field public static final q:Ljava/lang/String; = "Adaptive=true"


# direct methods
.method public static synthetic $r8$lambda$NORLODrBfkMHv6UNC6jr4mytInY(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 5

    const/4 v0, -0x1

    .line 120
    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/c;)Ljava/util/Map;

    move-result-object v1

    .line 124
    invoke-static {v1, p0}, Lcom/ironsource/mediationsdk/j;->a(Ljava/util/Map;I)I

    move-result v0

    .line 127
    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/j;->a(II)V

    .line 128
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximal height - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for width - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    return v0

    :catch_2f
    move-exception p0

    .line 130
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 131
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get adaptive height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v0
.end method

.method private static a(Ljava/lang/Object;I)I
    .registers 3

    .line 141
    instance-of v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_b

    .line 142
    check-cast p0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getAdaptiveHeight(I)I

    move-result p0

    return p0

    .line 143
    :cond_b
    instance-of v0, p0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;

    if-eqz v0, :cond_16

    .line 144
    check-cast p0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;

    invoke-virtual {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->getAdaptiveHeight(I)I

    move-result p0

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/util/Map;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    :try_start_13
    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/Object;I)I

    move-result v2

    .line 138
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1c

    goto :goto_9

    :catchall_1c
    move-exception v2

    .line 140
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_21
    return v0
.end method

.method public static a(JJ)J
    .registers 6

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long/2addr p2, v0

    return-wide p2
.end method

.method public static a()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 4

    .line 50
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "LEADERBOARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 4

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Lcom/ironsource/mediationsdk/ISBannerSize;)Ljava/lang/String;
    .registers 4

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adaptive=true, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    .line 241
    invoke-virtual {v1}, Lcom/ironsource/Y7;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    .line 243
    invoke-virtual {v2}, Lcom/ironsource/Y7;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; fallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/ironsource/mediationsdk/c;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/c;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 134
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/c;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static a(II)V
    .registers 5

    .line 153
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1d

    .line 157
    const-string p0, "errorCode"

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string p0, "reason"

    const-string p1, "No networks found supporting adaptive banners"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    .line 160
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",h:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    const-string p1, "ext1"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :goto_3b
    new-instance p0, Lcom/ironsource/C5;

    sget-object p1, Lcom/ironsource/D5;->y2:Lcom/ironsource/D5;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 165
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    .line 167
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 168
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/o;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 51
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/o;->a()V

    :cond_5
    return-void
.end method

.method private static a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 8

    .line 84
    iget-object v0, p3, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    invoke-virtual {v0}, Lcom/ironsource/Y7;->d()I

    move-result v0

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 85
    iget-object v1, p3, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    invoke-virtual {v1}, Lcom/ironsource/Y7;->c()I

    move-result v1

    invoke-static {p2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 86
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x11

    .line 92
    invoke-virtual {v3, p2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_37

    .line 101
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    :cond_37
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containerParams height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    .line 111
    invoke-virtual {v1}, Lcom/ironsource/Y7;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    .line 113
    invoke-virtual {p3}, Lcom/ironsource/Y7;->d()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 114
    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v3, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V

    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V
    .registers 12

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    .line 52
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 53
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/o;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v4

    .line 54
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)Lcom/ironsource/Ff$a;

    :cond_20
    return-void
.end method

.method private static synthetic a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V
    .registers 8

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    if-eqz p2, :cond_20

    .line 67
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 68
    invoke-static {p0, p1, p3, p2}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    goto :goto_20

    :cond_1c
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_20
    :goto_20
    if-eqz p5, :cond_48

    .line 75
    invoke-interface {p5}, Lcom/ironsource/B3;->a()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 79
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 80
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while binding a banner - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/o;Lcom/ironsource/l3;Lcom/ironsource/mediationsdk/j$b;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/ironsource/mediationsdk/j;->c(Lcom/ironsource/mediationsdk/o;)Z

    move-result v0

    const-string v1, "can\'t load banner - %s"

    if-nez v0, :cond_18

    if-nez p0, :cond_d

    .line 4
    const-string p0, "banner is null"

    goto :goto_f

    :cond_d
    const-string p0, "banner is destroyed"

    :goto_f
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 5
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p1, :cond_25

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_25
    if-nez p1, :cond_2a

    .line 14
    const-string p0, "placement is null"

    goto :goto_2c

    :cond_2a
    const-string p0, "placement name is empty"

    :goto_2c
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 15
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 21
    :cond_34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 22
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 24
    invoke-interface {p2, p0}, Lcom/ironsource/mediationsdk/j$b;->a(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_43
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/j$b;->a()V

    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/o;Lcom/ironsource/mediationsdk/j$b;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 29
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/o;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 39
    :cond_9
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/j$b;->a()V

    return-void

    :cond_d
    :goto_d
    if-nez p0, :cond_12

    .line 43
    const-string p0, "banner is null"

    goto :goto_14

    :cond_12
    const-string p0, "banner is destroyed"

    :goto_14
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 44
    const-string v0, "can\'t destroy banner - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/j$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p0, :cond_b

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, "unknown"

    .line 146
    :goto_d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 147
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling getAdaptiveHeight for adapter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    const-string v0, "ext1"

    if-eqz p1, :cond_f3

    .line 169
    :try_start_4
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    sparse-switch v2, :sswitch_data_f4

    goto :goto_51

    :sswitch_15
    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, v7

    goto :goto_52

    .line 170
    :sswitch_1f
    const-string v2, "BANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    goto :goto_52

    .line 171
    :sswitch_29
    const-string v2, "LEADERBOARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, v6

    goto :goto_52

    .line 172
    :sswitch_33
    const-string v2, "SMART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, v5

    goto :goto_52

    .line 173
    :sswitch_3d
    const-string v2, "LARGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, v4

    goto :goto_52

    .line 174
    :sswitch_47
    const-string v2, "RECTANGLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_e2

    if-eqz v1, :cond_51

    move v1, v3

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v1, -0x1

    :goto_52
    const-string v2, "bannerAdSize"

    if-eqz v1, :cond_ab

    if-eq v1, v4, :cond_a3

    if-eq v1, v3, :cond_9b

    if-eq v1, v6, :cond_93

    if-eq v1, v5, :cond_8b

    if-eq v1, v7, :cond_61

    goto :goto_b2

    :cond_61
    const/4 v1, 0x6

    .line 196
    :try_start_62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "custom_banner_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 198
    :cond_8b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 199
    :cond_93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 200
    :cond_9b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 201
    :cond_a3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 202
    :cond_ab
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_b2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 230
    invoke-static {p1}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_de
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_e1} :catch_e2

    return-void

    :catch_e2
    move-exception p0

    .line 237
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 238
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_f3
    return-void

    :sswitch_data_f4
    .sparse-switch
        -0x171242b1 -> :sswitch_47
        0x44dc31b -> :sswitch_3d
        0x4b59da9 -> :sswitch_33
        0x1aa2fb5d -> :sswitch_29
        0x7458732c -> :sswitch_1f
        0x77297f71 -> :sswitch_15
    .end sparse-switch
.end method

.method public static a(Lcom/ironsource/Y7;II)Z
    .registers 4

    if-eqz p0, :cond_24

    .line 250
    invoke-virtual {p0}, Lcom/ironsource/Y7;->d()I

    move-result v0

    if-lez v0, :cond_24

    .line 251
    invoke-virtual {p0}, Lcom/ironsource/Y7;->c()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_24

    .line 258
    :cond_f
    invoke-virtual {p0}, Lcom/ironsource/Y7;->d()I

    move-result v0

    if-lt v0, p1, :cond_1b

    invoke-virtual {p0}, Lcom/ironsource/Y7;->c()I

    move-result p0

    if-ge p0, p2, :cond_22

    .line 259
    :cond_1b
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p1, "Container size too small: Banner may not display correctly."

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :cond_22
    const/4 p0, 0x1

    return p0

    .line 260
    :cond_24
    :goto_24
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p1, "Container size is invalid: Default banner size will be used."

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)I
    .registers 2

    .line 6
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->F()Z

    move-result v0

    if-nez v0, :cond_13

    .line 7
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "The mediation must be successfully initiated before calling this API"

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 9
    :cond_13
    invoke-static {p0}, Lcom/ironsource/mediationsdk/j;->a(I)I

    move-result p0

    return p0
.end method

.method public static b()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SMART"

    if-eqz v0, :cond_17

    const/16 v0, 0x2d8

    const/16 v2, 0x5a

    .line 3
    invoke-static {v1, v0, v2}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    :cond_17
    const/16 v0, 0x140

    const/16 v2, 0x32

    .line 5
    invoke-static {v1, v0, v2}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/ironsource/mediationsdk/o;)V
    .registers 5

    if-eqz p0, :cond_23

    .line 10
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/o;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isSmart()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 11
    invoke-static {}, Lcom/ironsource/mediationsdk/j;->b()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/ironsource/mediationsdk/m;->a:Lcom/ironsource/mediationsdk/m$a;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/mediationsdk/m$a;->a(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/Y7;)V

    .line 13
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->setAdaptive(Z)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/o;->setBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)V

    :cond_23
    return-void
.end method

.method public static c(Lcom/ironsource/mediationsdk/o;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/o;->b()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

###### Class com.ironsource.mediationsdk.j.a (com.ironsource.mediationsdk.j$a)
.class interface abstract Lcom/ironsource/mediationsdk/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation
.end method

###### Class com.ironsource.mediationsdk.j.b (com.ironsource.mediationsdk.j$b)
.class interface abstract Lcom/ironsource/mediationsdk/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

###### Class com.ironsource.mediationsdk.j$$ExternalSyntheticLambda0 (com.ironsource.mediationsdk.j$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/o;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$5:Lcom/ironsource/B3;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/o;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/mediationsdk/ISBannerSize;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p6, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$5:Lcom/ironsource/B3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/o;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/mediationsdk/ISBannerSize;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/j$$ExternalSyntheticLambda0;->f$5:Lcom/ironsource/B3;

    invoke-static/range {v0 .. v5}, Lcom/ironsource/mediationsdk/j;->$r8$lambda$NORLODrBfkMHv6UNC6jr4mytInY(Lcom/ironsource/mediationsdk/o;Landroid/view/View;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/B3;)V

    return-void
.end method
