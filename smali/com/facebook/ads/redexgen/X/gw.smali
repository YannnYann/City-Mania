###### Class com.facebook.ads.redexgen.X.C2525gw (com.facebook.ads.redexgen.X.gw)
.class public final Lcom/facebook/ads/redexgen/X/gw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/gv;,
        Lcom/facebook/ads/redexgen/X/gu;
    }
.end annotation


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/gw;

.field public static A06:[B

.field public static final A07:Ljava/lang/Object;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/os/Handler;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/gu;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/gv;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/gv;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gw;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 92047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92048
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    .line 92049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    .line 92050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:Ljava/util/ArrayList;

    .line 92051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Landroid/content/Context;

    .line 92052
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gt;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/gt;-><init>(Lcom/facebook/ads/redexgen/X/gw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:Landroid/os/Handler;

    .line 92053
    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gw;
    .registers 4

    .line 92054
    sget-object v2, Lcom/facebook/ads/redexgen/X/gw;->A07:Ljava/lang/Object;

    monitor-enter v2

    .line 92055
    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/gw;

    if-nez v0, :cond_12

    .line 92056
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/gw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/gw;

    .line 92057
    :cond_12
    sget-object v0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/gw;

    monitor-exit v2

    return-object v0

    .line 92058
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/gw;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 9

    .line 92059
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    monitor-enter v1

    .line 92060
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92061
    .local v1, "N":I
    if-gtz v0, :cond_d

    .line 92062
    monitor-exit v1

    goto :goto_44

    .line 92063
    :cond_d
    new-array v7, v0, [Lcom/facebook/ads/redexgen/X/gu;

    .line 92064
    .local v2, "brs":[Lcom/facebook/ads/redexgen/X/gu;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92066
    .end local v1    # "N":I
    monitor-exit v1

    .line 92067
    const/4 v6, 0x0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_45

    .local v0, "i":I
    :goto_1b
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 92068
    aget-object v5, v7, v6

    .line 92069
    .local v1, "br":Lcom/facebook/ads/redexgen/X/gu;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/gu;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 92070
    .local v3, "nbr":I
    const/4 v3, 0x0

    .local v4, "j":I
    :goto_27
    if-ge v3, v4, :cond_41

    .line 92071
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/gu;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/gv;

    .line 92072
    .local v5, "rec":Lcom/facebook/ads/redexgen/X/gv;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A01:Z

    if-nez v0, :cond_3e

    .line 92073
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/gv;->A02:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:Landroid/content/Context;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/gu;->A00:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92074
    .end local v5    # "rec":Lcom/facebook/ads/redexgen/X/gv;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 92075
    .end local v1    # "br":Lcom/facebook/ads/redexgen/X/gu;
    .end local v3    # "nbr":I
    .end local v4    # "j":I
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 92076
    :goto_44
    return-void

    .line 92077
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0xb3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A06:[B

    return-void

    :array_a
    .array-data 1
        -0x74t
        -0x74t
        -0x4et
        -0x2bt
        -0x28t
        -0x20t
        -0x2ft
        -0x22t
        -0x74t
        -0x30t
        -0x2bt
        -0x30t
        -0x74t
        -0x26t
        -0x25t
        -0x20t
        -0x74t
        -0x27t
        -0x33t
        -0x20t
        -0x31t
        -0x2ct
        -0x5at
        -0x74t
        -0x6ft
        -0x6ft
        -0x49t
        -0x26t
        -0x23t
        -0x1bt
        -0x2at
        -0x1dt
        -0x6ft
        -0x22t
        -0x2et
        -0x1bt
        -0x2ct
        -0x27t
        -0x2at
        -0x2bt
        -0x6et
        -0x6ft
        -0x6ft
        -0x22t
        -0x2et
        -0x1bt
        -0x2ct
        -0x27t
        -0x52t
        -0x5ft
        -0x17t
        -0x66t
        -0x17t
        -0x20t
        -0x66t
        -0x1dt
        -0x18t
        -0x12t
        -0x21t
        -0x18t
        -0x12t
        -0x66t
        0x7et
        -0x2ft
        -0x3ft
        -0x3at
        -0x3dt
        -0x35t
        -0x3dt
        0x7et
        -0x58t
        -0x36t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
        -0x79t
        -0x2dt
        -0x30t
        -0x26t
        -0x25t
        -0x5ft
        -0x79t
        0x1bt
        0x3et
        0x32t
        0x30t
        0x3bt
        0x11t
        0x41t
        0x3et
        0x30t
        0x33t
        0x32t
        0x30t
        0x42t
        0x43t
        0x1ct
        0x30t
        0x3dt
        0x30t
        0x36t
        0x34t
        0x41t
        -0x33t
        -0x1ft
        -0xct
        -0x1dt
        -0x18t
        -0x17t
        -0x12t
        -0x19t
        -0x60t
        -0x1ft
        -0x19t
        -0x1ft
        -0x17t
        -0x12t
        -0xdt
        -0xct
        -0x60t
        -0x1at
        -0x17t
        -0x14t
        -0xct
        -0x1bt
        -0xet
        -0x60t
        -0x50t
        -0x3dt
        -0x2ft
        -0x33t
        -0x36t
        -0x2ct
        -0x39t
        -0x34t
        -0x3bt
        0x7et
        -0x2et
        -0x29t
        -0x32t
        -0x3dt
        0x7et
        -0x13t
        -0x11t
        0x0t
        -0xbt
        -0x5t
        -0x6t
        -0x3t
        -0x5t
        0xet
        -0x1t
        0x1t
        0x9t
        0xct
        0x13t
        0x9t
        0x6t
        0x19t
        0x6t
        0x1dt
        0x22t
        0x19t
        0xet
        -0x35t
        -0x3ct
        -0x3ft
        -0x3ct
        -0x3bt
        -0x33t
        -0x3ct
        0x76t
        -0x38t
        -0x45t
        -0x49t
        -0x37t
        -0x3bt
        -0x3ct
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/gw;)V
    .registers 1

    .line 92078
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gw;->A02()V

    return-void
.end method


# virtual methods
.method public final A05(Landroid/content/BroadcastReceiver;)V
    .registers 13

    .line 92079
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    monitor-enter v9

    .line 92080
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 92081
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v10, :cond_f

    .line 92082
    monitor-exit v9

    return-void

    .line 92083
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    .local v2, "i":I
    :goto_15
    if-ltz v8, :cond_62

    .line 92084
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/gv;

    .line 92085
    .local v4, "filter":Lcom/facebook/ads/redexgen/X/gv;
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/gv;->A01:Z

    .line 92086
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_20
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/gv;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v5, v0, :cond_5f

    .line 92087
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/gv;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 92088
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 92089
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_5c

    .line 92090
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .local v8, "k":I
    :goto_3d
    if-ltz v2, :cond_51

    .line 92091
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/gv;

    .line 92092
    .local v9, "rec":Lcom/facebook/ads/redexgen/X/gv;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A02:Landroid/content/BroadcastReceiver;

    if-ne v0, p1, :cond_4e

    .line 92093
    iput-boolean v7, v1, Lcom/facebook/ads/redexgen/X/gv;->A01:Z

    .line 92094
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92095
    .end local v9    # "rec":Lcom/facebook/ads/redexgen/X/gv;
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 92096
    .end local v8    # "k":I
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5c

    .line 92097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92098
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 92099
    .end local v4    # "filter":Lcom/facebook/ads/redexgen/X/gv;
    .end local v5    # "j":I
    :cond_5f
    add-int/lit8 v8, v8, -0x1

    goto :goto_15

    .line 92100
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "i":I
    :cond_62
    monitor-exit v9

    .line 92101
    return-void

    .line 92102
    :catchall_64
    move-exception v0

    monitor-exit v9
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public final A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 10

    .line 92103
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    monitor-enter v6

    .line 92104
    :try_start_3
    new-instance v5, Lcom/facebook/ads/redexgen/X/gv;

    invoke-direct {v5, p2, p1}, Lcom/facebook/ads/redexgen/X/gv;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 92105
    .local v1, "entry":Lcom/facebook/ads/redexgen/X/gv;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 92106
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v4, 0x1

    if-nez v1, :cond_1d

    .line 92107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92109
    :cond_1d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92110
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_45

    .line 92111
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 92112
    .local v5, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 92113
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_3f

    .line 92114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92116
    :cond_3f
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92117
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 92118
    .end local v1    # "entry":Lcom/facebook/ads/redexgen/X/gv;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :cond_45
    monitor-exit v6

    .line 92119
    return-void

    .line 92120
    :catchall_47
    move-exception v0

    monitor-exit v6
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public final A07(Landroid/content/Intent;)Z
    .registers 24

    .line 92121
    move-object/from16 v8, p0

    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/gw;->A04:Ljava/util/HashMap;

    monitor-enter v7

    .line 92122
    :try_start_5
    move-object/from16 v9, p1

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 92123
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/gw;->A00:Landroid/content/Context;

    .line 92124
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92125
    invoke-virtual {v9, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 92126
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 92127
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 92128
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v20

    .line 92129
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2b

    const/4 v14, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v14, 0x0

    .line 92130
    .local v14, "debug":Z
    :goto_2c
    if-eqz v14, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x80

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/16 v1, 0x8

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92131
    :cond_6c
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/gw;->A03:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 92132
    .local v15, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v4, :cond_190

    .line 92133
    if-eqz v14, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x46

    const/16 v1, 0xd

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92134
    :cond_96
    const/4 v3, 0x0

    .line 92135
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v2, 0x0

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v7, "i":I
    .local v10, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_98
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_160

    .line 92136
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/gv;

    .line 92137
    .local v6, "receiver":Lcom/facebook/ads/redexgen/X/gv;
    if-eqz v14, :cond_c2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x68

    const/16 v10, 0x18

    const/16 v0, 0x30

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92138
    :cond_c2
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A00:Z

    if-eqz v0, :cond_c8

    goto/16 :goto_15c

    .line 92139
    :cond_c8
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/gv;->A03:Landroid/content/IntentFilter;

    const/16 v11, 0x53

    const/16 v10, 0x15

    const/16 v0, 0x7f

    invoke-static {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v21

    .end local v6    # "receiver":Lcom/facebook/ads/redexgen/X/gv;
    .local v13, "receiver":Lcom/facebook/ads/redexgen/X/gv;
    move-object/from16 v17, v6

    .end local v7    # "i":I
    .local v16, "i":I
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v17, "type":Ljava/lang/String;
    move-object/from16 v18, v5

    invoke-virtual/range {v15 .. v21}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 92140
    .local v4, "match":I
    if-ltz v13, :cond_10c

    .line 92141
    if-eqz v14, :cond_fe

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x18

    const/16 v10, 0x1b

    const/16 v0, 0x21

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 92142
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92143
    :cond_fe
    if-nez v3, :cond_105

    .line 92144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92145
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_105
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92146
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A00:Z

    goto :goto_15c

    .line 92147
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_10c
    if-eqz v14, :cond_15c

    .line 92148
    packed-switch v13, :pswitch_data_196

    .line 92149
    const/16 v10, 0xa5

    const/16 v1, 0xe

    const/4 v0, 0x6

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_143

    .line 92150
    :pswitch_11b
    const/16 v10, 0xa1

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_143

    .line 92151
    .end local v6
    :pswitch_125
    const/16 v10, 0x9d

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_143

    .line 92152
    .end local v6
    :pswitch_12f
    const/16 v10, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_143

    .line 92153
    .end local v6
    :pswitch_139
    const/16 v10, 0x95

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 92154
    :goto_143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/16 v10, 0x18

    const/16 v0, 0x1c

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92155
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v7
    .restart local v16    # "i":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_15c
    :goto_15c
    add-int/lit8 v2, v2, 0x1

    .end local v16    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_98

    .line 92156
    .end local v17    # "type":Ljava/lang/String;
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v7    # "i":I
    .end local v10
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v17    # "type":Ljava/lang/String;
    :cond_160
    if-eqz v3, :cond_190

    .line 92157
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_175

    .line 92158
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/gv;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/gv;->A00:Z

    .line 92159
    add-int/lit8 v2, v2, 0x1

    goto :goto_163

    .line 92160
    .end local v4    # "i":I
    :cond_175
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/gw;->A02:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gu;

    invoke-direct {v0, v9, v3}, Lcom/facebook/ads/redexgen/X/gu;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92161
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/gw;->A01:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 92162
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/gw;->A01:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92163
    :cond_18d
    monitor-exit v7

    const/4 v0, 0x1

    return v0

    .line 92164
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v14    # "debug":Z
    .end local v15    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_190
    monitor-exit v7

    .line 92165
    const/4 v0, 0x0

    return v0

    .line 92166
    :catchall_193
    move-exception v0

    monitor-exit v7
    :try_end_195
    .catchall {:try_start_5 .. :try_end_195} :catchall_193

    throw v0

    :pswitch_data_196
    .packed-switch -0x4
        :pswitch_139
        :pswitch_12f
        :pswitch_125
        :pswitch_11b
    .end packed-switch
.end method
