###### Class com.ironsource.mediationsdk.e (com.ironsource.mediationsdk.e)
.class public Lcom/ironsource/mediationsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/ironsource/mediationsdk/f;

.field private f:Lcom/ironsource/mediationsdk/IronSource$a;

.field private g:Lcom/ironsource/A2;

.field private h:Lcom/ironsource/c2;

.field private i:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/A2;Lcom/ironsource/c2;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    .line 22
    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    .line 24
    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 53
    iput-object p2, p0, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    .line 54
    iput-object p3, p0, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    .line 3
    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    .line 5
    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;IZLcom/ironsource/ia;)Lorg/json/JSONObject;
    .registers 9
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
            "Lcom/ironsource/j2;",
            "IZ",
            "Lcom/ironsource/ia;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/h;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 152
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/Map;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/List;)V

    .line 154
    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/j2;)V

    .line 155
    invoke-virtual {v0, p4}, Lcom/ironsource/mediationsdk/h;->a(I)V

    .line 156
    iget-object p1, p0, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 157
    invoke-virtual {v0, p6}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/ia;)V

    .line 158
    invoke-virtual {v0, p5}, Lcom/ironsource/mediationsdk/h;->b(Z)V

    .line 160
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/h;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V
    .registers 12

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/f;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)Lcom/ironsource/mediationsdk/e$a;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    move-object p1, v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute auction exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_50

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    .line 17
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/f;->a()Z

    move-result p2

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v2, 0x3e8

    move-object v1, p3

    .line 19
    invoke-interface/range {v1 .. v7}, Lcom/ironsource/c2;->a(ILjava/lang/String;ILjava/lang/String;J)V

    :cond_50
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/j2;",
            "I",
            "Lcom/ironsource/ia;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->g()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_2d

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 23
    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;IZLcom/ironsource/ia;)Lorg/json/JSONObject;

    move-result-object p4

    move p5, v6

    .line 25
    new-instance p1, Lcom/ironsource/mediationsdk/e$a;

    iget-object p2, v1, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    new-instance p3, Ljava/net/URL;

    iget-object p6, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p6, v0}, Lcom/ironsource/A2;->a(Z)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p3, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p6, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    invoke-direct/range {p1 .. p6}, Lcom/ironsource/mediationsdk/e$a;-><init>(Lcom/ironsource/c2;Ljava/net/URL;Lorg/json/JSONObject;ZLcom/ironsource/A2;)V

    .line 32
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    :goto_2b
    move-object p1, v0

    goto :goto_30

    :catch_2d
    move-exception v0

    move-object v1, p0

    goto :goto_2b

    .line 34
    :goto_30
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 35
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "execute auction exception "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 36
    iget-object v2, v1, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    iget-object p2, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    .line 41
    invoke-virtual {p2}, Lcom/ironsource/A2;->n()Z

    move-result p2

    const/16 p3, 0x3e8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/16 v3, 0x3e8

    .line 43
    invoke-interface/range {v2 .. v8}, Lcom/ironsource/c2;->a(ILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/j2;",
            "I",
            "Lcom/ironsource/ia;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p7, p0, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;)V

    return-void
.end method

.method public a(Lcom/ironsource/y2;ILcom/ironsource/y2;)V
    .registers 14

    .line 68
    invoke-virtual {p1}, Lcom/ironsource/y2;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportLoadSuccess"

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 71
    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    move-object v6, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p2

    .line 73
    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1, p1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v5

    move-object p1, v6

    goto :goto_8

    :cond_35
    move-object v6, p1

    move v5, p2

    if-eqz p3, :cond_66

    .line 77
    invoke-virtual {p3}, Lcom/ironsource/y2;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 80
    const-string v8, "102"

    const-string v9, ""

    const-string v7, ""

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p3

    const-string v0, "GenericNotifications"

    invoke-virtual {p3, v2, v0, p2}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_66
    return-void
.end method

.method public a(Lcom/ironsource/y2;ILcom/ironsource/y2;Ljava/lang/String;)V
    .registers 15

    .line 46
    invoke-virtual {p1}, Lcom/ironsource/y2;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportImpression"

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 49
    const-string v7, ""

    const-string v8, ""

    move-object v6, p1

    move v5, p2

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p2

    .line 51
    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v2, p4, p1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v5

    move-object p1, v6

    move-object p4, v9

    goto :goto_8

    :cond_35
    move-object v6, p1

    move v5, p2

    move-object v9, p4

    if-eqz p3, :cond_65

    .line 55
    invoke-virtual {p3}, Lcom/ironsource/y2;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 58
    const-string v7, ""

    const-string v8, "102"

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p3

    const-string p4, "GenericNotifications"

    invoke-virtual {p3, v2, p4, p2}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_65
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ">;I",
            "Lcom/ironsource/y2;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->j()I

    move-result v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "reportAuctionLose"

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    move-object/from16 v4, p2

    .line 100
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/y2;

    .line 101
    invoke-virtual {v2}, Lcom/ironsource/y2;->j()I

    move-result v5

    .line 102
    invoke-virtual {v2}, Lcom/ironsource/y2;->i()Ljava/lang/String;

    move-result-object v10

    if-ge v5, v0, :cond_36

    .line 105
    const-string v6, "1"

    :goto_34
    move-object v11, v6

    goto :goto_39

    :cond_36
    const-string v6, "102"

    goto :goto_34

    .line 107
    :goto_39
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "instance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", instancePriceOrder= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", loseReasonCode="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", winnerInstance="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", winnerInstancePriceOrder="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/ironsource/y2;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v6

    .line 131
    const-string v12, ""

    move/from16 v8, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v12}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v7

    .line 134
    invoke-virtual {v2}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8, v6}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_a6
    move-object/from16 v4, p2

    goto/16 :goto_8

    :cond_aa
    if-eqz p4, :cond_dd

    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/y2;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v12

    .line 143
    const-string v17, "102"

    const-string v18, ""

    const-string v16, ""

    move/from16 v14, p3

    move-object/from16 v15, p5

    invoke-virtual/range {v12 .. v18}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v2

    const-string v4, "GenericNotifications"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_dd
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/u;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ">;I",
            "Lcom/ironsource/y2;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/u;

    .line 91
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/f;->b()Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.mediationsdk.e.a (com.ironsource.mediationsdk.e$a)
.class public Lcom/ironsource/mediationsdk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/ironsource/c2;

.field protected b:Lcom/ironsource/mediationsdk/d$a;

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected f:I

.field protected g:Ljava/lang/String;

.field private h:I

.field protected i:Ljava/lang/String;

.field protected j:I

.field private final k:Ljava/net/URL;

.field private final l:Lorg/json/JSONObject;

.field private final m:Z

.field private final n:I

.field private final o:J

.field private final p:Z

.field private final q:Z

.field private final r:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/c2;Ljava/net/URL;Lorg/json/JSONObject;ZLcom/ironsource/A2;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e$a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ironsource/mediationsdk/e$a;->j:I

    .line 20
    iput-object p1, p0, Lcom/ironsource/mediationsdk/e$a;->a:Lcom/ironsource/c2;

    .line 21
    iput-object p2, p0, Lcom/ironsource/mediationsdk/e$a;->k:Ljava/net/URL;

    .line 22
    iput-object p3, p0, Lcom/ironsource/mediationsdk/e$a;->l:Lorg/json/JSONObject;

    .line 23
    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/e$a;->m:Z

    .line 24
    invoke-virtual {p5}, Lcom/ironsource/A2;->g()I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/e$a;->n:I

    .line 25
    invoke-virtual {p5}, Lcom/ironsource/A2;->m()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/mediationsdk/e$a;->o:J

    .line 26
    invoke-virtual {p5}, Lcom/ironsource/A2;->o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/e$a;->p:Z

    .line 27
    invoke-virtual {p5}, Lcom/ironsource/A2;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/e$a;->q:Z

    .line 28
    invoke-virtual {p5}, Lcom/ironsource/A2;->d()I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    .line 29
    invoke-virtual {p5}, Lcom/ironsource/A2;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/e$a;->r:Z

    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .line 6
    iget v0, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 7
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p5;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_e
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    .line 129
    sget-object v0, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/e$a;->r:Z

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 98
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    :goto_13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 107
    :cond_1d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p2

    .line 56
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 57
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    const-string p3, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1, p3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 61
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 89
    invoke-static {p1, p2}, Lcom/ironsource/Q9;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 95
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 96
    :cond_10
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "decryption error"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(JJ)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_14

    .line 5
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_14
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    iget v2, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4d

    .line 18
    :try_start_15
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/p5;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_4f

    :catch_1e
    move-exception v2

    .line 20
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->i:Ljava/lang/String;

    const/16 v4, 0x3f7

    .line 22
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->j:I

    const/4 v4, 0x1

    .line 25
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    .line 26
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get encrypted session key exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 30
    :cond_4d
    const-string v2, ""

    :goto_4f
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/e$a;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_65

    .line 36
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v5, "compressing and encrypting auction request"

    invoke-virtual {p3, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 37
    invoke-static {v4, p2}, Lcom/ironsource/Q9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_69

    .line 39
    :cond_65
    invoke-static {v4, p2}, Lcom/ironsource/Q9;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    :goto_69
    iget p3, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    if-ne p3, v3, :cond_78

    .line 46
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "{\"sk\" : \"%1$s\", \"ct\" : \"%2$s\"}"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_82

    .line 48
    :cond_78
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "{\"request\" : \"%1$s\"}"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    :goto_82
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 53
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "decrypting and decompressing auction response"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 258
    invoke-static {p1, p2}, Lcom/ironsource/Q9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 264
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 265
    :cond_13
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "decompression error"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/e$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 65
    const-string v1, "ct"

    goto :goto_e

    .line 66
    :cond_c
    const-string v1, "response"

    .line 67
    :goto_e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_19

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/e$a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 73
    :cond_19
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 81
    invoke-virtual {p0, v0, p3}, Lcom/ironsource/mediationsdk/e$a;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    :cond_11
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/d;->a(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/d$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 86
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/d$a;->c()I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 87
    iget-object p1, p0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/d$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    return-void

    .line 88
    :cond_2a
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "empty response"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ZLcom/ironsource/c2;J)V
    .registers 25

    move-object/from16 v0, p0

    if-eqz p1, :cond_32

    .line 111
    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 112
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/d$a;->h()Ljava/util/List;

    move-result-object v3

    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 113
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/d$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 114
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/d$a;->e()Lcom/ironsource/y2;

    move-result-object v5

    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 115
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/d$a;->f()Lorg/json/JSONObject;

    move-result-object v6

    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    .line 116
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/d$a;->b()Lorg/json/JSONObject;

    move-result-object v7

    iget v1, v0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/lit8 v8, v1, 0x1

    iget v11, v0, Lcom/ironsource/mediationsdk/e$a;->j:I

    iget-object v12, v0, Lcom/ironsource/mediationsdk/e$a;->i:Ljava/lang/String;

    move-object/from16 v2, p2

    move-wide/from16 v9, p3

    .line 117
    invoke-interface/range {v2 .. v12}, Lcom/ironsource/c2;->a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V

    return-void

    .line 128
    :cond_32
    iget v14, v0, Lcom/ironsource/mediationsdk/e$a;->c:I

    iget-object v15, v0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    iget v1, v0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/lit8 v16, v1, 0x1

    iget-object v1, v0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    move-object/from16 v13, p2

    move-wide/from16 v18, p3

    move-object/from16 v17, v1

    invoke-interface/range {v13 .. v19}, Lcom/ironsource/c2;->a(ILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public b()Z
    .registers 10

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/e$a;->e:J

    const/4 v0, 0x0

    .line 8
    :try_start_c
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->j:I

    const/16 v2, 0x3f7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_15

    move v1, v3

    goto :goto_17

    .line 10
    :cond_15
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->h:I

    :goto_17
    iput v1, p0, Lcom/ironsource/mediationsdk/e$a;->h:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1d5

    .line 23
    iput v0, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    const/4 v1, 0x0

    .line 24
    :goto_1c
    iget v2, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    iget v4, p0, Lcom/ironsource/mediationsdk/e$a;->n:I

    if-ge v2, v4, :cond_1c5

    .line 27
    :try_start_22
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction Handler: auction trial "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " out of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ironsource/mediationsdk/e$a;->n:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " max trials"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 36
    invoke-virtual {v6, v7, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 40
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/ironsource/mediationsdk/e$a;->k:Ljava/net/URL;

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/e$a;->o:J

    invoke-direct {p0, v2, v6, v7}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 43
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parameters for auction url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/e$a;->k:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parameters for auction POST data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/e$a;->l:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 46
    iget-object v6, p0, Lcom/ironsource/mediationsdk/e$a;->l:Lorg/json/JSONObject;

    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/e$a;->p:Z

    invoke-direct {p0, v1, v6, v7}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Z)V

    .line 48
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_d8

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_d8

    const/16 v7, 0x3e9

    .line 54
    iput v7, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auction response code not valid, error code response from server - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    iget v2, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    iget v6, p0, Lcom/ironsource/mediationsdk/e$a;->n:I

    sub-int/2addr v6, v3

    if-ge v2, v6, :cond_1be

    .line 63
    iget-wide v6, p0, Lcom/ironsource/mediationsdk/e$a;->o:J

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/ironsource/mediationsdk/e$a;->a(JJ)V

    goto/16 :goto_1be

    :catchall_d2
    move-exception v2

    goto/16 :goto_157

    :catch_d5
    move-exception v2

    goto/16 :goto_190

    .line 69
    :cond_d8
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2
    :try_end_dc
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_dc} :catch_d5
    .catchall {:try_start_22 .. :try_end_dc} :catchall_d2

    .line 72
    :try_start_dc
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/e$a;->m:Z

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/e$a;->q:Z

    invoke-virtual {p0, v2, v4, v5}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/String;ZZ)V
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_e3} :catch_e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_dc .. :try_end_e3} :catch_d5
    .catchall {:try_start_dc .. :try_end_e3} :catchall_d2

    .line 95
    :try_start_e3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v3

    :catch_e7
    move-exception v2

    .line 96
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10a

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "decryption error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10a

    const/16 v4, 0x3eb

    .line 98
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 99
    const-string v4, "Auction decryption error"

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    goto :goto_12d

    .line 100
    :cond_10a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_125

    .line 101
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "decompression error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_125

    const/16 v4, 0x3f0

    .line 102
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 103
    const-string v4, "Auction decompression error"

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    goto :goto_12d

    :cond_125
    const/16 v4, 0x3ea

    .line 105
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 106
    const-string v4, "Auction parsing error"

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    .line 109
    :goto_12d
    iget v4, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    .line 111
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction handle response exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_156
    .catch Ljava/net/SocketTimeoutException; {:try_start_e3 .. :try_end_156} :catch_d5
    .catchall {:try_start_e3 .. :try_end_156} :catchall_d2

    return v0

    .line 131
    :goto_157
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 132
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v1, :cond_179

    .line 135
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_179
    const/16 v1, 0x3e8

    .line 138
    iput v1, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 139
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    .line 140
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    return v0

    .line 141
    :goto_190
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_19c

    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19c
    const/16 v4, 0x3ee

    .line 146
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 147
    const-string v4, "Connection timed out"

    iput-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    .line 148
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction socket timeout exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 149
    :cond_1be
    :goto_1be
    iget v2, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    goto/16 :goto_1c

    :cond_1c5
    sub-int/2addr v4, v3

    .line 248
    iput v4, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    .line 250
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    return v0

    :catch_1d5
    move-exception v1

    .line 251
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/16 v2, 0x3ef

    .line 252
    iput v2, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    .line 253
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    .line 254
    iput v0, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    .line 255
    iget v2, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/e$a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    .line 256
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auction request exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v0
.end method

.method public run()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/e$a;->b()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/e$a;->a:Lcom/ironsource/c2;

    if-nez v1, :cond_9

    return-void

    .line 8
    :cond_9
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/e$a;->e:J

    sub-long/2addr v2, v4

    .line 10
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/e$a;->a(ZLcom/ironsource/c2;J)V

    return-void
.end method
