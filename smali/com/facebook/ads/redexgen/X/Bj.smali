###### Class com.facebook.ads.redexgen.X.C1489Bj (com.facebook.ads.redexgen.X.Bj)
.class public final Lcom/facebook/ads/redexgen/X/Bj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fm;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A02:Lcom/facebook/ads/redexgen/X/nG;

.field public final A03:Lcom/facebook/ads/redexgen/X/fp;

.field public final A04:Lcom/facebook/ads/redexgen/X/Be;

.field public final A05:Lcom/facebook/ads/redexgen/X/BM;

.field public final A06:Lcom/facebook/ads/redexgen/X/BG;

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/Be;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/BR;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hi;",
            "Lcom/facebook/ads/redexgen/X/nG;",
            "Lcom/facebook/ads/redexgen/X/Be;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/ads/redexgen/X/BR;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32152
    .local p7, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32153
    new-instance v0, Lcom/facebook/ads/redexgen/X/5d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5d;-><init>(Lcom/facebook/ads/redexgen/X/Bj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A06:Lcom/facebook/ads/redexgen/X/BG;

    .line 32154
    new-instance v0, Lcom/facebook/ads/redexgen/X/5c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5c;-><init>(Lcom/facebook/ads/redexgen/X/Bj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A05:Lcom/facebook/ads/redexgen/X/BM;

    .line 32155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Z

    .line 32156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    .line 32157
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bj;->A02:Lcom/facebook/ads/redexgen/X/nG;

    .line 32158
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Bj;->A07:Ljava/lang/String;

    .line 32159
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Bj;->A04:Lcom/facebook/ads/redexgen/X/Be;

    .line 32160
    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p3, p4, p5, p7}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Lcom/facebook/ads/redexgen/X/Be;Ljava/lang/String;ZLjava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 32161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A2B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 32162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AKF()V

    .line 32163
    invoke-virtual {p6, p0}, Lcom/facebook/ads/redexgen/X/BR;->A0m(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32164
    :goto_37
    return-void

    .line 32165
    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AKG()V

    .line 32166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A04:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A06:Lcom/facebook/ads/redexgen/X/BG;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A05:Lcom/facebook/ads/redexgen/X/BM;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A03([Lcom/facebook/ads/redexgen/X/mQ;)V

    goto :goto_37
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Hi;
    .registers 1

    .line 32167
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/fp;
    .registers 1

    .line 32168
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A03:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Be;
    .registers 1

    .line 32169
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A04:Lcom/facebook/ads/redexgen/X/Be;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/BM;
    .registers 1

    .line 32170
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A05:Lcom/facebook/ads/redexgen/X/BM;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/BG;
    .registers 1

    .line 32171
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A06:Lcom/facebook/ads/redexgen/X/BG;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Bj;)Z
    .registers 1

    .line 32172
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Z

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Bj;Z)Z
    .registers 2

    .line 32173
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Z

    return p1
.end method


# virtual methods
.method public final A07()V
    .registers 3

    .line 32174
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 32175
    .local v0, "unregisterRunnable":Lcom/facebook/ads/redexgen/X/oq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A04:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A0r()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 32176
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/qV;->A00(Ljava/lang/Runnable;)V

    .line 32177
    :goto_10
    return-void

    .line 32178
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A04:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getStateHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method public final declared-synchronized A08()V
    .registers 4

    monitor-enter p0

    .line 32179
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Z

    if-nez v0, :cond_12

    .line 32180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A06()Ljava/util/Map;

    move-result-object v2

    .line 32181
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A02:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/nG;->ACo(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 32182
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Bj;
    :cond_12
    monitor-exit p0

    return-void

    .line 32183
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AFo()V
    .registers 2

    .line 32184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AKJ()V

    .line 32185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bj;->A08()V

    .line 32186
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13435c (com.facebook.ads.redexgen.X.5c)
.class public final Lcom/facebook/ads/redexgen/X/5c;
.super Lcom/facebook/ads/redexgen/X/BM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Bj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bj;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11928
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5Y;)V
    .registers 4

    .line 11929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A05(Lcom/facebook/ads/redexgen/X/Bj;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 11930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AKI()V

    .line 11931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A08()V

    .line 11932
    :cond_1a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Bj;->A06(Lcom/facebook/ads/redexgen/X/Bj;Z)Z

    .line 11933
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11934
    check-cast p1, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5c;->A00(Lcom/facebook/ads/redexgen/X/5Y;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13445d (com.facebook.ads.redexgen.X.5d)
.class public final Lcom/facebook/ads/redexgen/X/5d;
.super Lcom/facebook/ads/redexgen/X/BG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Bj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bj;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11935
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5d;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BG;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5W;)V
    .registers 3

    .line 11936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5d;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A05(Lcom/facebook/ads/redexgen/X/Bj;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 11937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5d;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00(Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AKK()V

    .line 11938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5d;->A00:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A08()V

    .line 11939
    :cond_1a
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11940
    check-cast p1, Lcom/facebook/ads/redexgen/X/5W;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/5W;)V

    return-void
.end method
